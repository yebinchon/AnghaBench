; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.omap_rtc* }
%struct.omap_rtc = type { i32, i64, i64, i32, %struct.TYPE_31__*, %struct.TYPE_32__*, %struct.TYPE_32__*, %struct.TYPE_32__*, %struct.TYPE_32__* }
%struct.TYPE_31__ = type { i32 (%struct.omap_rtc*)*, i64, i64, i64, i32 (%struct.omap_rtc*)* }
%struct.TYPE_32__ = type { %struct.TYPE_35__, i32, i32, i32* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_35__ }
%struct.resource = type { i32 }
%struct.platform_device_id = type { i64 }
%struct.of_device_id = type { %struct.TYPE_31__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@omap_rtc_of_match = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ext-clk\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"int-clk\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@OMAP_RTC_INTERRUPTS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_OSC_REG = common dso_local global i32 0, align 4
@OMAP_RTC_OSC_32KCLK_EN = common dso_local global i32 0, align 4
@OMAP_RTC_STATUS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_STATUS_ALARM = common dso_local global i32 0, align 4
@OMAP_RTC_STATUS_ALARM2 = common dso_local global i32 0, align 4
@OMAP_RTC_STATUS_POWER_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"RTC power up reset detected\0A\00", align 1
@OMAP_RTC_CTRL_REG = common dso_local global i32 0, align 4
@OMAP_RTC_CTRL_STOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"already running\0A\00", align 1
@OMAP_RTC_CTRL_SPLIT = common dso_local global i32 0, align 4
@OMAP_RTC_CTRL_AUTO_COMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"split power mode\0A\00", align 1
@OMAP_RTC_OSC_OSC32K_GZ_DISABLE = common dso_local global i32 0, align 4
@OMAP_RTC_OSC_SEL_32KCLK_SRC = common dso_local global i32 0, align 4
@omap_rtc_ops = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_BEGIN_2000 = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_END_2099 = common dso_local global i32 0, align 4
@omap_rtc_nvmem_config = common dso_local global %struct.TYPE_34__ zeroinitializer, align 8
@rtc_irq = common dso_local global i32 0, align 4
@rtc_pinctrl_desc = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Couldn't register pinctrl driver\0A\00", align 1
@pm_power_off = common dso_local global i64 0, align 8
@omap_rtc_power_off_rtc = common dso_local global %struct.omap_rtc* null, align 8
@omap_rtc_power_off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_rtc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.platform_device_id*, align 8
  %10 = alloca %struct.of_device_id*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.omap_rtc* @devm_kzalloc(%struct.TYPE_35__* %13, i32 72, i32 %14)
  store %struct.omap_rtc* %15, %struct.omap_rtc** %4, align 8
  %16 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %17 = icmp ne %struct.omap_rtc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %447

21:                                               ; preds = %1
  %22 = load i32, i32* @omap_rtc_of_match, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call %struct.of_device_id* @of_match_device(i32 %22, %struct.TYPE_35__* %24)
  store %struct.of_device_id* %25, %struct.of_device_id** %10, align 8
  %26 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %27 = icmp ne %struct.of_device_id* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %21
  %29 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %30 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %29, i32 0, i32 0
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %30, align 8
  %32 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %33 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %32, i32 0, i32 4
  store %struct.TYPE_31__* %31, %struct.TYPE_31__** %33, align 8
  %34 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %35 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %34, i32 0, i32 4
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @of_device_is_system_power_controller(i32 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %40, %28
  %48 = phi i1 [ false, %28 ], [ %46, %40 ]
  %49 = zext i1 %48 to i32
  %50 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %51 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %62

52:                                               ; preds = %21
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %53)
  store %struct.platform_device_id* %54, %struct.platform_device_id** %9, align 8
  %55 = load %struct.platform_device_id*, %struct.platform_device_id** %9, align 8
  %56 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = bitcast i8* %58 to %struct.TYPE_31__*
  %60 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %61 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %60, i32 0, i32 4
  store %struct.TYPE_31__* %59, %struct.TYPE_31__** %61, align 8
  br label %62

62:                                               ; preds = %52, %47
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = call i8* @platform_get_irq(%struct.platform_device* %63, i32 0)
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %67 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %69 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sle i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %447

75:                                               ; preds = %62
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = call i8* @platform_get_irq(%struct.platform_device* %76, i32 1)
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %80 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %82 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp sle i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %447

88:                                               ; preds = %75
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i8* @devm_clk_get(%struct.TYPE_35__* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %92 = bitcast i8* %91 to %struct.TYPE_32__*
  %93 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %94 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %93, i32 0, i32 5
  store %struct.TYPE_32__* %92, %struct.TYPE_32__** %94, align 8
  %95 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %96 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %95, i32 0, i32 5
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %96, align 8
  %98 = call i64 @IS_ERR(%struct.TYPE_32__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %88
  %101 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %102 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %101, i32 0, i32 3
  store i32 1, i32* %102, align 8
  br label %110

103:                                              ; preds = %88
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i8* @devm_clk_get(%struct.TYPE_35__* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %107 = bitcast i8* %106 to %struct.TYPE_32__*
  %108 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %109 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %108, i32 0, i32 5
  store %struct.TYPE_32__* %107, %struct.TYPE_32__** %109, align 8
  br label %110

110:                                              ; preds = %103, %100
  %111 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %112 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %111, i32 0, i32 5
  %113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %112, align 8
  %114 = call i64 @IS_ERR(%struct.TYPE_32__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %110
  %117 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %118 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %117, i32 0, i32 5
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %118, align 8
  %120 = call i32 @clk_prepare_enable(%struct.TYPE_32__* %119)
  br label %121

121:                                              ; preds = %116, %110
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = load i32, i32* @IORESOURCE_MEM, align 4
  %124 = call %struct.resource* @platform_get_resource(%struct.platform_device* %122, i32 %123, i32 0)
  store %struct.resource* %124, %struct.resource** %5, align 8
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load %struct.resource*, %struct.resource** %5, align 8
  %128 = call %struct.TYPE_32__* @devm_ioremap_resource(%struct.TYPE_35__* %126, %struct.resource* %127)
  %129 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %130 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %129, i32 0, i32 8
  store %struct.TYPE_32__* %128, %struct.TYPE_32__** %130, align 8
  %131 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %132 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %131, i32 0, i32 8
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %132, align 8
  %134 = call i64 @IS_ERR(%struct.TYPE_32__* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %121
  %137 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %138 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %137, i32 0, i32 5
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %138, align 8
  %140 = call i32 @clk_disable_unprepare(%struct.TYPE_32__* %139)
  %141 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %142 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %141, i32 0, i32 8
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %142, align 8
  %144 = call i32 @PTR_ERR(%struct.TYPE_32__* %143)
  store i32 %144, i32* %2, align 4
  br label %447

145:                                              ; preds = %121
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %148 = call i32 @platform_set_drvdata(%struct.platform_device* %146, %struct.omap_rtc* %147)
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 @pm_runtime_enable(%struct.TYPE_35__* %150)
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = call i32 @pm_runtime_get_sync(%struct.TYPE_35__* %153)
  %155 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %156 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %155, i32 0, i32 4
  %157 = load %struct.TYPE_31__*, %struct.TYPE_31__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %157, i32 0, i32 4
  %159 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %158, align 8
  %160 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %161 = call i32 %159(%struct.omap_rtc* %160)
  %162 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %163 = load i32, i32* @OMAP_RTC_INTERRUPTS_REG, align 4
  %164 = call i32 @rtc_writel(%struct.omap_rtc* %162, i32 %163, i32 0)
  %165 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %166 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %165, i32 0, i32 4
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %145
  %172 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %173 = load i32, i32* @OMAP_RTC_OSC_REG, align 4
  %174 = call i32 @rtc_read(%struct.omap_rtc* %172, i32 %173)
  store i32 %174, i32* %6, align 4
  %175 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %176 = load i32, i32* @OMAP_RTC_OSC_REG, align 4
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @OMAP_RTC_OSC_32KCLK_EN, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @rtc_writel(%struct.omap_rtc* %175, i32 %176, i32 %179)
  br label %181

181:                                              ; preds = %171, %145
  %182 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %183 = load i32, i32* @OMAP_RTC_STATUS_REG, align 4
  %184 = call i32 @rtc_read(%struct.omap_rtc* %182, i32 %183)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* @OMAP_RTC_STATUS_ALARM, align 4
  store i32 %185, i32* %7, align 4
  %186 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %187 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %186, i32 0, i32 4
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %181
  %193 = load i32, i32* @OMAP_RTC_STATUS_ALARM2, align 4
  %194 = load i32, i32* %7, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %7, align 4
  br label %196

196:                                              ; preds = %192, %181
  %197 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %198 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %197, i32 0, i32 4
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %216

203:                                              ; preds = %196
  %204 = load i32, i32* @OMAP_RTC_STATUS_POWER_UP, align 4
  %205 = load i32, i32* %7, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @OMAP_RTC_STATUS_POWER_UP, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %203
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = call i32 @dev_info(%struct.TYPE_35__* %213, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %215

215:                                              ; preds = %211, %203
  br label %216

216:                                              ; preds = %215, %196
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* %7, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %223 = load i32, i32* @OMAP_RTC_STATUS_REG, align 4
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* %7, align 4
  %226 = and i32 %224, %225
  %227 = call i32 @rtc_write(%struct.omap_rtc* %222, i32 %223, i32 %226)
  br label %228

228:                                              ; preds = %221, %216
  %229 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %230 = load i32, i32* @OMAP_RTC_CTRL_REG, align 4
  %231 = call i32 @rtc_read(%struct.omap_rtc* %229, i32 %230)
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @OMAP_RTC_CTRL_STOP, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %228
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = call i32 @dev_info(%struct.TYPE_35__* %238, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %240

240:                                              ; preds = %236, %228
  %241 = load i32, i32* %6, align 4
  %242 = load i32, i32* @OMAP_RTC_CTRL_SPLIT, align 4
  %243 = load i32, i32* @OMAP_RTC_CTRL_AUTO_COMP, align 4
  %244 = or i32 %242, %243
  %245 = and i32 %241, %244
  store i32 %245, i32* %8, align 4
  %246 = load i32, i32* @OMAP_RTC_CTRL_STOP, align 4
  %247 = load i32, i32* %8, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @OMAP_RTC_CTRL_SPLIT, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %240
  %254 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %255 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %254, i32 0, i32 0
  %256 = call i32 @dev_info(%struct.TYPE_35__* %255, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %257

257:                                              ; preds = %253, %240
  %258 = load i32, i32* %6, align 4
  %259 = load i32, i32* %8, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %257
  %262 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %263 = load i32, i32* @OMAP_RTC_CTRL_REG, align 4
  %264 = load i32, i32* %8, align 4
  %265 = call i32 @rtc_write(%struct.omap_rtc* %262, i32 %263, i32 %264)
  br label %266

266:                                              ; preds = %261, %257
  %267 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %268 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %288

271:                                              ; preds = %266
  %272 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %273 = load i32, i32* @OMAP_RTC_OSC_REG, align 4
  %274 = call i32 @rtc_read(%struct.omap_rtc* %272, i32 %273)
  store i32 %274, i32* %6, align 4
  %275 = load i32, i32* @OMAP_RTC_OSC_OSC32K_GZ_DISABLE, align 4
  %276 = xor i32 %275, -1
  %277 = load i32, i32* %6, align 4
  %278 = and i32 %277, %276
  store i32 %278, i32* %6, align 4
  %279 = load i32, i32* @OMAP_RTC_OSC_32KCLK_EN, align 4
  %280 = load i32, i32* @OMAP_RTC_OSC_SEL_32KCLK_SRC, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* %6, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %6, align 4
  %284 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %285 = load i32, i32* @OMAP_RTC_OSC_REG, align 4
  %286 = load i32, i32* %6, align 4
  %287 = call i32 @rtc_writel(%struct.omap_rtc* %284, i32 %285, i32 %286)
  br label %288

288:                                              ; preds = %271, %266
  %289 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %290 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %289, i32 0, i32 4
  %291 = load %struct.TYPE_31__*, %struct.TYPE_31__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %291, i32 0, i32 0
  %293 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %292, align 8
  %294 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %295 = call i32 %293(%struct.omap_rtc* %294)
  %296 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %297 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %296, i32 0, i32 0
  %298 = call i32 @device_init_wakeup(%struct.TYPE_35__* %297, i32 1)
  %299 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %300 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %299, i32 0, i32 0
  %301 = call %struct.TYPE_32__* @devm_rtc_allocate_device(%struct.TYPE_35__* %300)
  %302 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %303 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %302, i32 0, i32 7
  store %struct.TYPE_32__* %301, %struct.TYPE_32__** %303, align 8
  %304 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %305 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %304, i32 0, i32 7
  %306 = load %struct.TYPE_32__*, %struct.TYPE_32__** %305, align 8
  %307 = call i64 @IS_ERR(%struct.TYPE_32__* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %288
  %310 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %311 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %310, i32 0, i32 7
  %312 = load %struct.TYPE_32__*, %struct.TYPE_32__** %311, align 8
  %313 = call i32 @PTR_ERR(%struct.TYPE_32__* %312)
  store i32 %313, i32* %11, align 4
  br label %425

314:                                              ; preds = %288
  %315 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %316 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %315, i32 0, i32 7
  %317 = load %struct.TYPE_32__*, %struct.TYPE_32__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %317, i32 0, i32 3
  store i32* @omap_rtc_ops, i32** %318, align 8
  %319 = load i32, i32* @RTC_TIMESTAMP_BEGIN_2000, align 4
  %320 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %321 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %320, i32 0, i32 7
  %322 = load %struct.TYPE_32__*, %struct.TYPE_32__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %322, i32 0, i32 2
  store i32 %319, i32* %323, align 8
  %324 = load i32, i32* @RTC_TIMESTAMP_END_2099, align 4
  %325 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %326 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %325, i32 0, i32 7
  %327 = load %struct.TYPE_32__*, %struct.TYPE_32__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %327, i32 0, i32 1
  store i32 %324, i32* %328, align 4
  %329 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  store %struct.omap_rtc* %329, %struct.omap_rtc** getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @omap_rtc_nvmem_config, i32 0, i32 0), align 8
  %330 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %331 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %330, i32 0, i32 0
  %332 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %333 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = load i32, i32* @rtc_irq, align 4
  %336 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %337 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %336, i32 0, i32 7
  %338 = load %struct.TYPE_32__*, %struct.TYPE_32__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %338, i32 0, i32 0
  %340 = call i32 @dev_name(%struct.TYPE_35__* %339)
  %341 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %342 = call i32 @devm_request_irq(%struct.TYPE_35__* %331, i64 %334, i32 %335, i32 0, i32 %340, %struct.omap_rtc* %341)
  store i32 %342, i32* %11, align 4
  %343 = load i32, i32* %11, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %314
  br label %425

346:                                              ; preds = %314
  %347 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %348 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %351 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %350, i32 0, i32 2
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %349, %352
  br i1 %353, label %354, label %372

354:                                              ; preds = %346
  %355 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %356 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %355, i32 0, i32 0
  %357 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %358 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = load i32, i32* @rtc_irq, align 4
  %361 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %362 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %361, i32 0, i32 7
  %363 = load %struct.TYPE_32__*, %struct.TYPE_32__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %363, i32 0, i32 0
  %365 = call i32 @dev_name(%struct.TYPE_35__* %364)
  %366 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %367 = call i32 @devm_request_irq(%struct.TYPE_35__* %356, i64 %359, i32 %360, i32 0, i32 %365, %struct.omap_rtc* %366)
  store i32 %367, i32* %11, align 4
  %368 = load i32, i32* %11, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %354
  br label %425

371:                                              ; preds = %354
  br label %372

372:                                              ; preds = %371, %346
  %373 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %374 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %373, i32 0, i32 0
  %375 = call i32 @dev_name(%struct.TYPE_35__* %374)
  store i32 %375, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @rtc_pinctrl_desc, i32 0, i32 0), align 4
  %376 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %377 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %376, i32 0, i32 0
  %378 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %379 = call %struct.TYPE_32__* @pinctrl_register(%struct.TYPE_33__* @rtc_pinctrl_desc, %struct.TYPE_35__* %377, %struct.omap_rtc* %378)
  %380 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %381 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %380, i32 0, i32 6
  store %struct.TYPE_32__* %379, %struct.TYPE_32__** %381, align 8
  %382 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %383 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %382, i32 0, i32 6
  %384 = load %struct.TYPE_32__*, %struct.TYPE_32__** %383, align 8
  %385 = call i64 @IS_ERR(%struct.TYPE_32__* %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %395

387:                                              ; preds = %372
  %388 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %389 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %388, i32 0, i32 0
  %390 = call i32 @dev_err(%struct.TYPE_35__* %389, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %391 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %392 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %391, i32 0, i32 6
  %393 = load %struct.TYPE_32__*, %struct.TYPE_32__** %392, align 8
  %394 = call i32 @PTR_ERR(%struct.TYPE_32__* %393)
  store i32 %394, i32* %11, align 4
  br label %425

395:                                              ; preds = %372
  %396 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %397 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %396, i32 0, i32 7
  %398 = load %struct.TYPE_32__*, %struct.TYPE_32__** %397, align 8
  %399 = call i32 @rtc_register_device(%struct.TYPE_32__* %398)
  store i32 %399, i32* %11, align 4
  %400 = load i32, i32* %11, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %395
  br label %420

403:                                              ; preds = %395
  %404 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %405 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %404, i32 0, i32 7
  %406 = load %struct.TYPE_32__*, %struct.TYPE_32__** %405, align 8
  %407 = call i32 @rtc_nvmem_register(%struct.TYPE_32__* %406, %struct.TYPE_34__* @omap_rtc_nvmem_config)
  %408 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %409 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %419

412:                                              ; preds = %403
  %413 = load i64, i64* @pm_power_off, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %418, label %415

415:                                              ; preds = %412
  %416 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  store %struct.omap_rtc* %416, %struct.omap_rtc** @omap_rtc_power_off_rtc, align 8
  %417 = load i64, i64* @omap_rtc_power_off, align 8
  store i64 %417, i64* @pm_power_off, align 8
  br label %418

418:                                              ; preds = %415, %412
  br label %419

419:                                              ; preds = %418, %403
  store i32 0, i32* %2, align 4
  br label %447

420:                                              ; preds = %402
  %421 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %422 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %421, i32 0, i32 6
  %423 = load %struct.TYPE_32__*, %struct.TYPE_32__** %422, align 8
  %424 = call i32 @pinctrl_unregister(%struct.TYPE_32__* %423)
  br label %425

425:                                              ; preds = %420, %387, %370, %345, %309
  %426 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %427 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %426, i32 0, i32 5
  %428 = load %struct.TYPE_32__*, %struct.TYPE_32__** %427, align 8
  %429 = call i32 @clk_disable_unprepare(%struct.TYPE_32__* %428)
  %430 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %431 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %430, i32 0, i32 0
  %432 = call i32 @device_init_wakeup(%struct.TYPE_35__* %431, i32 0)
  %433 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %434 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %433, i32 0, i32 4
  %435 = load %struct.TYPE_31__*, %struct.TYPE_31__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %435, i32 0, i32 0
  %437 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %436, align 8
  %438 = load %struct.omap_rtc*, %struct.omap_rtc** %4, align 8
  %439 = call i32 %437(%struct.omap_rtc* %438)
  %440 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %441 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %440, i32 0, i32 0
  %442 = call i32 @pm_runtime_put_sync(%struct.TYPE_35__* %441)
  %443 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %444 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %443, i32 0, i32 0
  %445 = call i32 @pm_runtime_disable(%struct.TYPE_35__* %444)
  %446 = load i32, i32* %11, align 4
  store i32 %446, i32* %2, align 4
  br label %447

447:                                              ; preds = %425, %419, %136, %85, %72, %18
  %448 = load i32, i32* %2, align 4
  ret i32 %448
}

declare dso_local %struct.omap_rtc* @devm_kzalloc(%struct.TYPE_35__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_35__*) #1

declare dso_local i64 @of_device_is_system_power_controller(i32) #1

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_35__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_32__*) #1

declare dso_local i32 @clk_prepare_enable(%struct.TYPE_32__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_32__* @devm_ioremap_resource(%struct.TYPE_35__*, %struct.resource*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.TYPE_32__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_32__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.omap_rtc*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_35__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_35__*) #1

declare dso_local i32 @rtc_writel(%struct.omap_rtc*, i32, i32) #1

declare dso_local i32 @rtc_read(%struct.omap_rtc*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_35__*, i8*) #1

declare dso_local i32 @rtc_write(%struct.omap_rtc*, i32, i32) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_35__*, i32) #1

declare dso_local %struct.TYPE_32__* @devm_rtc_allocate_device(%struct.TYPE_35__*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_35__*, i64, i32, i32, i32, %struct.omap_rtc*) #1

declare dso_local i32 @dev_name(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_32__* @pinctrl_register(%struct.TYPE_33__*, %struct.TYPE_35__*, %struct.omap_rtc*) #1

declare dso_local i32 @dev_err(%struct.TYPE_35__*, i8*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_32__*) #1

declare dso_local i32 @rtc_nvmem_register(%struct.TYPE_32__*, %struct.TYPE_34__*) #1

declare dso_local i32 @pinctrl_unregister(%struct.TYPE_32__*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.TYPE_35__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
