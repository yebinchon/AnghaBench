; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_read_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@RTSX_HAIMR = common dso_local global i32 0, align 4
@MAX_RW_REG_CNT = common dso_local global i32 0, align 4
@STATUS_TIMEDOUT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_read_register(%struct.rtsx_chip* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 -2147483648, i32* %8, align 4
  %10 = load i64*, i64** %7, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i64*, i64** %7, align 8
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 16383
  %17 = shl i32 %16, 16
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %21 = load i32, i32* @RTSX_HAIMR, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @rtsx_writel(%struct.rtsx_chip* %20, i32 %21, i32 %22)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %38, %14
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MAX_RW_REG_CNT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %30 = load i32, i32* @RTSX_HAIMR, align 4
  %31 = call i32 @rtsx_readl(%struct.rtsx_chip* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @BIT(i32 31)
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %41

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %24

41:                                               ; preds = %36, %24
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @MAX_RW_REG_CNT, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @STATUS_TIMEDOUT, align 4
  store i32 %46, i32* %4, align 4
  br label %57

47:                                               ; preds = %41
  %48 = load i64*, i64** %7, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 255
  %53 = sext i32 %52 to i64
  %54 = load i64*, i64** %7, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %45
  %58 = load i32, i32* %4, align 4
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
