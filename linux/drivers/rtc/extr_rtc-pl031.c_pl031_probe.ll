; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl031.c_pl031_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl031.c_pl031_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i64*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.amba_id = type { %struct.pl031_vendor_data* }
%struct.pl031_vendor_data = type { i32, i64, i64, i32 }
%struct.pl031_local = type { %struct.TYPE_6__*, i64, %struct.pl031_vendor_data* }
%struct.TYPE_6__ = type { %struct.rtc_class_ops* }
%struct.rtc_class_ops = type { i32*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"designer ID = 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"revision = 0x%01x\0A\00", align 1
@RTC_CR = common dso_local global i64 0, align 8
@RTC_CR_CWEN = common dso_local global i64 0, align 8
@RTC_CR_EN = common dso_local global i64 0, align 8
@RTC_YDR = common dso_local global i64 0, align 8
@RTC_DR = common dso_local global i64 0, align 8
@RTC_MON_MASK = common dso_local global i64 0, align 8
@RTC_MDAY_MASK = common dso_local global i64 0, align 8
@RTC_WDAY_MASK = common dso_local global i64 0, align 8
@RTC_WDAY_SHIFT = common dso_local global i32 0, align 4
@RTC_YLR = common dso_local global i64 0, align 8
@RTC_LR = common dso_local global i64 0, align 8
@pl031_interrupt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"rtc-pl031\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*, %struct.amba_id*)* @pl031_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl031_probe(%struct.amba_device* %0, %struct.amba_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amba_device*, align 8
  %5 = alloca %struct.amba_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pl031_local*, align 8
  %8 = alloca %struct.pl031_vendor_data*, align 8
  %9 = alloca %struct.rtc_class_ops*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.amba_device* %0, %struct.amba_device** %4, align 8
  store %struct.amba_id* %1, %struct.amba_id** %5, align 8
  %12 = load %struct.amba_id*, %struct.amba_id** %5, align 8
  %13 = getelementptr inbounds %struct.amba_id, %struct.amba_id* %12, i32 0, i32 0
  %14 = load %struct.pl031_vendor_data*, %struct.pl031_vendor_data** %13, align 8
  store %struct.pl031_vendor_data* %14, %struct.pl031_vendor_data** %8, align 8
  %15 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %16 = call i32 @amba_request_regions(%struct.amba_device* %15, i32* null)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %233

20:                                               ; preds = %2
  %21 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %22 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %21, i32 0, i32 1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.pl031_local* @devm_kzalloc(i32* %22, i32 24, i32 %23)
  store %struct.pl031_local* %24, %struct.pl031_local** %7, align 8
  %25 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %26 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %25, i32 0, i32 1
  %27 = load %struct.pl031_vendor_data*, %struct.pl031_vendor_data** %8, align 8
  %28 = getelementptr inbounds %struct.pl031_vendor_data, %struct.pl031_vendor_data* %27, i32 0, i32 3
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.rtc_class_ops* @devm_kmemdup(i32* %26, i32* %28, i32 4, i32 %29)
  store %struct.rtc_class_ops* %30, %struct.rtc_class_ops** %9, align 8
  %31 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %32 = icmp ne %struct.pl031_local* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load %struct.rtc_class_ops*, %struct.rtc_class_ops** %9, align 8
  %35 = icmp ne %struct.rtc_class_ops* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %20
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %230

39:                                               ; preds = %33
  %40 = load %struct.pl031_vendor_data*, %struct.pl031_vendor_data** %8, align 8
  %41 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %42 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %41, i32 0, i32 2
  store %struct.pl031_vendor_data* %40, %struct.pl031_vendor_data** %42, align 8
  %43 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %44 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %43, i32 0, i32 1
  %45 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %46 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %50 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %49, i32 0, i32 2
  %51 = call i32 @resource_size(%struct.TYPE_7__* %50)
  %52 = call i64 @devm_ioremap(i32* %44, i32 %48, i32 %51)
  %53 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %54 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %56 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %39
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %230

62:                                               ; preds = %39
  %63 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %64 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %65 = call i32 @amba_set_drvdata(%struct.amba_device* %63, %struct.pl031_local* %64)
  %66 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %67 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %66, i32 0, i32 1
  %68 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %69 = call i32 @amba_manf(%struct.amba_device* %68)
  %70 = call i32 @dev_dbg(i32* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %72 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %71, i32 0, i32 1
  %73 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %74 = call i32 @amba_rev(%struct.amba_device* %73)
  %75 = call i32 @dev_dbg(i32* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %77 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RTC_CR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @readl(i64 %80)
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %11, align 8
  %83 = load %struct.pl031_vendor_data*, %struct.pl031_vendor_data** %8, align 8
  %84 = getelementptr inbounds %struct.pl031_vendor_data, %struct.pl031_vendor_data* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %62
  %88 = load i64, i64* @RTC_CR_CWEN, align 8
  %89 = load i64, i64* %11, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %11, align 8
  br label %95

91:                                               ; preds = %62
  %92 = load i64, i64* @RTC_CR_EN, align 8
  %93 = load i64, i64* %11, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %11, align 8
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %98 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @RTC_CR, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel(i64 %96, i64 %101)
  %103 = load %struct.pl031_vendor_data*, %struct.pl031_vendor_data** %8, align 8
  %104 = getelementptr inbounds %struct.pl031_vendor_data, %struct.pl031_vendor_data* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %152

107:                                              ; preds = %95
  %108 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %109 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @RTC_YDR, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @readl(i64 %112)
  %114 = icmp eq i32 %113, 8192
  br i1 %114, label %115, label %151

115:                                              ; preds = %107
  %116 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %117 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @RTC_DR, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @readl(i64 %120)
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %10, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* @RTC_MON_MASK, align 8
  %125 = load i64, i64* @RTC_MDAY_MASK, align 8
  %126 = or i64 %124, %125
  %127 = load i64, i64* @RTC_WDAY_MASK, align 8
  %128 = or i64 %126, %127
  %129 = and i64 %123, %128
  %130 = icmp eq i64 %129, 34734080
  br i1 %130, label %131, label %150

131:                                              ; preds = %115
  %132 = load i64, i64* %10, align 8
  %133 = load i32, i32* @RTC_WDAY_SHIFT, align 4
  %134 = shl i32 7, %133
  %135 = sext i32 %134 to i64
  %136 = or i64 %132, %135
  store i64 %136, i64* %10, align 8
  %137 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %138 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @RTC_YLR, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writel(i64 8192, i64 %141)
  %143 = load i64, i64* %10, align 8
  %144 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %145 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @RTC_LR, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writel(i64 %143, i64 %148)
  br label %150

150:                                              ; preds = %131, %115
  br label %151

151:                                              ; preds = %150, %107
  br label %152

152:                                              ; preds = %151, %95
  %153 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %154 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %152
  %160 = load %struct.rtc_class_ops*, %struct.rtc_class_ops** %9, align 8
  %161 = getelementptr inbounds %struct.rtc_class_ops, %struct.rtc_class_ops* %160, i32 0, i32 2
  store i32* null, i32** %161, align 8
  %162 = load %struct.rtc_class_ops*, %struct.rtc_class_ops** %9, align 8
  %163 = getelementptr inbounds %struct.rtc_class_ops, %struct.rtc_class_ops* %162, i32 0, i32 1
  store i32* null, i32** %163, align 8
  %164 = load %struct.rtc_class_ops*, %struct.rtc_class_ops** %9, align 8
  %165 = getelementptr inbounds %struct.rtc_class_ops, %struct.rtc_class_ops* %164, i32 0, i32 0
  store i32* null, i32** %165, align 8
  br label %166

166:                                              ; preds = %159, %152
  %167 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %168 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %167, i32 0, i32 1
  %169 = call i32 @device_init_wakeup(i32* %168, i32 1)
  %170 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %171 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %170, i32 0, i32 1
  %172 = call %struct.TYPE_6__* @devm_rtc_allocate_device(i32* %171)
  %173 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %174 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %173, i32 0, i32 0
  store %struct.TYPE_6__* %172, %struct.TYPE_6__** %174, align 8
  %175 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %176 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %175, i32 0, i32 0
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = call i64 @IS_ERR(%struct.TYPE_6__* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %166
  %181 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %182 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %181, i32 0, i32 0
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = call i32 @PTR_ERR(%struct.TYPE_6__* %183)
  store i32 %184, i32* %3, align 4
  br label %235

185:                                              ; preds = %166
  %186 = load %struct.rtc_class_ops*, %struct.rtc_class_ops** %9, align 8
  %187 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %188 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %187, i32 0, i32 0
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  store %struct.rtc_class_ops* %186, %struct.rtc_class_ops** %190, align 8
  %191 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %192 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %191, i32 0, i32 0
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = call i32 @rtc_register_device(%struct.TYPE_6__* %193)
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %6, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  br label %230

198:                                              ; preds = %185
  %199 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %200 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %229

205:                                              ; preds = %198
  %206 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %207 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %206, i32 0, i32 0
  %208 = load i64*, i64** %207, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 0
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* @pl031_interrupt, align 4
  %212 = load %struct.pl031_vendor_data*, %struct.pl031_vendor_data** %8, align 8
  %213 = getelementptr inbounds %struct.pl031_vendor_data, %struct.pl031_vendor_data* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %216 = call i32 @request_irq(i64 %210, i32 %211, i32 %214, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.pl031_local* %215)
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %205
  br label %230

220:                                              ; preds = %205
  %221 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %222 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %221, i32 0, i32 1
  %223 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %224 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %223, i32 0, i32 0
  %225 = load i64*, i64** %224, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 0
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @dev_pm_set_wake_irq(i32* %222, i64 %227)
  br label %229

229:                                              ; preds = %220, %198
  store i32 0, i32* %3, align 4
  br label %235

230:                                              ; preds = %219, %197, %59, %36
  %231 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %232 = call i32 @amba_release_regions(%struct.amba_device* %231)
  br label %233

233:                                              ; preds = %230, %19
  %234 = load i32, i32* %6, align 4
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %233, %229, %180
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i32 @amba_request_regions(%struct.amba_device*, i32*) #1

declare dso_local %struct.pl031_local* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.rtc_class_ops* @devm_kmemdup(i32*, i32*, i32, i32) #1

declare dso_local i64 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_7__*) #1

declare dso_local i32 @amba_set_drvdata(%struct.amba_device*, %struct.pl031_local*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @amba_manf(%struct.amba_device*) #1

declare dso_local i32 @amba_rev(%struct.amba_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_6__*) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.pl031_local*) #1

declare dso_local i32 @dev_pm_set_wake_irq(i32*, i64) #1

declare dso_local i32 @amba_release_regions(%struct.amba_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
