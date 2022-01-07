; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tmiofb.c_tmiofb_hw_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tmiofb.c_tmiofb_hw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tmio_fb_data = type { i32 (%struct.platform_device.0*, i32)*, i32 (%struct.platform_device.1*, %struct.fb_videomode*)* }
%struct.platform_device.0 = type opaque
%struct.platform_device.1 = type opaque
%struct.fb_videomode = type opaque
%struct.fb_info = type { %struct.TYPE_2__, %struct.tmiofb_par*, %struct.fb_videomode.2* }
%struct.TYPE_2__ = type { i32 }
%struct.tmiofb_par = type { i64 }
%struct.fb_videomode.2 = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@LCR_GM = common dso_local global i64 0, align 8
@LCR_LCDCCRC = common dso_local global i64 0, align 8
@LCR_VHPN = common dso_local global i64 0, align 8
@LCR_GDSAH = common dso_local global i64 0, align 8
@LCR_GDSAL = common dso_local global i64 0, align 8
@LCR_VHPCH = common dso_local global i64 0, align 8
@LCR_VHPCL = common dso_local global i64 0, align 8
@LCR_HSS = common dso_local global i64 0, align 8
@LCR_HSE = common dso_local global i64 0, align 8
@LCR_HDS = common dso_local global i64 0, align 8
@LCR_HT = common dso_local global i64 0, align 8
@LCR_HNP = common dso_local global i64 0, align 8
@LCR_VSS = common dso_local global i64 0, align 8
@LCR_VSE = common dso_local global i64 0, align 8
@LCR_VDS = common dso_local global i64 0, align 8
@LCR_ILN = common dso_local global i64 0, align 8
@LCR_VT = common dso_local global i64 0, align 8
@LCR_MISC = common dso_local global i64 0, align 8
@LCR_LCDCC = common dso_local global i64 0, align 8
@LCR_SP = common dso_local global i64 0, align 8
@LCR_VCS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @tmiofb_hw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmiofb_hw_mode(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tmio_fb_data*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_videomode.2*, align 8
  %6 = alloca %struct.tmiofb_par*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.tmio_fb_data* @dev_get_platdata(i32* %9)
  store %struct.tmio_fb_data* %10, %struct.tmio_fb_data** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %11)
  store %struct.fb_info* %12, %struct.fb_info** %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 2
  %15 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %14, align 8
  store %struct.fb_videomode.2* %15, %struct.fb_videomode.2** %5, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 1
  %18 = load %struct.tmiofb_par*, %struct.tmiofb_par** %17, align 8
  store %struct.tmiofb_par* %18, %struct.tmiofb_par** %6, align 8
  %19 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %20 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LCR_GM, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @tmio_iowrite16(i32 0, i64 %23)
  %25 = load %struct.tmio_fb_data*, %struct.tmio_fb_data** %3, align 8
  %26 = getelementptr inbounds %struct.tmio_fb_data, %struct.tmio_fb_data* %25, i32 0, i32 0
  %27 = load i32 (%struct.platform_device.0*, i32)*, i32 (%struct.platform_device.0*, i32)** %26, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %29 = bitcast %struct.platform_device* %28 to %struct.platform_device.0*
  %30 = call i32 %27(%struct.platform_device.0* %29, i32 0)
  %31 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %32 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LCR_LCDCCRC, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @tmio_iowrite16(i32 16, i64 %35)
  %37 = load %struct.tmio_fb_data*, %struct.tmio_fb_data** %3, align 8
  %38 = getelementptr inbounds %struct.tmio_fb_data, %struct.tmio_fb_data* %37, i32 0, i32 1
  %39 = load i32 (%struct.platform_device.1*, %struct.fb_videomode*)*, i32 (%struct.platform_device.1*, %struct.fb_videomode*)** %38, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %41 = bitcast %struct.platform_device* %40 to %struct.platform_device.1*
  %42 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %5, align 8
  %43 = bitcast %struct.fb_videomode.2* %42 to %struct.fb_videomode*
  %44 = call i32 %39(%struct.platform_device.1* %41, %struct.fb_videomode* %43)
  %45 = load %struct.tmio_fb_data*, %struct.tmio_fb_data** %3, align 8
  %46 = getelementptr inbounds %struct.tmio_fb_data, %struct.tmio_fb_data* %45, i32 0, i32 0
  %47 = load i32 (%struct.platform_device.0*, i32)*, i32 (%struct.platform_device.0*, i32)** %46, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %49 = bitcast %struct.platform_device* %48 to %struct.platform_device.0*
  %50 = call i32 %47(%struct.platform_device.0* %49, i32 1)
  %51 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %56 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @LCR_VHPN, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @tmio_iowrite16(i32 %54, i64 %59)
  %61 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %62 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LCR_GDSAH, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @tmio_iowrite16(i32 0, i64 %65)
  %67 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %68 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @LCR_GDSAL, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @tmio_iowrite16(i32 0, i64 %71)
  %73 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = ashr i32 %76, 16
  %78 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %79 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @LCR_VHPCH, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @tmio_iowrite16(i32 %77, i64 %82)
  %84 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %89 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @LCR_VHPCL, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @tmio_iowrite16(i32 %87, i64 %92)
  store i32 0, i32* %7, align 4
  %94 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %95 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @LCR_HSS, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @tmio_iowrite16(i32 0, i64 %98)
  %100 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %5, align 8
  %101 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %106 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @LCR_HSE, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @tmio_iowrite16(i32 %104, i64 %109)
  %111 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %5, align 8
  %112 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = add i32 %114, %113
  store i32 %115, i32* %7, align 4
  %116 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %117 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @LCR_HDS, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @tmio_iowrite16(i32 %115, i64 %120)
  %122 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %5, align 8
  %123 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %5, align 8
  %126 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %124, %127
  %129 = load i32, i32* %7, align 4
  %130 = add i32 %129, %128
  store i32 %130, i32* %7, align 4
  %131 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %132 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @LCR_HT, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @tmio_iowrite16(i32 %130, i64 %135)
  %137 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %5, align 8
  %138 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %141 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @LCR_HNP, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @tmio_iowrite16(i32 %139, i64 %144)
  store i32 0, i32* %7, align 4
  %146 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %147 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @LCR_VSS, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @tmio_iowrite16(i32 0, i64 %150)
  %152 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %5, align 8
  %153 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %7, align 4
  %156 = add i32 %155, %154
  store i32 %156, i32* %7, align 4
  %157 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %158 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @LCR_VSE, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @tmio_iowrite16(i32 %156, i64 %161)
  %163 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %5, align 8
  %164 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %7, align 4
  %167 = add i32 %166, %165
  store i32 %167, i32* %7, align 4
  %168 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %169 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @LCR_VDS, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @tmio_iowrite16(i32 %167, i64 %172)
  %174 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %5, align 8
  %175 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %7, align 4
  %178 = add i32 %177, %176
  store i32 %178, i32* %7, align 4
  %179 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %180 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @LCR_ILN, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @tmio_iowrite16(i32 %178, i64 %183)
  %185 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %5, align 8
  %186 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %7, align 4
  %189 = add i32 %188, %187
  store i32 %189, i32* %7, align 4
  %190 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %191 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @LCR_VT, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @tmio_iowrite16(i32 %189, i64 %194)
  %196 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %197 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @LCR_MISC, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @tmio_iowrite16(i32 3, i64 %200)
  %202 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %203 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @LCR_GM, align 8
  %206 = add nsw i64 %204, %205
  %207 = call i32 @tmio_iowrite16(i32 1, i64 %206)
  %208 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %209 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @LCR_LCDCC, align 8
  %212 = add nsw i64 %210, %211
  %213 = call i32 @tmio_iowrite16(i32 16391, i64 %212)
  %214 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %215 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @LCR_SP, align 8
  %218 = add nsw i64 %216, %217
  %219 = call i32 @tmio_iowrite16(i32 3, i64 %218)
  %220 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %221 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @LCR_LCDCCRC, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @tmio_iowrite16(i32 16, i64 %224)
  %226 = call i32 @msleep(i32 5)
  %227 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %228 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @LCR_LCDCCRC, align 8
  %231 = add nsw i64 %229, %230
  %232 = call i32 @tmio_iowrite16(i32 20, i64 %231)
  %233 = call i32 @msleep(i32 5)
  %234 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %235 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @LCR_LCDCCRC, align 8
  %238 = add nsw i64 %236, %237
  %239 = call i32 @tmio_iowrite16(i32 21, i64 %238)
  %240 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %241 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @LCR_VCS, align 8
  %244 = add nsw i64 %242, %243
  %245 = call i32 @tmio_iowrite16(i32 65530, i64 %244)
  ret void
}

declare dso_local %struct.tmio_fb_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @tmio_iowrite16(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
