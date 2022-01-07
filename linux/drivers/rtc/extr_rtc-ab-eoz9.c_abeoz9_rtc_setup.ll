; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab-eoz9.c_abeoz9_rtc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab-eoz9.c_abeoz9_rtc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.abeoz9_rtc_data = type { %struct.regmap* }
%struct.regmap = type { i32 }

@ABEOZ9_REG_CTRL1 = common dso_local global i32 0, align 4
@ABEOZ9_REG_CTRL1_MASK = common dso_local global i32 0, align 4
@ABEOZ9_REG_CTRL1_WE = common dso_local global i32 0, align 4
@ABEOZ9_REG_CTRL1_EERE = common dso_local global i32 0, align 4
@ABEOZ9_REG_CTRL1_SRON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unable to set CTRL_1 register (%d)\0A\00", align 1
@ABEOZ9_REG_CTRL_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"unable to set control CTRL_INT register (%d)\0A\00", align 1
@ABEOZ9_REG_CTRL_INT_FLAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"unable to set control CTRL_INT_FLAG register (%d)\0A\00", align 1
@ABEOZ9_REG_EEPROM_THE = common dso_local global i32 0, align 4
@ABEOZ9_REG_EEPROM = common dso_local global i32 0, align 4
@ABEOZ9_REG_EEPROM_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"unable to set EEPROM register (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*)* @abeoz9_rtc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abeoz9_rtc_setup(%struct.device* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.abeoz9_rtc_data*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.abeoz9_rtc_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.abeoz9_rtc_data* %10, %struct.abeoz9_rtc_data** %6, align 8
  %11 = load %struct.abeoz9_rtc_data*, %struct.abeoz9_rtc_data** %6, align 8
  %12 = getelementptr inbounds %struct.abeoz9_rtc_data, %struct.abeoz9_rtc_data* %11, i32 0, i32 0
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %7, align 8
  %14 = load %struct.regmap*, %struct.regmap** %7, align 8
  %15 = load i32, i32* @ABEOZ9_REG_CTRL1, align 4
  %16 = load i32, i32* @ABEOZ9_REG_CTRL1_MASK, align 4
  %17 = load i32, i32* @ABEOZ9_REG_CTRL1_WE, align 4
  %18 = load i32, i32* @ABEOZ9_REG_CTRL1_EERE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ABEOZ9_REG_CTRL1_SRON, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @regmap_update_bits(%struct.regmap* %14, i32 %15, i32 %16, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %72

30:                                               ; preds = %2
  %31 = load %struct.regmap*, %struct.regmap** %7, align 8
  %32 = load i32, i32* @ABEOZ9_REG_CTRL_INT, align 4
  %33 = call i32 @regmap_write(%struct.regmap* %31, i32 %32, i32 0)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %72

41:                                               ; preds = %30
  %42 = load %struct.regmap*, %struct.regmap** %7, align 8
  %43 = load i32, i32* @ABEOZ9_REG_CTRL_INT_FLAG, align 4
  %44 = call i32 @regmap_write(%struct.regmap* %42, i32 %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %72

52:                                               ; preds = %41
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = call i32 @abeoz9_trickle_parse_dt(%struct.device_node* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @ABEOZ9_REG_EEPROM_THE, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load %struct.regmap*, %struct.regmap** %7, align 8
  %59 = load i32, i32* @ABEOZ9_REG_EEPROM, align 4
  %60 = load i32, i32* @ABEOZ9_REG_EEPROM_MASK, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @regmap_update_bits(%struct.regmap* %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %52
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %65, %47, %36, %25
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.abeoz9_rtc_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @abeoz9_trickle_parse_dt(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
