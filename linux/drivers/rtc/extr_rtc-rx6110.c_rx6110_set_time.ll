; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx6110.c_rx6110_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx6110.c_rx6110_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.rx6110_data = type { i32 }

@RTC_NR_TIME = common dso_local global i32 0, align 4
@RX6110_REG_CTRL = common dso_local global i32 0, align 4
@RX6110_BIT_CTRL_STOP = common dso_local global i32 0, align 4
@RX6110_REG_SEC = common dso_local global i32 0, align 4
@RX6110_REG_FLAG = common dso_local global i32 0, align 4
@RX6110_BIT_FLAG_VLF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rx6110_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx6110_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.rx6110_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.rx6110_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.rx6110_data* %12, %struct.rx6110_data** %6, align 8
  %13 = load i32, i32* @RTC_NR_TIME, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %18 = call i32 @rx6110_rtc_tm_to_data(%struct.rtc_time* %17, i32* %16)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %65

23:                                               ; preds = %2
  %24 = load %struct.rx6110_data*, %struct.rx6110_data** %6, align 8
  %25 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RX6110_REG_CTRL, align 4
  %28 = load i32, i32* @RX6110_BIT_CTRL_STOP, align 4
  %29 = load i32, i32* @RX6110_BIT_CTRL_STOP, align 4
  %30 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %65

35:                                               ; preds = %23
  %36 = load %struct.rx6110_data*, %struct.rx6110_data** %6, align 8
  %37 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RX6110_REG_SEC, align 4
  %40 = load i32, i32* @RTC_NR_TIME, align 4
  %41 = call i32 @regmap_bulk_write(i32 %38, i32 %39, i32* %16, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %65

46:                                               ; preds = %35
  %47 = load %struct.rx6110_data*, %struct.rx6110_data** %6, align 8
  %48 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RX6110_REG_FLAG, align 4
  %51 = load i32, i32* @RX6110_BIT_FLAG_VLF, align 4
  %52 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %51, i32 0)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %65

57:                                               ; preds = %46
  %58 = load %struct.rx6110_data*, %struct.rx6110_data** %6, align 8
  %59 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RX6110_REG_CTRL, align 4
  %62 = load i32, i32* @RX6110_BIT_CTRL_STOP, align 4
  %63 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %62, i32 0)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %65

65:                                               ; preds = %57, %55, %44, %33, %21
  %66 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.rx6110_data* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rx6110_rtc_tm_to_data(%struct.rtc_time*, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
