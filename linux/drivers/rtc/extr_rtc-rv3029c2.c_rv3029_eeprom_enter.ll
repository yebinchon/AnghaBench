; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3029c2.c_rv3029_eeprom_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3029c2.c_rv3029_eeprom_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@RV3029_STATUS_VLOW1 = common dso_local global i32 0, align 4
@RV3029_STATUS_VLOW2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Supply voltage is too low to safely access the EEPROM.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RV3029_ONOFF_CTRL = common dso_local global i32 0, align 4
@RV3029_ONOFF_CTRL_EERE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @rv3029_eeprom_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv3029_eeprom_enter(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i32 @rv3029_get_sr(%struct.device* %6, i32* %5)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %75

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @RV3029_STATUS_VLOW1, align 4
  %15 = load i32, i32* @RV3029_STATUS_VLOW2, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %12
  %20 = load i32, i32* @RV3029_STATUS_VLOW1, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @RV3029_STATUS_VLOW2, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @rv3029_set_sr(%struct.device* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %75

35:                                               ; preds = %19
  %36 = call i32 @usleep_range(i32 1000, i32 10000)
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = call i32 @rv3029_get_sr(%struct.device* %37, i32* %5)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %75

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @RV3029_STATUS_VLOW1, align 4
  %46 = load i32, i32* @RV3029_STATUS_VLOW2, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %75

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %12
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = load i32, i32* @RV3029_ONOFF_CTRL, align 4
  %59 = load i32, i32* @RV3029_ONOFF_CTRL_EERE, align 4
  %60 = call i32 @rv3029_update_bits(%struct.device* %57, i32 %58, i32 %59, i32 0)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %75

65:                                               ; preds = %56
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = call i32 @rv3029_eeprom_busywait(%struct.device* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.device*, %struct.device** %3, align 8
  %72 = call i32 @rv3029_eeprom_exit(%struct.device* %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %63, %50, %41, %33, %10
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @rv3029_get_sr(%struct.device*, i32*) #1

declare dso_local i32 @rv3029_set_sr(%struct.device*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @rv3029_update_bits(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @rv3029_eeprom_busywait(%struct.device*) #1

declare dso_local i32 @rv3029_eeprom_exit(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
