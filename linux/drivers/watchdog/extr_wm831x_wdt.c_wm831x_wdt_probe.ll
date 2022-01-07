; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wm831x_wdt.c_wm831x_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wm831x_wdt.c_wm831x_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.wm831x = type { i32 }
%struct.wm831x_pdata = type { %struct.wm831x_watchdog_pdata* }
%struct.wm831x_watchdog_pdata = type { i32, i32, i32, i64 }
%struct.wm831x_wdt_drvdata = type { %struct.watchdog_device, i64, %struct.wm831x*, i32 }
%struct.watchdog_device = type { i32, %struct.device*, i32*, i32* }

@WM831X_WATCHDOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to read watchdog status: %d\0A\00", align 1
@WM831X_WDOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Watchdog is paused\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm831x_wdt_info = common dso_local global i32 0, align 4
@wm831x_wdt_ops = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@WM831X_WDOG_TO_MASK = common dso_local global i32 0, align 4
@wm831x_wdt_cfgs = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Unknown watchdog timeout: %x\0A\00", align 1
@WM831X_WDOG_SECACT_MASK = common dso_local global i32 0, align 4
@WM831X_WDOG_PRIMACT_MASK = common dso_local global i32 0, align 4
@WM831X_WDOG_RST_SRC = common dso_local global i32 0, align 4
@WM831X_WDOG_PRIMACT_SHIFT = common dso_local global i32 0, align 4
@WM831X_WDOG_SECACT_SHIFT = common dso_local global i32 0, align 4
@WM831X_WDOG_RST_SRC_SHIFT = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Watchdog update\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to request update GPIO: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to unlock security key: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.wm831x*, align 8
  %6 = alloca %struct.wm831x_pdata*, align 8
  %7 = alloca %struct.wm831x_watchdog_pdata*, align 8
  %8 = alloca %struct.wm831x_wdt_drvdata*, align 8
  %9 = alloca %struct.watchdog_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.wm831x* @dev_get_drvdata(i32 %17)
  store %struct.wm831x* %18, %struct.wm831x** %5, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.wm831x_pdata* @dev_get_platdata(i32 %21)
  store %struct.wm831x_pdata* %22, %struct.wm831x_pdata** %6, align 8
  %23 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %24 = load i32, i32* @WM831X_WATCHDOG, align 4
  %25 = call i32 @wm831x_reg_read(%struct.wm831x* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %30 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %2, align 4
  br label %217

35:                                               ; preds = %1
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @WM831X_WDOG_DEBUG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %43 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @dev_warn(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.wm831x_wdt_drvdata* @devm_kzalloc(%struct.device* %47, i32 56, i32 %48)
  store %struct.wm831x_wdt_drvdata* %49, %struct.wm831x_wdt_drvdata** %8, align 8
  %50 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %8, align 8
  %51 = icmp ne %struct.wm831x_wdt_drvdata* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %217

55:                                               ; preds = %46
  %56 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %8, align 8
  %57 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %56, i32 0, i32 3
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %60 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %8, align 8
  %61 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %60, i32 0, i32 2
  store %struct.wm831x* %59, %struct.wm831x** %61, align 8
  %62 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %8, align 8
  %63 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %62, i32 0, i32 0
  store %struct.watchdog_device* %63, %struct.watchdog_device** %9, align 8
  %64 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %65 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %64, i32 0, i32 3
  store i32* @wm831x_wdt_info, i32** %65, align 8
  %66 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %67 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %66, i32 0, i32 2
  store i32* @wm831x_wdt_ops, i32** %67, align 8
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %70 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %69, i32 0, i32 1
  store %struct.device* %68, %struct.device** %70, align 8
  %71 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %72 = load i32, i32* @nowayout, align 4
  %73 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %71, i32 %72)
  %74 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %75 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %8, align 8
  %76 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %74, %struct.wm831x_wdt_drvdata* %75)
  %77 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %78 = load i32, i32* @WM831X_WATCHDOG, align 4
  %79 = call i32 @wm831x_reg_read(%struct.wm831x* %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* @WM831X_WDOG_TO_MASK, align 4
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %99, %55
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm831x_wdt_cfgs, align 8
  %86 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %85)
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm831x_wdt_cfgs, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %102

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %83

102:                                              ; preds = %97, %83
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm831x_wdt_cfgs, align 8
  %105 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %104)
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %109 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 (i32, i8*, ...) @dev_warn(i32 %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  br label %122

113:                                              ; preds = %102
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm831x_wdt_cfgs, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %121 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %113, %107
  %123 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %6, align 8
  %124 = icmp ne %struct.wm831x_pdata* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %6, align 8
  %127 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %126, i32 0, i32 0
  %128 = load %struct.wm831x_watchdog_pdata*, %struct.wm831x_watchdog_pdata** %127, align 8
  store %struct.wm831x_watchdog_pdata* %128, %struct.wm831x_watchdog_pdata** %7, align 8
  br label %130

129:                                              ; preds = %122
  store %struct.wm831x_watchdog_pdata* null, %struct.wm831x_watchdog_pdata** %7, align 8
  br label %130

130:                                              ; preds = %129, %125
  %131 = load %struct.wm831x_watchdog_pdata*, %struct.wm831x_watchdog_pdata** %7, align 8
  %132 = icmp ne %struct.wm831x_watchdog_pdata* %131, null
  br i1 %132, label %133, label %212

133:                                              ; preds = %130
  %134 = load i32, i32* @WM831X_WDOG_SECACT_MASK, align 4
  %135 = load i32, i32* @WM831X_WDOG_PRIMACT_MASK, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @WM831X_WDOG_RST_SRC, align 4
  %138 = or i32 %136, %137
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %10, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %10, align 4
  %142 = load %struct.wm831x_watchdog_pdata*, %struct.wm831x_watchdog_pdata** %7, align 8
  %143 = getelementptr inbounds %struct.wm831x_watchdog_pdata, %struct.wm831x_watchdog_pdata* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @WM831X_WDOG_PRIMACT_SHIFT, align 4
  %146 = shl i32 %144, %145
  %147 = load i32, i32* %10, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %10, align 4
  %149 = load %struct.wm831x_watchdog_pdata*, %struct.wm831x_watchdog_pdata** %7, align 8
  %150 = getelementptr inbounds %struct.wm831x_watchdog_pdata, %struct.wm831x_watchdog_pdata* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @WM831X_WDOG_SECACT_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* %10, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %10, align 4
  %156 = load %struct.wm831x_watchdog_pdata*, %struct.wm831x_watchdog_pdata** %7, align 8
  %157 = getelementptr inbounds %struct.wm831x_watchdog_pdata, %struct.wm831x_watchdog_pdata* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @WM831X_WDOG_RST_SRC_SHIFT, align 4
  %160 = shl i32 %158, %159
  %161 = load i32, i32* %10, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %10, align 4
  %163 = load %struct.wm831x_watchdog_pdata*, %struct.wm831x_watchdog_pdata** %7, align 8
  %164 = getelementptr inbounds %struct.wm831x_watchdog_pdata, %struct.wm831x_watchdog_pdata* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %192

167:                                              ; preds = %133
  %168 = load %struct.device*, %struct.device** %4, align 8
  %169 = load %struct.wm831x_watchdog_pdata*, %struct.wm831x_watchdog_pdata** %7, align 8
  %170 = getelementptr inbounds %struct.wm831x_watchdog_pdata, %struct.wm831x_watchdog_pdata* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %173 = call i32 @devm_gpio_request_one(%struct.device* %168, i64 %171, i32 %172, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %11, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %167
  %177 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %178 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @dev_err(i32 %179, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* %11, align 4
  store i32 %182, i32* %2, align 4
  br label %217

183:                                              ; preds = %167
  %184 = load %struct.wm831x_watchdog_pdata*, %struct.wm831x_watchdog_pdata** %7, align 8
  %185 = getelementptr inbounds %struct.wm831x_watchdog_pdata, %struct.wm831x_watchdog_pdata* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %8, align 8
  %188 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %187, i32 0, i32 1
  store i64 %186, i64* %188, align 8
  %189 = load i32, i32* @WM831X_WDOG_RST_SRC, align 4
  %190 = load i32, i32* %10, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %10, align 4
  br label %192

192:                                              ; preds = %183, %133
  %193 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %194 = call i32 @wm831x_reg_unlock(%struct.wm831x* %193)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %199 = load i32, i32* @WM831X_WATCHDOG, align 4
  %200 = load i32, i32* %10, align 4
  %201 = call i32 @wm831x_reg_write(%struct.wm831x* %198, i32 %199, i32 %200)
  store i32 %201, i32* %11, align 4
  %202 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %203 = call i32 @wm831x_reg_lock(%struct.wm831x* %202)
  br label %211

204:                                              ; preds = %192
  %205 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %206 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %11, align 4
  %209 = call i32 @dev_err(i32 %207, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* %11, align 4
  store i32 %210, i32* %2, align 4
  br label %217

211:                                              ; preds = %197
  br label %212

212:                                              ; preds = %211, %130
  %213 = load %struct.device*, %struct.device** %4, align 8
  %214 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %8, align 8
  %215 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %214, i32 0, i32 0
  %216 = call i32 @devm_watchdog_register_device(%struct.device* %213, %struct.watchdog_device* %215)
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %212, %204, %176, %52, %28
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm831x_pdata* @dev_get_platdata(i32) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local %struct.wm831x_wdt_drvdata* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.wm831x_wdt_drvdata*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i64, i32, i8*) #1

declare dso_local i32 @wm831x_reg_unlock(%struct.wm831x*) #1

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i32, i32) #1

declare dso_local i32 @wm831x_reg_lock(%struct.wm831x*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
