; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_sba_iommu.c_sba_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_sba_iommu.c_sba_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i32*, i32, i64)* @sba_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sba_alloc(%struct.device* %0, i64 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = icmp ne %struct.device* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  %16 = load i32*, i32** %9, align 8
  store i32 0, i32* %16, align 4
  store i8* null, i8** %6, align 8
  br label %36

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @get_order(i64 %19)
  %21 = call i64 @__get_free_pages(i32 %18, i32 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load i8*, i8** %12, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @memset(i8* %26, i32 0, i64 %27)
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @sba_map_single(%struct.device* %29, i8* %30, i64 %31, i32 0)
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %25, %17
  %35 = load i8*, i8** %12, align 8
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %34, %15
  %37 = load i8*, i8** %6, align 8
  ret i8* %37
}

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @sba_map_single(%struct.device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
