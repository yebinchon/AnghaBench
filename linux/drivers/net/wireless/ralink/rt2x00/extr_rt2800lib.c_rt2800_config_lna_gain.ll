; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_lna_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_lna_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i16 }
%struct.rt2x00lib_conf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EEPROM_LNA = common dso_local global i32 0, align 4
@EEPROM_LNA_BG = common dso_local global i32 0, align 4
@EEPROM_LNA_A0 = common dso_local global i32 0, align 4
@RT3593 = common dso_local global i32 0, align 4
@RT3883 = common dso_local global i32 0, align 4
@EEPROM_EXT_LNA2 = common dso_local global i32 0, align 4
@EEPROM_EXT_LNA2_A1 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG2 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG2_LNA_A1 = common dso_local global i32 0, align 4
@EEPROM_EXT_LNA2_A2 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A2 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A2_LNA_A2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*)* @rt2800_config_lna_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_lna_gain(%struct.rt2x00_dev* %0, %struct.rt2x00lib_conf* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.rt2x00lib_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.rt2x00lib_conf* %1, %struct.rt2x00lib_conf** %4, align 8
  %7 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %8 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %10, 14
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = load i32, i32* @EEPROM_LNA, align 4
  %15 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @EEPROM_LNA_BG, align 4
  %18 = call signext i16 @rt2x00_get_field16(i32 %16, i32 %17)
  store i16 %18, i16* %6, align 2
  br label %90

19:                                               ; preds = %2
  %20 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %21 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 64
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = load i32, i32* @EEPROM_LNA, align 4
  %28 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @EEPROM_LNA_A0, align 4
  %31 = call signext i16 @rt2x00_get_field16(i32 %29, i32 %30)
  store i16 %31, i16* %6, align 2
  br label %89

32:                                               ; preds = %19
  %33 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %34 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 128
  br i1 %37, label %38, label %63

38:                                               ; preds = %32
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %40 = load i32, i32* @RT3593, align 4
  %41 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %45 = load i32, i32* @RT3883, align 4
  %46 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43, %38
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %50 = load i32, i32* @EEPROM_EXT_LNA2, align 4
  %51 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @EEPROM_EXT_LNA2_A1, align 4
  %54 = call signext i16 @rt2x00_get_field16(i32 %52, i32 %53)
  store i16 %54, i16* %6, align 2
  br label %62

55:                                               ; preds = %43
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %57 = load i32, i32* @EEPROM_RSSI_BG2, align 4
  %58 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @EEPROM_RSSI_BG2_LNA_A1, align 4
  %61 = call signext i16 @rt2x00_get_field16(i32 %59, i32 %60)
  store i16 %61, i16* %6, align 2
  br label %62

62:                                               ; preds = %55, %48
  br label %88

63:                                               ; preds = %32
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %65 = load i32, i32* @RT3593, align 4
  %66 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %70 = load i32, i32* @RT3883, align 4
  %71 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68, %63
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %75 = load i32, i32* @EEPROM_EXT_LNA2, align 4
  %76 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @EEPROM_EXT_LNA2_A2, align 4
  %79 = call signext i16 @rt2x00_get_field16(i32 %77, i32 %78)
  store i16 %79, i16* %6, align 2
  br label %87

80:                                               ; preds = %68
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %82 = load i32, i32* @EEPROM_RSSI_A2, align 4
  %83 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %81, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @EEPROM_RSSI_A2_LNA_A2, align 4
  %86 = call signext i16 @rt2x00_get_field16(i32 %84, i32 %85)
  store i16 %86, i16* %6, align 2
  br label %87

87:                                               ; preds = %80, %73
  br label %88

88:                                               ; preds = %87, %62
  br label %89

89:                                               ; preds = %88, %25
  br label %90

90:                                               ; preds = %89, %12
  %91 = load i16, i16* %6, align 2
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %93 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %92, i32 0, i32 0
  store i16 %91, i16* %93, align 2
  ret void
}

declare dso_local i32 @rt2800_eeprom_read(%struct.rt2x00_dev*, i32) #1

declare dso_local signext i16 @rt2x00_get_field16(i32, i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
