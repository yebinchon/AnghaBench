; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-palmas.c_palmas_clear_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-palmas.c_palmas_clear_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.palmas = type { i32 }

@PALMAS_RTC_BASE = common dso_local global i32 0, align 4
@PALMAS_RTC_STATUS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"RTC_STATUS read failed, err = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RTC_STATUS write failed, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @palmas_clear_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_clear_interrupts(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.palmas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.palmas* @dev_get_drvdata(i32 %9)
  store %struct.palmas* %10, %struct.palmas** %4, align 8
  %11 = load %struct.palmas*, %struct.palmas** %4, align 8
  %12 = load i32, i32* @PALMAS_RTC_BASE, align 4
  %13 = load i32, i32* @PALMAS_RTC_STATUS_REG, align 4
  %14 = call i32 @palmas_read(%struct.palmas* %11, i32 %12, i32 %13, i32* %5)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.palmas*, %struct.palmas** %4, align 8
  %24 = load i32, i32* @PALMAS_RTC_BASE, align 4
  %25 = load i32, i32* @PALMAS_RTC_STATUS_REG, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @palmas_write(%struct.palmas* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %30, %17
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.palmas* @dev_get_drvdata(i32) #1

declare dso_local i32 @palmas_read(%struct.palmas*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @palmas_write(%struct.palmas*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
