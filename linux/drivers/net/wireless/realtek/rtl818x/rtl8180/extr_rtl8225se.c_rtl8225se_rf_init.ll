; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225se.c_rtl8225se_rf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225se.c_rtl8225se_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"RTL8225-SE version %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"not-D\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Xtal cal\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"NO Xtal cal\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8225se_rf_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 1
  %10 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  store %struct.rtl8180_priv* %10, %struct.rtl8180_priv** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %11, i32 0, i32 319)
  %13 = call i32 @mdelay(i32 1)
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call i32 @rtl8187se_rf_readreg(%struct.ieee80211_hw* %14, i32 8)
  store i32 %15, i32* %4, align 4
  %16 = call i32 @mdelay(i32 1)
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call i32 @rtl8187se_rf_readreg(%struct.ieee80211_hw* %17, i32 9)
  store i32 %18, i32* %5, align 4
  %19 = call i32 @mdelay(i32 1)
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 2072
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 1804
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %22, %1
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 (i32, i8*, ...) @wiphy_info(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %36 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %35, i32 0, i32 159)
  %37 = call i32 @mdelay(i32 1)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %39 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %38, i32 1, i32 1760)
  %40 = call i32 @mdelay(i32 1)
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %42 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %41, i32 2, i32 77)
  %43 = call i32 @mdelay(i32 1)
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %45 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %44, i32 3, i32 2033)
  %46 = call i32 @mdelay(i32 1)
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %48 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %47, i32 4, i32 2421)
  %49 = call i32 @mdelay(i32 1)
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %51 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %50, i32 5, i32 3186)
  %52 = call i32 @mdelay(i32 1)
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %54 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %53, i32 6, i32 2790)
  %55 = call i32 @mdelay(i32 1)
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %57 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %56, i32 7, i32 202)
  %58 = call i32 @mdelay(i32 1)
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %60 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %59, i32 8, i32 3612)
  %61 = call i32 @mdelay(i32 1)
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %63 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %62, i32 9, i32 752)
  %64 = call i32 @mdelay(i32 1)
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %66 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %65, i32 10, i32 2512)
  %67 = call i32 @mdelay(i32 1)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %69 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %68, i32 11, i32 442)
  %70 = call i32 @mdelay(i32 1)
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %72 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %71, i32 12, i32 1600)
  %73 = call i32 @mdelay(i32 1)
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %75 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %74, i32 13, i32 2271)
  %76 = call i32 @mdelay(i32 1)
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %78 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %77, i32 14, i32 32)
  %79 = call i32 @mdelay(i32 1)
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %81 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %80, i32 15, i32 2448)
  %82 = call i32 @mdelay(i32 1)
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %84 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %83, i32 0, i32 319)
  %85 = call i32 @mdelay(i32 1)
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %87 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %86, i32 3, i32 2054)
  %88 = call i32 @mdelay(i32 1)
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %90 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %89, i32 4, i32 935)
  %91 = call i32 @mdelay(i32 1)
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %93 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %92, i32 5, i32 1435)
  %94 = call i32 @mdelay(i32 1)
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %96 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %95, i32 6, i32 129)
  %97 = call i32 @mdelay(i32 1)
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %99 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %98, i32 7, i32 416)
  %100 = call i32 @mdelay(i32 1)
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %102 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %101, i32 10, i32 1)
  %103 = call i32 @mdelay(i32 1)
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %105 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %104, i32 11, i32 1048)
  %106 = call i32 @mdelay(i32 1)
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %108 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %107, i32 12, i32 4030)
  %109 = call i32 @mdelay(i32 1)
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %111 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %110, i32 13, i32 8)
  %112 = call i32 @mdelay(i32 1)
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %26
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %117 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %116, i32 14, i32 2055)
  br label %121

118:                                              ; preds = %26
  %119 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %120 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %119, i32 14, i32 2054)
  br label %121

121:                                              ; preds = %118, %115
  %122 = call i32 @mdelay(i32 1)
  %123 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %124 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %123, i32 15, i32 2764)
  %125 = call i32 @mdelay(i32 1)
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %127 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %126, i32 0, i32 471)
  %128 = call i32 @mdelay(i32 1)
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %130 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %129, i32 3, i32 3584)
  %131 = call i32 @mdelay(i32 1)
  %132 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %133 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %132, i32 4, i32 3664)
  %134 = call i32 @mdelay(i32 1)
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %136 = call i32 @rtl8187se_write_rf_gain(%struct.ieee80211_hw* %135)
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %138 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %137, i32 5, i32 515)
  %139 = call i32 @mdelay(i32 1)
  %140 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %141 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %140, i32 6, i32 512)
  %142 = call i32 @mdelay(i32 1)
  %143 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %144 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %143, i32 0, i32 311)
  %145 = call i32 @mdelay(i32 11)
  %146 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %147 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %146, i32 13, i32 8)
  %148 = call i32 @mdelay(i32 11)
  %149 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %150 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %149, i32 0, i32 55)
  %151 = call i32 @mdelay(i32 11)
  %152 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %153 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %152, i32 4, i32 352)
  %154 = call i32 @mdelay(i32 11)
  %155 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %156 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %155, i32 7, i32 128)
  %157 = call i32 @mdelay(i32 11)
  %158 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %159 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %158, i32 2, i32 2189)
  %160 = call i32 @msleep(i32 221)
  %161 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %162 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %161, i32 0, i32 311)
  %163 = call i32 @mdelay(i32 11)
  %164 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %165 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %164, i32 7, i32 0)
  %166 = call i32 @mdelay(i32 1)
  %167 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %168 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %167, i32 7, i32 384)
  %169 = call i32 @mdelay(i32 1)
  %170 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %171 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %170, i32 7, i32 544)
  %172 = call i32 @mdelay(i32 1)
  %173 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %174 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %173, i32 7, i32 992)
  %175 = call i32 @mdelay(i32 1)
  %176 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %177 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %176, i32 6, i32 193)
  %178 = call i32 @mdelay(i32 1)
  %179 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %180 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %179, i32 10, i32 1)
  %181 = call i32 @mdelay(i32 1)
  %182 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %183 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %206

186:                                              ; preds = %121
  %187 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %188 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = shl i32 %189, 4
  %191 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %192 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = shl i32 %193, 1
  %195 = or i32 %190, %194
  %196 = or i32 %195, 2048
  %197 = or i32 %196, 512
  store i32 %197, i32* %7, align 4
  %198 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %198, i32 15, i32 %199)
  %201 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %202 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (i32, i8*, ...) @wiphy_info(i32 %203, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %205 = call i32 @mdelay(i32 1)
  br label %214

206:                                              ; preds = %121
  %207 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %208 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 (i32, i8*, ...) @wiphy_info(i32 %209, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %211 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %212 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %211, i32 15, i32 2764)
  %213 = call i32 @mdelay(i32 1)
  br label %214

214:                                              ; preds = %206, %186
  %215 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %216 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %215, i32 0, i32 191)
  %217 = call i32 @mdelay(i32 1)
  %218 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %219 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %218, i32 13, i32 2271)
  %220 = call i32 @mdelay(i32 1)
  %221 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %222 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %221, i32 2, i32 77)
  %223 = call i32 @mdelay(i32 1)
  %224 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %225 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %224, i32 4, i32 2421)
  %226 = call i32 @msleep(i32 31)
  %227 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %228 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %227, i32 0, i32 407)
  %229 = call i32 @mdelay(i32 1)
  %230 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %231 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %230, i32 5, i32 1451)
  %232 = call i32 @mdelay(i32 1)
  %233 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %234 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %233, i32 0, i32 159)
  %235 = call i32 @mdelay(i32 1)
  %236 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %237 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %236, i32 1, i32 0)
  %238 = call i32 @mdelay(i32 1)
  %239 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %240 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %239, i32 2, i32 0)
  %241 = call i32 @mdelay(i32 1)
  %242 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %243 = call i32* @REG_ADDR1(i32 590)
  %244 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %245 = call i32* @REG_ADDR1(i32 590)
  %246 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %244, i32* %245)
  %247 = and i32 %246, 159
  %248 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %242, i32* %243, i32 %247)
  %249 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %250 = call i32 @rtl8225se_write_phy_cck(%struct.ieee80211_hw* %249, i32 0, i32 200)
  %251 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %252 = call i32 @rtl8225se_write_phy_cck(%struct.ieee80211_hw* %251, i32 6, i32 28)
  %253 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %254 = call i32 @rtl8225se_write_phy_cck(%struct.ieee80211_hw* %253, i32 16, i32 120)
  %255 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %256 = call i32 @rtl8225se_write_phy_cck(%struct.ieee80211_hw* %255, i32 46, i32 208)
  %257 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %258 = call i32 @rtl8225se_write_phy_cck(%struct.ieee80211_hw* %257, i32 47, i32 6)
  %259 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %260 = call i32 @rtl8225se_write_phy_cck(%struct.ieee80211_hw* %259, i32 1, i32 70)
  %261 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %262 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %263 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %262, i32 0, i32 2
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 2
  %266 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %261, i32* %265, i32 16)
  %267 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %268 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %269 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %268, i32 0, i32 2
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 1
  %272 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %267, i32* %271, i32 27)
  %273 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %274 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %275 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %274, i32 0, i32 2
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 0
  %278 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %273, i32* %277, i32 3)
  %279 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %280 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %279, i32 0, i32 18)
  %281 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %282 = call i32 @rtl8225se_write_zebra_agc(%struct.ieee80211_hw* %281)
  %283 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %284 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %283, i32 16, i32 0)
  %285 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %286 = call i32 @rtl8187se_write_ofdm_config(%struct.ieee80211_hw* %285)
  %287 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %288 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %287, i32 0, i32 159)
  %289 = call i32 @udelay(i32 500)
  %290 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %291 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %290, i32 4, i32 2418)
  %292 = call i32 @udelay(i32 500)
  %293 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %294 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %293, i32 0, i32 159)
  %295 = call i32 @udelay(i32 500)
  %296 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %297 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %296, i32 4, i32 2418)
  %298 = call i32 @udelay(i32 500)
  %299 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %300 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %299, i32 16, i32 64)
  %301 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %302 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %301, i32 18, i32 64)
  %303 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %304 = call i32 @rtl8187se_write_initial_gain(%struct.ieee80211_hw* %303, i32 4)
  ret void
}

declare dso_local i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl8187se_rf_readreg(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @wiphy_info(i32, i8*, ...) #1

declare dso_local i32 @rtl8187se_write_rf_gain(%struct.ieee80211_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32* @REG_ADDR1(i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @rtl8225se_write_phy_cck(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl8225se_write_zebra_agc(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8187se_write_ofdm_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8187se_write_initial_gain(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
