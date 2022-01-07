; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_eeprom_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_eeprom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MT7601U_EEPROM_SIZE = common dso_local global i32 0, align 4
@MT_EE_READ = common dso_local global i32 0, align 4
@MT_EE_VERSION_EE = common dso_local global i64 0, align 8
@MT7601U_EE_MAX_VER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Warning: unsupported EEPROM version %02hhx\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"EEPROM ver:%02hhx fae:%02hhx\0A\00", align 1
@MT_EE_VERSION_FAE = common dso_local global i64 0, align 8
@MT_EE_MAC_ADDR = common dso_local global i32 0, align 4
@MT_EE_REF_TEMP = common dso_local global i64 0, align 8
@MT_EE_LNA_GAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_eeprom_init(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  %7 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %8 = call i32 @mt7601u_efuse_physical_size_check(%struct.mt7601u_dev* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %135

13:                                               ; preds = %1
  %14 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.TYPE_2__* @devm_kzalloc(i32 %16, i32 16, i32 %17)
  %19 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %19, i32 0, i32 0
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %20, align 8
  %21 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %22 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %13
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %135

28:                                               ; preds = %13
  %29 = load i32, i32* @MT7601U_EEPROM_SIZE, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i64* @kmalloc(i32 %29, i32 %30)
  store i64* %31, i64** %4, align 8
  %32 = load i64*, i64** %4, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %135

37:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 16
  %41 = load i32, i32* @MT7601U_EEPROM_SIZE, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i64*, i64** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i32, i32* @MT_EE_READ, align 4
  %51 = call i32 @mt7601u_efuse_read(%struct.mt7601u_dev* %44, i32 %45, i64* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %131

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 16
  store i32 %58, i32* %5, align 4
  br label %38

59:                                               ; preds = %38
  %60 = load i64*, i64** %4, align 8
  %61 = load i64, i64* @MT_EE_VERSION_EE, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MT7601U_EE_MAX_VER, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %68 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i64*, i64** %4, align 8
  %71 = load i64, i64* @MT_EE_VERSION_EE, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @dev_warn(i32 %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %66, %59
  %76 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %77 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i64*, i64** %4, align 8
  %80 = load i64, i64* @MT_EE_VERSION_EE, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %4, align 8
  %84 = load i64, i64* @MT_EE_VERSION_FAE, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @dev_info(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %82, i64 %86)
  %88 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %89 = load i64*, i64** %4, align 8
  %90 = load i32, i32* @MT_EE_MAC_ADDR, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = call i32 @mt7601u_set_macaddr(%struct.mt7601u_dev* %88, i64* %92)
  %94 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %95 = load i64*, i64** %4, align 8
  %96 = call i32 @mt7601u_set_chip_cap(%struct.mt7601u_dev* %94, i64* %95)
  %97 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %98 = load i64*, i64** %4, align 8
  %99 = call i32 @mt7601u_set_channel_power(%struct.mt7601u_dev* %97, i64* %98)
  %100 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %101 = load i64*, i64** %4, align 8
  %102 = call i32 @mt7601u_set_country_reg(%struct.mt7601u_dev* %100, i64* %101)
  %103 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %104 = load i64*, i64** %4, align 8
  %105 = call i32 @mt7601u_set_rf_freq_off(%struct.mt7601u_dev* %103, i64* %104)
  %106 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %107 = load i64*, i64** %4, align 8
  %108 = call i32 @mt7601u_set_rssi_offset(%struct.mt7601u_dev* %106, i64* %107)
  %109 = load i64*, i64** %4, align 8
  %110 = load i64, i64* @MT_EE_REF_TEMP, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %114 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i64 %112, i64* %116, align 8
  %117 = load i64*, i64** %4, align 8
  %118 = load i64, i64* @MT_EE_LNA_GAIN, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %122 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i64 %120, i64* %124, align 8
  %125 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %126 = load i64*, i64** %4, align 8
  %127 = call i32 @mt7601u_config_tx_power_per_rate(%struct.mt7601u_dev* %125, i64* %126)
  %128 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %129 = load i64*, i64** %4, align 8
  %130 = call i32 @mt7601u_init_tssi_params(%struct.mt7601u_dev* %128, i64* %129)
  br label %131

131:                                              ; preds = %75, %54
  %132 = load i64*, i64** %4, align 8
  %133 = call i32 @kfree(i64* %132)
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %131, %34, %25, %11
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @mt7601u_efuse_physical_size_check(%struct.mt7601u_dev*) #1

declare dso_local %struct.TYPE_2__* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @mt7601u_efuse_read(%struct.mt7601u_dev*, i32, i64*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i64, i64) #1

declare dso_local i32 @mt7601u_set_macaddr(%struct.mt7601u_dev*, i64*) #1

declare dso_local i32 @mt7601u_set_chip_cap(%struct.mt7601u_dev*, i64*) #1

declare dso_local i32 @mt7601u_set_channel_power(%struct.mt7601u_dev*, i64*) #1

declare dso_local i32 @mt7601u_set_country_reg(%struct.mt7601u_dev*, i64*) #1

declare dso_local i32 @mt7601u_set_rf_freq_off(%struct.mt7601u_dev*, i64*) #1

declare dso_local i32 @mt7601u_set_rssi_offset(%struct.mt7601u_dev*, i64*) #1

declare dso_local i32 @mt7601u_config_tx_power_per_rate(%struct.mt7601u_dev*, i64*) #1

declare dso_local i32 @mt7601u_init_tssi_params(%struct.mt7601u_dev*, i64*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
