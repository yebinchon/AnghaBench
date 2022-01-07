; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_set_page_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_set_page_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MS_EXTRA_SIZE = common dso_local global i32 0, align 4
@setPS_NG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64*, i32)* @ms_set_page_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ms_set_page_status(i32 %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i64*, i64** %7, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %4
  br label %39

16:                                               ; preds = %11
  %17 = load i64*, i64** %7, align 8
  %18 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %19 = call i32 @memset(i64* %17, i32 255, i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @setPS_NG, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i64*, i64** %7, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 184, i64* %25, align 8
  br label %29

26:                                               ; preds = %16
  %27 = load i64*, i64** %7, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 152, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 8
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %7, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64*, i64** %7, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 3
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %29, %15
  ret void
}

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
