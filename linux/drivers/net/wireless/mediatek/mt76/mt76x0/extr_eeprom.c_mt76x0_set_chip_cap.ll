; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_eeprom.c_mt76x0_set_chip_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_eeprom.c_mt76x0_set_chip_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@MT_EE_NIC_CONF_0 = common dso_local global i32 0, align 4
@MT_EE_NIC_CONF_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"2GHz %d 5GHz %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"mask out 2GHz support\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"mask out 5GHz support\0A\00", align 1
@MT_EE_NIC_CONF_1_HW_RF_CTRL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"driver does not support HW RF ctrl\0A\00", align 1
@MT_EE_NIC_CONF_0_RX_PATH = common dso_local global i32 0, align 4
@MT_EE_NIC_CONF_0_TX_PATH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid tx-rx stream\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x0_set_chip_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0_set_chip_cap(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %5 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %6 = load i32, i32* @MT_EE_NIC_CONF_0, align 4
  %7 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %9 = load i32, i32* @MT_EE_NIC_CONF_1, align 4
  %10 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %12 = call i32 @mt76x02_eeprom_parse_hw_cap(%struct.mt76x02_dev* %11)
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %14 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %23 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @dev_dbg(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %26)
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %29 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %1
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %34 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %38 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @dev_dbg(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %32, %1
  %43 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %44 = call i64 @is_mt7630(%struct.mt76x02_dev* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %48 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %52 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, ...) @dev_dbg(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %46, %42
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 255
  %59 = call i32 @mt76x02_field_valid(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, 65280
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @MT_EE_NIC_CONF_1_HW_RF_CTRL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %71 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %69, %64
  %76 = load i32, i32* %3, align 4
  %77 = ashr i32 %76, 8
  %78 = call i32 @mt76x02_field_valid(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %97

81:                                               ; preds = %75
  %82 = load i32, i32* @MT_EE_NIC_CONF_0_RX_PATH, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @FIELD_GET(i32 %82, i32 %83)
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @MT_EE_NIC_CONF_0_TX_PATH, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @FIELD_GET(i32 %87, i32 %88)
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %97

91:                                               ; preds = %86, %81
  %92 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %93 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %80, %91, %86
  ret void
}

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_eeprom_parse_hw_cap(%struct.mt76x02_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @is_mt7630(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_field_valid(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
