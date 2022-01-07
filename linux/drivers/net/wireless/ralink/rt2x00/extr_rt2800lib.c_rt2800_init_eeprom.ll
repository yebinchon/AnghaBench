; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i64, i64 }

@EEPROM_NIC_CONF0 = common dso_local global i32 0, align 4
@RT3290 = common dso_local global i32 0, align 4
@RT5390 = common dso_local global i32 0, align 4
@RT5392 = common dso_local global i32 0, align 4
@RT6352 = common dso_local global i32 0, align 4
@EEPROM_CHIP_ID = common dso_local global i32 0, align 4
@RT3352 = common dso_local global i32 0, align 4
@RT3883 = common dso_local global i32 0, align 4
@RT5350 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_RF_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid RF chipset 0x%04x detected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_TXPATH = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_RXPATH = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1 = common dso_local global i32 0, align 4
@RT3070 = common dso_local global i32 0, align 4
@RT3090 = common dso_local global i32 0, align 4
@RT3390 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_ANT_DIVERSITY = common dso_local global i32 0, align 4
@ANTENNA_A = common dso_local global i8* null, align 8
@ANTENNA_B = common dso_local global i8* null, align 8
@REV_RT5390R = common dso_local global i32 0, align 4
@REV_RT5370G = common dso_local global i32 0, align 4
@ANTENNA_HW_DIVERSITY = common dso_local global i8* null, align 8
@EEPROM_NIC_CONF1_EXTERNAL_LNA_5G = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_LNA_A = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_EXTERNAL_LNA_2G = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_LNA_BG = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_HW_RADIO = common dso_local global i32 0, align 4
@CAPABILITY_HW_BUTTON = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_BT_COEXIST = common dso_local global i32 0, align 4
@CAPABILITY_BT_COEXIST = common dso_local global i32 0, align 4
@EEPROM_FREQ = common dso_local global i32 0, align 4
@EEPROM_FREQ_OFFSET = common dso_local global i32 0, align 4
@EEPROM_EIRP_MAX_TX_POWER = common dso_local global i32 0, align 4
@EEPROM_EIRP_MAX_TX_POWER_2GHZ = common dso_local global i32 0, align 4
@EIRP_MAX_TX_POWER_LIMIT = common dso_local global i64 0, align 8
@CAPABILITY_POWER_LIMIT = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_EXTERNAL_TX0_PA_3352 = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_PA_TX0 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_EXTERNAL_TX1_PA_3352 = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_PA_TX1 = common dso_local global i32 0, align 4
@LED_TYPE_ASSOC = common dso_local global i32 0, align 4
@LED_TYPE_QUALITY = common dso_local global i32 0, align 4
@LED_TYPE_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800_init_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_init_eeprom(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %8 = load i32, i32* @EEPROM_NIC_CONF0, align 4
  %9 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = load i32, i32* @RT3290, align 4
  %12 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %1
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = load i32, i32* @RT5390, align 4
  %17 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %21 = load i32, i32* @RT5392, align 4
  %22 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @RT6352, align 4
  %27 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24, %19, %14, %1
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = load i32, i32* @EEPROM_CHIP_ID, align 4
  %32 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %59

33:                                               ; preds = %24
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %35 = load i32, i32* @RT3352, align 4
  %36 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 138, i32* %6, align 4
  br label %58

39:                                               ; preds = %33
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %41 = load i32, i32* @RT3883, align 4
  %42 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 137, i32* %6, align 4
  br label %57

45:                                               ; preds = %39
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %47 = load i32, i32* @RT5350, align 4
  %48 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 136, i32* %6, align 4
  br label %56

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @EEPROM_NIC_CONF0_RF_TYPE, align 4
  %54 = call i64 @rt2x00_get_field16(i32 %52, i32 %53)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %51, %50
  br label %57

57:                                               ; preds = %56, %44
  br label %58

58:                                               ; preds = %57, %38
  br label %59

59:                                               ; preds = %58, %29
  %60 = load i32, i32* %6, align 4
  switch i32 %60, label %62 [
    i32 148, label %61
    i32 147, label %61
    i32 150, label %61
    i32 149, label %61
    i32 146, label %61
    i32 151, label %61
    i32 145, label %61
    i32 144, label %61
    i32 143, label %61
    i32 142, label %61
    i32 141, label %61
    i32 140, label %61
    i32 139, label %61
    i32 138, label %61
    i32 137, label %61
    i32 136, label %61
    i32 135, label %61
    i32 134, label %61
    i32 133, label %61
    i32 132, label %61
    i32 131, label %61
    i32 130, label %61
    i32 129, label %61
    i32 128, label %61
  ]

61:                                               ; preds = %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59
  br label %68

62:                                               ; preds = %59
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @rt2x00_err(%struct.rt2x00_dev* %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %258

68:                                               ; preds = %61
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @rt2x00_set_rf(%struct.rt2x00_dev* %69, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @EEPROM_NIC_CONF0_TXPATH, align 4
  %74 = call i64 @rt2x00_get_field16(i32 %72, i32 %73)
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %76 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  store i64 %74, i64* %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @EEPROM_NIC_CONF0_RXPATH, align 4
  %80 = call i64 @rt2x00_get_field16(i32 %78, i32 %79)
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %82 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i64 %80, i64* %83, align 8
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %85 = load i32, i32* @EEPROM_NIC_CONF1, align 4
  %86 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %84, i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %88 = load i32, i32* @RT3070, align 4
  %89 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %68
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %93 = load i32, i32* @RT3090, align 4
  %94 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %91
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %98 = load i32, i32* @RT3352, align 4
  %99 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %103 = load i32, i32* @RT3390, align 4
  %104 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %101, %96, %91, %68
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @EEPROM_NIC_CONF1_ANT_DIVERSITY, align 4
  %109 = call i64 @rt2x00_get_field16(i32 %107, i32 %108)
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  switch i32 %111, label %130 [
    i32 0, label %112
    i32 1, label %112
    i32 2, label %112
    i32 3, label %121
  ]

112:                                              ; preds = %106, %106, %106
  %113 = load i8*, i8** @ANTENNA_A, align 8
  %114 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %115 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i8* %113, i8** %116, align 8
  %117 = load i8*, i8** @ANTENNA_A, align 8
  %118 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %119 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i8* %117, i8** %120, align 8
  br label %130

121:                                              ; preds = %106
  %122 = load i8*, i8** @ANTENNA_A, align 8
  %123 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %124 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i8* %122, i8** %125, align 8
  %126 = load i8*, i8** @ANTENNA_B, align 8
  %127 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %128 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store i8* %126, i8** %129, align 8
  br label %130

130:                                              ; preds = %106, %121, %112
  br label %140

131:                                              ; preds = %101
  %132 = load i8*, i8** @ANTENNA_A, align 8
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %134 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  store i8* %132, i8** %135, align 8
  %136 = load i8*, i8** @ANTENNA_A, align 8
  %137 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %138 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  store i8* %136, i8** %139, align 8
  br label %140

140:                                              ; preds = %131, %130
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %142 = load i32, i32* @RT5390, align 4
  %143 = load i32, i32* @REV_RT5390R, align 4
  %144 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %141, i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %148 = load i32, i32* @RT5390, align 4
  %149 = load i32, i32* @REV_RT5370G, align 4
  %150 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %147, i32 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %146, %140
  %153 = load i8*, i8** @ANTENNA_HW_DIVERSITY, align 8
  %154 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %155 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  store i8* %153, i8** %156, align 8
  %157 = load i8*, i8** @ANTENNA_HW_DIVERSITY, align 8
  %158 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %159 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  store i8* %157, i8** %160, align 8
  br label %161

161:                                              ; preds = %152, %146
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @EEPROM_NIC_CONF1_EXTERNAL_LNA_5G, align 4
  %164 = call i64 @rt2x00_get_field16(i32 %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_A, align 4
  %168 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %169 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %168, i32 0, i32 1
  %170 = call i32 @__set_bit(i32 %167, i32* %169)
  br label %171

171:                                              ; preds = %166, %161
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @EEPROM_NIC_CONF1_EXTERNAL_LNA_2G, align 4
  %174 = call i64 @rt2x00_get_field16(i32 %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_BG, align 4
  %178 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %179 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %178, i32 0, i32 1
  %180 = call i32 @__set_bit(i32 %177, i32* %179)
  br label %181

181:                                              ; preds = %176, %171
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @EEPROM_NIC_CONF1_HW_RADIO, align 4
  %184 = call i64 @rt2x00_get_field16(i32 %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load i32, i32* @CAPABILITY_HW_BUTTON, align 4
  %188 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %189 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %188, i32 0, i32 1
  %190 = call i32 @__set_bit(i32 %187, i32* %189)
  br label %191

191:                                              ; preds = %186, %181
  %192 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %193 = load i32, i32* @RT3352, align 4
  %194 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %192, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %191
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* @EEPROM_NIC_CONF1_BT_COEXIST, align 4
  %199 = call i64 @rt2x00_get_field16(i32 %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load i32, i32* @CAPABILITY_BT_COEXIST, align 4
  %203 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %204 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %203, i32 0, i32 1
  %205 = call i32 @__set_bit(i32 %202, i32* %204)
  br label %206

206:                                              ; preds = %201, %196, %191
  %207 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %208 = load i32, i32* @EEPROM_FREQ, align 4
  %209 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %207, i32 %208)
  store i32 %209, i32* %5, align 4
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* @EEPROM_FREQ_OFFSET, align 4
  %212 = call i64 @rt2x00_get_field16(i32 %210, i32 %211)
  %213 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %214 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %213, i32 0, i32 5
  store i64 %212, i64* %214, align 8
  %215 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %216 = load i32, i32* @EEPROM_EIRP_MAX_TX_POWER, align 4
  %217 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %215, i32 %216)
  store i32 %217, i32* %5, align 4
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* @EEPROM_EIRP_MAX_TX_POWER_2GHZ, align 4
  %220 = call i64 @rt2x00_get_field16(i32 %218, i32 %219)
  %221 = load i64, i64* @EIRP_MAX_TX_POWER_LIMIT, align 8
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %206
  %224 = load i32, i32* @CAPABILITY_POWER_LIMIT, align 4
  %225 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %226 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %225, i32 0, i32 1
  %227 = call i32 @__set_bit(i32 %224, i32* %226)
  br label %228

228:                                              ; preds = %223, %206
  %229 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %230 = load i32, i32* @EEPROM_NIC_CONF1, align 4
  %231 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %229, i32 %230)
  store i32 %231, i32* %5, align 4
  %232 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %233 = load i32, i32* @RT3352, align 4
  %234 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %232, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %257

236:                                              ; preds = %228
  %237 = load i32, i32* %5, align 4
  %238 = load i32, i32* @EEPROM_NIC_CONF1_EXTERNAL_TX0_PA_3352, align 4
  %239 = call i64 @rt2x00_get_field16(i32 %237, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = load i32, i32* @CAPABILITY_EXTERNAL_PA_TX0, align 4
  %243 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %244 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %243, i32 0, i32 1
  %245 = call i32 @__set_bit(i32 %242, i32* %244)
  br label %246

246:                                              ; preds = %241, %236
  %247 = load i32, i32* %5, align 4
  %248 = load i32, i32* @EEPROM_NIC_CONF1_EXTERNAL_TX1_PA_3352, align 4
  %249 = call i64 @rt2x00_get_field16(i32 %247, i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = load i32, i32* @CAPABILITY_EXTERNAL_PA_TX1, align 4
  %253 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %254 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %253, i32 0, i32 1
  %255 = call i32 @__set_bit(i32 %252, i32* %254)
  br label %256

256:                                              ; preds = %251, %246
  br label %257

257:                                              ; preds = %256, %228
  store i32 0, i32* %2, align 4
  br label %258

258:                                              ; preds = %257, %62
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i32 @rt2800_eeprom_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*, i32) #1

declare dso_local i32 @rt2x00_set_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
