; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_write_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@RTSX_HAIMR = common dso_local global i32 0, align 4
@MAX_RW_REG_CNT = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_TIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_write_register(%struct.rtsx_chip* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 -1073741824, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 16383
  %14 = shl i32 %13, 16
  %15 = load i32, i32* %11, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %11, align 4
  %17 = load i64, i64* %8, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 8
  %20 = load i32, i32* %11, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %11, align 4
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* %11, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %11, align 4
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %27 = load i32, i32* @RTSX_HAIMR, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @rtsx_writel(%struct.rtsx_chip* %26, i32 %27, i32 %28)
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %52, %4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @MAX_RW_REG_CNT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %30
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %36 = load i32, i32* @RTSX_HAIMR, align 4
  %37 = call i32 @rtsx_readl(%struct.rtsx_chip* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @BIT(i32 31)
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %48, i32* %5, align 4
  br label %57

49:                                               ; preds = %42
  %50 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %50, i32* %5, align 4
  br label %57

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %30

55:                                               ; preds = %30
  %56 = load i32, i32* @STATUS_TIMEDOUT, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %49, %47
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @rtsx_writel(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_readl(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
