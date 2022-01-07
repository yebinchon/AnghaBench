; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_db8500-prcmu.c_disable_epod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_db8500-prcmu.c_disable_epod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@epod_on = common dso_local global i32* null, align 8
@EPOD_STATE_OFF = common dso_local global i32 0, align 4
@epod_ramret = common dso_local global i32* null, align 8
@EPOD_STATE_RAMRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @disable_epod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disable_epod(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load i32*, i32** @epod_on, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %9
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* @EPOD_STATE_OFF, align 4
  %18 = call i32 @prcmu_set_epod(i64 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %9
  %25 = load i32*, i32** @epod_ramret, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 0, i32* %27, align 4
  br label %56

28:                                               ; preds = %2
  %29 = load i32*, i32** @epod_ramret, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i64, i64* %4, align 8
  %36 = load i32, i32* @EPOD_STATE_RAMRET, align 4
  %37 = call i32 @prcmu_set_epod(i64 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %57

42:                                               ; preds = %34
  br label %52

43:                                               ; preds = %28
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* @EPOD_STATE_OFF, align 4
  %46 = call i32 @prcmu_set_epod(i64 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %42
  %53 = load i32*, i32** @epod_on, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %24
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %49, %40, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @prcmu_set_epod(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
