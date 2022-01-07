; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_core.c_nd_uuid_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_core.c_nd_uuid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_uuid_store(%struct.device* %0, i32** %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %44

19:                                               ; preds = %4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @nd_uuid_parse(%struct.device* %20, i32* %21, i8* %22, i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %44

29:                                               ; preds = %19
  %30 = load i32**, i32*** %7, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32* @kmemdup(i32* %33, i32 64, i32 %34)
  %36 = load i32**, i32*** %7, align 8
  store i32* %35, i32** %36, align 8
  %37 = load i32**, i32*** %7, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %44

43:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %40, %27, %16
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @nd_uuid_parse(%struct.device*, i32*, i8*, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
