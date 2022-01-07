; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187b_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187b_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { {}* }

@RTL818X_CW_CONF_PERPACKET_RETRY = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@rtl8187b_reg_table = common dso_local global i32** null, align 8
@RTL818X_CMD_TX_ENABLE = common dso_local global i32 0, align 4
@RTL818X_CMD_RX_ENABLE = common dso_local global i32 0, align 4
@RTL818X_MSR_ENEDCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl8187b_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8187b_init_hw(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl8187_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %9, align 8
  store %struct.rtl8187_priv* %10, %struct.rtl8187_priv** %4, align 8
  %11 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %12 = call i32 @rtl8187_set_anaparam(%struct.rtl8187_priv* %11, i32 1)
  %13 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %14 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %13, i32* inttoptr (i64 65377 to i32*), i32 16)
  %15 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %16 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %15, i32* inttoptr (i64 65378 to i32*))
  store i32 %16, i32* %7, align 4
  %17 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, -33
  %20 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %17, i32* inttoptr (i64 65378 to i32*), i32 %19)
  %21 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, 32
  %24 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %21, i32* inttoptr (i64 65378 to i32*), i32 %23)
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %26 = call i32 @rtl8187_cmd_reset(%struct.ieee80211_hw* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %279

31:                                               ; preds = %1
  %32 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %33 = call i32 @rtl8187_set_anaparam(%struct.rtl8187_priv* %32, i32 1)
  %34 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %35 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %34, i32* inttoptr (i64 65332 to i32*), i32 4095)
  %36 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %37 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %38 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %36, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @RTL818X_CW_CONF_PERPACKET_RETRY, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %46 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %47 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %45, i32* %49, i32 %50)
  %52 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %53 = call i32 @rtl818x_iowrite16_idx(%struct.rtl8187_priv* %52, i32* inttoptr (i64 65504 to i32*), i32 4095, i32 1)
  %54 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %55 = call i32 @rtl818x_iowrite8_idx(%struct.rtl8187_priv* %54, i32* inttoptr (i64 65506 to i32*), i32 0, i32 1)
  %56 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %57 = call i32 @rtl818x_iowrite16_idx(%struct.rtl8187_priv* %56, i32* inttoptr (i64 65492 to i32*), i32 65535, i32 1)
  %58 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %59 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %60 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %64 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %58, i32* %62, i32 %63)
  %65 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %66 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %67 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %65, i32* %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %72 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %73 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 63
  %78 = or i32 %77, 128
  %79 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %71, i32* %75, i32 %78)
  %80 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %81 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %82 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %86 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %80, i32* %84, i32 %85)
  %87 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %88 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %89 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %87, i32* %91, i32 0)
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %125, %31
  %94 = load i32, i32* %6, align 4
  %95 = load i32**, i32*** @rtl8187b_reg_table, align 8
  %96 = call i32 @ARRAY_SIZE(i32** %95)
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %128

98:                                               ; preds = %93
  %99 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %100 = load i32**, i32*** @rtl8187b_reg_table, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, 65280
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i32*
  %110 = load i32**, i32*** @rtl8187b_reg_table, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32**, i32*** @rtl8187b_reg_table, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @rtl818x_iowrite8_idx(%struct.rtl8187_priv* %99, i32* %109, i32 %116, i32 %123)
  br label %125

125:                                              ; preds = %98
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %93

128:                                              ; preds = %93
  %129 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %130 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %131 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %130, i32 0, i32 2
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 14
  %134 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %129, i32* %133, i32 64080)
  %135 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %136 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %137 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %136, i32 0, i32 2
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 13
  %140 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %135, i32* %139, i32 0)
  %141 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %142 = call i32 @rtl818x_iowrite32_idx(%struct.rtl8187_priv* %141, i32* inttoptr (i64 65520 to i32*), i32 0, i32 1)
  %143 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %144 = call i32 @rtl818x_iowrite32_idx(%struct.rtl8187_priv* %143, i32* inttoptr (i64 65524 to i32*), i32 0, i32 1)
  %145 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %146 = call i32 @rtl818x_iowrite8_idx(%struct.rtl8187_priv* %145, i32* inttoptr (i64 65528 to i32*), i32 0, i32 1)
  %147 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %148 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %149 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %148, i32 0, i32 2
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 12
  %152 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %147, i32* %151, i32 16385)
  %153 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %154 = call i32 @rtl818x_iowrite16_idx(%struct.rtl8187_priv* %153, i32* inttoptr (i64 65394 to i32*), i32 22170, i32 2)
  %155 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %156 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %157 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %156, i32 0, i32 2
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 11
  %160 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %155, i32* %159, i32 1152)
  %161 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %162 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %163 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %162, i32 0, i32 2
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 10
  %166 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %161, i32* %165, i32 9352)
  %167 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %168 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %169 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %168, i32 0, i32 2
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 9
  %172 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %167, i32* %171, i32 8191)
  %173 = call i32 @msleep(i32 100)
  %174 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %175 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %174, i32 0, i32 3
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = bitcast {}** %177 to i32 (%struct.ieee80211_hw*)**
  %179 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %178, align 8
  %180 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %181 = call i32 %179(%struct.ieee80211_hw* %180)
  %182 = load i32, i32* @RTL818X_CMD_TX_ENABLE, align 4
  %183 = load i32, i32* @RTL818X_CMD_RX_ENABLE, align 4
  %184 = or i32 %182, %183
  store i32 %184, i32* %7, align 4
  %185 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %186 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %187 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %186, i32 0, i32 2
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 4
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %185, i32* %189, i32 %190)
  %192 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %193 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %194 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %193, i32 0, i32 2
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 8
  %197 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %192, i32* %196, i32 65535)
  %198 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %199 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %198, i32* inttoptr (i64 65089 to i32*), i32 244)
  %200 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %201 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %200, i32* inttoptr (i64 65088 to i32*), i32 0)
  %202 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %203 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %202, i32* inttoptr (i64 65090 to i32*), i32 0)
  %204 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %205 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %204, i32* inttoptr (i64 65090 to i32*), i32 1)
  %206 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %207 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %206, i32* inttoptr (i64 65088 to i32*), i32 15)
  %208 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %209 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %208, i32* inttoptr (i64 65090 to i32*), i32 0)
  %210 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %211 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %210, i32* inttoptr (i64 65090 to i32*), i32 1)
  %212 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %213 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %212, i32* inttoptr (i64 65499 to i32*))
  store i32 %213, i32* %7, align 4
  %214 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %215 = load i32, i32* %7, align 4
  %216 = or i32 %215, 4
  %217 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %214, i32* inttoptr (i64 65499 to i32*), i32 %216)
  %218 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %219 = call i32 @rtl818x_iowrite16_idx(%struct.rtl8187_priv* %218, i32* inttoptr (i64 65394 to i32*), i32 23034, i32 3)
  %220 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %221 = call i32 @rtl818x_iowrite16_idx(%struct.rtl8187_priv* %220, i32* inttoptr (i64 65396 to i32*), i32 22994, i32 3)
  %222 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %223 = call i32 @rtl818x_iowrite16_idx(%struct.rtl8187_priv* %222, i32* inttoptr (i64 65398 to i32*), i32 22994, i32 3)
  %224 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %225 = call i32 @rtl818x_iowrite16_idx(%struct.rtl8187_priv* %224, i32* inttoptr (i64 65400 to i32*), i32 6650, i32 3)
  %226 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %227 = call i32 @rtl818x_iowrite16_idx(%struct.rtl8187_priv* %226, i32* inttoptr (i64 65402 to i32*), i32 6650, i32 3)
  %228 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %229 = call i32 @rtl818x_iowrite16_idx(%struct.rtl8187_priv* %228, i32* inttoptr (i64 65404 to i32*), i32 208, i32 3)
  %230 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %231 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %230, i32* inttoptr (i64 65377 to i32*), i32 0)
  %232 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %233 = call i32 @rtl818x_iowrite8_idx(%struct.rtl8187_priv* %232, i32* inttoptr (i64 65408 to i32*), i32 15, i32 1)
  %234 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %235 = call i32 @rtl818x_iowrite8_idx(%struct.rtl8187_priv* %234, i32* inttoptr (i64 65411 to i32*), i32 3, i32 1)
  %236 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %237 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %236, i32* inttoptr (i64 65498 to i32*), i32 16)
  %238 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %239 = call i32 @rtl818x_iowrite8_idx(%struct.rtl8187_priv* %238, i32* inttoptr (i64 65357 to i32*), i32 8, i32 2)
  %240 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %241 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %242 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %241, i32 0, i32 2
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 7
  %245 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %240, i32* %244, i32 100676123)
  %246 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %247 = call i32 @rtl818x_iowrite16_idx(%struct.rtl8187_priv* %246, i32* inttoptr (i64 65516 to i32*), i32 2048, i32 1)
  %248 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %249 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %248, i32 0, i32 0
  store i32 9, i32* %249, align 8
  %250 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %251 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 0
  store i32 2, i32* %253, align 4
  %254 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %255 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  store i32 2, i32* %257, align 4
  %258 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %259 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 2
  store i32 7, i32* %261, align 4
  %262 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %263 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 3
  store i32 3, i32* %265, align 4
  %266 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %267 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %268 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %267, i32 0, i32 2
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 5
  %271 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %266, i32* %270, i32 0)
  %272 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %273 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %274 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %273, i32 0, i32 2
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 6
  %277 = load i32, i32* @RTL818X_MSR_ENEDCA, align 4
  %278 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %272, i32* %276, i32 %277)
  store i32 0, i32* %2, align 4
  br label %279

279:                                              ; preds = %128, %29
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local i32 @rtl8187_set_anaparam(%struct.rtl8187_priv*, i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8187_priv*, i32*) #1

declare dso_local i32 @rtl8187_cmd_reset(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_iowrite16_idx(%struct.rtl8187_priv*, i32*, i32, i32) #1

declare dso_local i32 @rtl818x_iowrite8_idx(%struct.rtl8187_priv*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @rtl818x_iowrite32_idx(%struct.rtl8187_priv*, i32*, i32, i32) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
