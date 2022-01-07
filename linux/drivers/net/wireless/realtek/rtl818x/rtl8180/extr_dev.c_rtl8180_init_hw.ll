; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i64, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__*, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { {}* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@RTL818X_CMD_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"reset timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_LOAD = common dso_local global i32 0, align 4
@RTL818X_CHIP_FAMILY_RTL8187SE = common dso_local global i64 0, align 8
@RTL818X_MSR_ENEDCA = common dso_local global i32 0, align 4
@RTL818X_CHIP_FAMILY_RTL8180 = common dso_local global i64 0, align 8
@RTL818X_EEPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@RTL818X_CHIP_FAMILY_RTL8185 = common dso_local global i64 0, align 8
@RTL818X_EEPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@ARFR = common dso_local global i32* null, align 8
@RTL818x_TPPOLL_STOP_MG = common dso_local global i32 0, align 4
@RTL818x_TPPOLL_STOP_HI = common dso_local global i32 0, align 4
@RFSW_CTRL = common dso_local global i32* null, align 8
@RTL8225SE_ANAPARAM_ON = common dso_local global i32 0, align 4
@RTL8225SE_ANAPARAM2_ON = common dso_local global i32 0, align 4
@RTL8225SE_ANAPARAM3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl8180_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8180_init_hw(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl8180_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 1
  %10 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  store %struct.rtl8180_priv* %10, %struct.rtl8180_priv** %4, align 8
  %11 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %12 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %13 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %12, i32 0, i32 5
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 30
  %16 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %11, i32* %15, i32 0)
  %17 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %18 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %19 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %18, i32 0, i32 5
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 30
  %22 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %17, i32* %21)
  %23 = call i32 @msleep(i32 10)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = call i32 @rtl8180_int_disable(%struct.ieee80211_hw* %24)
  %26 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %27 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %28 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %27, i32 0, i32 5
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 30
  %31 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %26, i32* %30)
  %32 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %33 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %34 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %33, i32 0, i32 5
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 30
  %37 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %32, i32* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 2
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @RTL818X_CMD_RESET, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %44 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %45 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %44, i32 0, i32 5
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 30
  %48 = load i32, i32* @RTL818X_CMD_RESET, align 4
  %49 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %43, i32* %47, i32 %48)
  %50 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %51 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %52 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %51, i32 0, i32 5
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 30
  %55 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %50, i32* %54)
  %56 = call i32 @msleep(i32 200)
  %57 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %58 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %59 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %58, i32 0, i32 5
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 30
  %62 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %57, i32* %61)
  %63 = load i32, i32* @RTL818X_CMD_RESET, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %1
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @wiphy_err(i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @ETIMEDOUT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %576

73:                                               ; preds = %1
  %74 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %75 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %76 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %75, i32 0, i32 5
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 12
  %79 = load i32, i32* @RTL818X_EEPROM_CMD_LOAD, align 4
  %80 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %74, i32* %78, i32 %79)
  %81 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %82 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %83 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %82, i32 0, i32 5
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 30
  %86 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %81, i32* %85)
  %87 = call i32 @msleep(i32 200)
  %88 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %89 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %90 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %89, i32 0, i32 5
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 13
  %93 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %88, i32* %92)
  %94 = and i32 %93, 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %73
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %98 = call i32 @rtl8180_config_cardbus(%struct.ieee80211_hw* %97)
  br label %99

99:                                               ; preds = %96, %73
  %100 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %101 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8187SE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %107 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %108 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %107, i32 0, i32 5
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 29
  %111 = load i32, i32* @RTL818X_MSR_ENEDCA, align 4
  %112 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %106, i32* %110, i32 %111)
  br label %120

113:                                              ; preds = %99
  %114 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %115 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %116 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %115, i32 0, i32 5
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 29
  %119 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %114, i32* %118, i32 0)
  br label %120

120:                                              ; preds = %113, %105
  %121 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %122 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8180, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %128 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %129 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @rtl8180_set_anaparam(%struct.rtl8180_priv* %127, i32 %130)
  br label %132

132:                                              ; preds = %126, %120
  %133 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %134 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %135 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %134, i32 0, i32 5
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 28
  %138 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %139 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %133, i32* %137, i32 %140)
  %142 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %143 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8187SE, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %172

147:                                              ; preds = %132
  %148 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %149 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %150 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %149, i32 0, i32 5
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 26
  %153 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %154 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %153, i32 0, i32 7
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %148, i32* %152, i32 %158)
  %160 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %161 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %162 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %161, i32 0, i32 5
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 27
  %165 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %166 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %165, i32 0, i32 7
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %160, i32* %164, i32 %170)
  br label %233

172:                                              ; preds = %132
  %173 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %174 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %175 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %174, i32 0, i32 5
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 26
  %178 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %179 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %178, i32 0, i32 7
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 4
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %173, i32* %177, i32 %183)
  %185 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %186 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %187 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %186, i32 0, i32 5
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 25
  %190 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %191 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %190, i32 0, i32 7
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i64 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %185, i32* %189, i32 %195)
  %197 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %198 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %199 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %198, i32 0, i32 5
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 24
  %202 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %203 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %202, i32 0, i32 7
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i64 1
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %197, i32* %201, i32 %207)
  %209 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %210 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %211 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %210, i32 0, i32 5
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 23
  %214 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %215 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %214, i32 0, i32 7
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 2
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %209, i32* %213, i32 %219)
  %221 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %222 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %223 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %222, i32 0, i32 5
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 22
  %226 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %227 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %226, i32 0, i32 7
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 3
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %221, i32* %225, i32 %231)
  br label %233

233:                                              ; preds = %172, %147
  %234 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %235 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %236 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %235, i32 0, i32 5
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 12
  %239 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %240 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %234, i32* %238, i32 %239)
  %241 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %242 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %243 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %242, i32 0, i32 5
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 21
  %246 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %241, i32* %245)
  store i32 %246, i32* %5, align 4
  %247 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %248 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %249 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %248, i32 0, i32 5
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 21
  %252 = load i32, i32* %5, align 4
  %253 = and i32 %252, -9
  %254 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %247, i32* %251, i32 %253)
  %255 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %256 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8185, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %275

260:                                              ; preds = %233
  %261 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %262 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %263 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %262, i32 0, i32 5
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 21
  %266 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %261, i32* %265)
  store i32 %266, i32* %5, align 4
  %267 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %268 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %269 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %268, i32 0, i32 5
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 21
  %272 = load i32, i32* %5, align 4
  %273 = or i32 %272, 16
  %274 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %267, i32* %271, i32 %273)
  br label %275

275:                                              ; preds = %260, %233
  %276 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %277 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %278 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %277, i32 0, i32 5
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 12
  %281 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %282 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %276, i32* %280, i32 %281)
  %283 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %284 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %285 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %284, i32 0, i32 5
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 20
  %288 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %283, i32* %287, i32 0)
  %289 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %290 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8180, align 8
  %293 = icmp ne i64 %291, %292
  br i1 %293, label %294, label %307

294:                                              ; preds = %275
  %295 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %296 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %297 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %296, i32 0, i32 5
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 19
  %300 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %295, i32* %299, i32 0)
  %301 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %302 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %303 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %302, i32 0, i32 5
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 18
  %306 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %301, i32* %305, i32 0)
  br label %326

307:                                              ; preds = %275
  %308 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %309 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %310 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %309, i32 0, i32 5
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 17
  %313 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %308, i32* %312, i32 0)
  %314 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %315 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %316 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %315, i32 0, i32 5
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 16
  %319 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %314, i32* %318, i32 6)
  %320 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %321 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %322 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %321, i32 0, i32 5
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 15
  %325 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %320, i32* %324, i32 76)
  br label %326

326:                                              ; preds = %307, %294
  %327 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %328 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8185, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %409

332:                                              ; preds = %326
  %333 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %334 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %335 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %334, i32 0, i32 5
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 14
  %338 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %333, i32* %337)
  store i32 %338, i32* %5, align 4
  %339 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %340 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %341 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %340, i32 0, i32 5
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 14
  %344 = load i32, i32* %5, align 4
  %345 = and i32 %344, -65
  %346 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %339, i32* %343, i32 %345)
  %347 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %348 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %349 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %348, i32 0, i32 5
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 12
  %352 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %353 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %347, i32* %351, i32 %352)
  %354 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %355 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %356 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %355, i32 0, i32 5
  %357 = load %struct.TYPE_6__*, %struct.TYPE_6__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 13
  %359 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %354, i32* %358)
  store i32 %359, i32* %5, align 4
  %360 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %361 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %362 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %361, i32 0, i32 5
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 13
  %365 = load i32, i32* %5, align 4
  %366 = or i32 %365, 4
  %367 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %360, i32* %364, i32 %366)
  %368 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %369 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %370 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %369, i32 0, i32 5
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 12
  %373 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %374 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %368, i32* %372, i32 %373)
  %375 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %376 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %375, i32 0, i32 6
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %404

379:                                              ; preds = %332
  %380 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %381 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %382 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %381, i32 0, i32 5
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 6
  %385 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %380, i32* %384)
  store i32 %385, i32* %7, align 4
  %386 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %387 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %388 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %387, i32 0, i32 5
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 6
  %391 = load i32, i32* %7, align 4
  %392 = or i32 %391, 1
  %393 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %386, i32* %390, i32 %392)
  %394 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %395 = call i32* @REG_ADDR1(i32 255)
  %396 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %394, i32* %395, i32 53)
  %397 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %398 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %399 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %398, i32 0, i32 5
  %400 = load %struct.TYPE_6__*, %struct.TYPE_6__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 6
  %402 = load i32, i32* %7, align 4
  %403 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %397, i32* %401, i32 %402)
  br label %408

404:                                              ; preds = %332
  %405 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %406 = call i32* @REG_ADDR1(i32 511)
  %407 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %405, i32* %406, i32 53)
  br label %408

408:                                              ; preds = %404, %379
  br label %409

409:                                              ; preds = %408, %326
  %410 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %411 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8187SE, align 8
  %414 = icmp eq i64 %412, %413
  br i1 %414, label %415, label %533

415:                                              ; preds = %409
  %416 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %417 = load i32*, i32** @ARFR, align 8
  %418 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %416, i32* %417, i32 4095)
  %419 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %420 = load i32*, i32** @ARFR, align 8
  %421 = call i32 @rtl818x_ioread16(%struct.rtl8180_priv* %419, i32* %420)
  %422 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %423 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %424 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %423, i32 0, i32 5
  %425 = load %struct.TYPE_6__*, %struct.TYPE_6__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %425, i32 0, i32 11
  %427 = load i32, i32* @RTL818x_TPPOLL_STOP_MG, align 4
  %428 = load i32, i32* @RTL818x_TPPOLL_STOP_HI, align 4
  %429 = or i32 %427, %428
  %430 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %422, i32* %426, i32 %429)
  %431 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %432 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %433 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %432, i32 0, i32 5
  %434 = load %struct.TYPE_6__*, %struct.TYPE_6__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 10
  %436 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %431, i32* %435, i32 0)
  %437 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %438 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %439 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %438, i32 0, i32 5
  %440 = load %struct.TYPE_6__*, %struct.TYPE_6__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %440, i32 0, i32 9
  %442 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %437, i32* %441, i32 64080)
  %443 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %444 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %445 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %444, i32 0, i32 5
  %446 = load %struct.TYPE_6__*, %struct.TYPE_6__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %446, i32 0, i32 8
  %448 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %443, i32* %447, i32 0)
  %449 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %450 = call i32 @rtl8187se_mac_config(%struct.ieee80211_hw* %449)
  %451 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %452 = load i32*, i32** @RFSW_CTRL, align 8
  %453 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %451, i32* %452, i32 22170)
  %454 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %455 = load i32*, i32** @RFSW_CTRL, align 8
  %456 = call i32 @rtl818x_ioread16(%struct.rtl8180_priv* %454, i32* %455)
  %457 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %458 = load i32, i32* @RTL8225SE_ANAPARAM_ON, align 4
  %459 = call i32 @rtl8180_set_anaparam(%struct.rtl8180_priv* %457, i32 %458)
  %460 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %461 = load i32, i32* @RTL8225SE_ANAPARAM2_ON, align 4
  %462 = call i32 @rtl8180_set_anaparam2(%struct.rtl8180_priv* %460, i32 %461)
  %463 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %464 = load i32, i32* @RTL8225SE_ANAPARAM3, align 4
  %465 = call i32 @rtl8180_set_anaparam3(%struct.rtl8180_priv* %463, i32 %464)
  %466 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %467 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %468 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %467, i32 0, i32 5
  %469 = load %struct.TYPE_6__*, %struct.TYPE_6__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %469, i32 0, i32 7
  %471 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %472 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %473 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %472, i32 0, i32 5
  %474 = load %struct.TYPE_6__*, %struct.TYPE_6__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %474, i32 0, i32 7
  %476 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %471, i32* %475)
  %477 = and i32 %476, 127
  %478 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %466, i32* %470, i32 %477)
  %479 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %480 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %481 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %480, i32 0, i32 5
  %482 = load %struct.TYPE_6__*, %struct.TYPE_6__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %482, i32 0, i32 6
  %484 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %485 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %486 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %485, i32 0, i32 5
  %487 = load %struct.TYPE_6__*, %struct.TYPE_6__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %487, i32 0, i32 6
  %489 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %484, i32* %488)
  %490 = or i32 %489, 8
  %491 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %479, i32* %483, i32 %490)
  %492 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %493 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %494 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %493, i32 0, i32 5
  %495 = load %struct.TYPE_6__*, %struct.TYPE_6__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %495, i32 0, i32 5
  %497 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %492, i32* %496, i32 1152)
  %498 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %499 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %500 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %499, i32 0, i32 5
  %501 = load %struct.TYPE_6__*, %struct.TYPE_6__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %501, i32 0, i32 4
  %503 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %498, i32* %502, i32 7167)
  %504 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %505 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %506 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %505, i32 0, i32 5
  %507 = load %struct.TYPE_6__*, %struct.TYPE_6__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %507, i32 0, i32 3
  %509 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %504, i32* %508, i32 9352)
  %510 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %511 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %512 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %511, i32 0, i32 5
  %513 = load %struct.TYPE_6__*, %struct.TYPE_6__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %513, i32 0, i32 2
  %515 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %510, i32* %514, i32 16387)
  %516 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %517 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %518 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %517, i32 0, i32 5
  %519 = load %struct.TYPE_6__*, %struct.TYPE_6__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %519, i32 0, i32 1
  %521 = call i32 @rtl818x_ioread32(%struct.rtl8180_priv* %516, i32* %520)
  store i32 %521, i32* %6, align 4
  %522 = load i32, i32* %6, align 4
  %523 = and i32 %522, 16776960
  store i32 %523, i32* %6, align 4
  %524 = load i32, i32* %6, align 4
  %525 = or i32 %524, -1207959468
  store i32 %525, i32* %6, align 4
  %526 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %527 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %528 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %527, i32 0, i32 5
  %529 = load %struct.TYPE_6__*, %struct.TYPE_6__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %529, i32 0, i32 1
  %531 = load i32, i32* %6, align 4
  %532 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %526, i32* %530, i32 %531)
  br label %540

533:                                              ; preds = %409
  %534 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %535 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %536 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %535, i32 0, i32 5
  %537 = load %struct.TYPE_6__*, %struct.TYPE_6__** %536, align 8
  %538 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %537, i32 0, i32 0
  %539 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %534, i32* %538, i32 6)
  br label %540

540:                                              ; preds = %533, %415
  %541 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %542 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %541, i32 0, i32 4
  %543 = load %struct.TYPE_5__*, %struct.TYPE_5__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %543, i32 0, i32 0
  %545 = bitcast {}** %544 to i32 (%struct.ieee80211_hw*)**
  %546 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %545, align 8
  %547 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %548 = call i32 %546(%struct.ieee80211_hw* %547)
  %549 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %550 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %549, i32 0, i32 0
  %551 = load i64, i64* %550, align 8
  %552 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8180, align 8
  %553 = icmp eq i64 %551, %552
  br i1 %553, label %554, label %557

554:                                              ; preds = %540
  %555 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %556 = call i32 @rtl8180_conf_basic_rates(%struct.ieee80211_hw* %555, i32 3)
  br label %560

557:                                              ; preds = %540
  %558 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %559 = call i32 @rtl8180_conf_basic_rates(%struct.ieee80211_hw* %558, i32 499)
  br label %560

560:                                              ; preds = %557, %554
  %561 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %562 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %561, i32 0, i32 0
  %563 = load i64, i64* %562, align 8
  %564 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8187SE, align 8
  %565 = icmp eq i64 %563, %564
  br i1 %565, label %566, label %575

566:                                              ; preds = %560
  %567 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %568 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %569 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %568, i32 0, i32 3
  %570 = load i32, i32* %569, align 8
  %571 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %572 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %571, i32 0, i32 2
  %573 = load i32, i32* %572, align 4
  %574 = call i32 @rtl8187se_set_antenna_config(%struct.ieee80211_hw* %567, i32 %570, i32 %573)
  br label %575

575:                                              ; preds = %566, %560
  store i32 0, i32* %2, align 4
  br label %576

576:                                              ; preds = %575, %66
  %577 = load i32, i32* %2, align 4
  ret i32 %577
}

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl8180_int_disable(%struct.ieee80211_hw*) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32 @rtl8180_config_cardbus(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8180_set_anaparam(%struct.rtl8180_priv*, i32) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32* @REG_ADDR1(i32) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread16(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @rtl8187se_mac_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8180_set_anaparam2(%struct.rtl8180_priv*, i32) #1

declare dso_local i32 @rtl8180_set_anaparam3(%struct.rtl8180_priv*, i32) #1

declare dso_local i32 @rtl818x_ioread32(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @rtl8180_conf_basic_rates(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8187se_set_antenna_config(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
