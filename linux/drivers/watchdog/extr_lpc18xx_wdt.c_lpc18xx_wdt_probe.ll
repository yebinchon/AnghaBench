; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_lpc18xx_wdt.c_lpc18xx_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_lpc18xx_wdt.c_lpc18xx_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.lpc18xx_wdt_dev = type { i32, %struct.TYPE_7__, i32, i32, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, %struct.device*, i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get the reg clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"wdtclk\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to get the wdt clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"could not prepare or enable sys clock\0A\00", align 1
@lpc18xx_clk_disable_unprepare = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"could not prepare or enable wdt clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to get clock rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@lpc18xx_wdt_info = common dso_local global i32 0, align 4
@lpc18xx_wdt_ops = common dso_local global i32 0, align 4
@LPC18XX_WDT_TC_MIN = common dso_local global i32 0, align 4
@LPC18XX_WDT_CLK_DIV = common dso_local global i32 0, align 4
@LPC18XX_WDT_TC_MAX = common dso_local global i32 0, align 4
@LPC18XX_WDT_DEF_TIMEOUT = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@lpc18xx_wdt_timer_feed = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc18xx_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpc18xx_wdt_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.lpc18xx_wdt_dev* @devm_kzalloc(%struct.device* %9, i32 80, i32 %10)
  store %struct.lpc18xx_wdt_dev* %11, %struct.lpc18xx_wdt_dev** %4, align 8
  %12 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %13 = icmp ne %struct.lpc18xx_wdt_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %201

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %18, i32 0)
  %20 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %21 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %23 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %22, i32 0, i32 6
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @IS_ERR(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %29 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %28, i32 0, i32 6
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @PTR_ERR(i8* %30)
  store i32 %31, i32* %2, align 4
  br label %201

32:                                               ; preds = %17
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i8* @devm_clk_get(%struct.device* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %36 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %38 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %37, i32 0, i32 5
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %46 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %45, i32 0, i32 5
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @PTR_ERR(i8* %47)
  store i32 %48, i32* %2, align 4
  br label %201

49:                                               ; preds = %32
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i8* @devm_clk_get(%struct.device* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %53 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %55 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %54, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @IS_ERR(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %63 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %62, i32 0, i32 4
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %2, align 4
  br label %201

66:                                               ; preds = %49
  %67 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %68 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @clk_prepare_enable(i8* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %201

77:                                               ; preds = %66
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = load i32, i32* @lpc18xx_clk_disable_unprepare, align 4
  %80 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %81 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %80, i32 0, i32 5
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @devm_add_action_or_reset(%struct.device* %78, i32 %79, i8* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %201

88:                                               ; preds = %77
  %89 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %90 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %89, i32 0, i32 4
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @clk_prepare_enable(i8* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %201

99:                                               ; preds = %88
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = load i32, i32* @lpc18xx_clk_disable_unprepare, align 4
  %102 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %103 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %102, i32 0, i32 4
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @devm_add_action_or_reset(%struct.device* %100, i32 %101, i8* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %201

110:                                              ; preds = %99
  %111 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %112 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %111, i32 0, i32 4
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @clk_get_rate(i8* %113)
  %115 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %116 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %118 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %110
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %201

126:                                              ; preds = %110
  %127 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %128 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 5
  store i32* @lpc18xx_wdt_info, i32** %129, align 8
  %130 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %131 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 4
  store i32* @lpc18xx_wdt_ops, i32** %132, align 8
  %133 = load i32, i32* @LPC18XX_WDT_TC_MIN, align 4
  %134 = load i32, i32* @LPC18XX_WDT_CLK_DIV, align 4
  %135 = mul nsw i32 %133, %134
  %136 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %137 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @DIV_ROUND_UP(i32 %135, i32 %138)
  %140 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %141 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* @LPC18XX_WDT_TC_MAX, align 4
  %144 = load i32, i32* @LPC18XX_WDT_CLK_DIV, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %147 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sdiv i32 %145, %148
  %150 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %151 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  %153 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %154 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @LPC18XX_WDT_DEF_TIMEOUT, align 4
  %158 = call i32 @min(i32 %156, i32 %157)
  %159 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %160 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  store i32 %158, i32* %161, align 8
  %162 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %163 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %162, i32 0, i32 3
  %164 = call i32 @spin_lock_init(i32* %163)
  %165 = load %struct.device*, %struct.device** %5, align 8
  %166 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %167 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  store %struct.device* %165, %struct.device** %168, align 8
  %169 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %170 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %169, i32 0, i32 1
  %171 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %172 = call i32 @watchdog_set_drvdata(%struct.TYPE_7__* %170, %struct.lpc18xx_wdt_dev* %171)
  %173 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %174 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %173, i32 0, i32 1
  %175 = load i32, i32* @heartbeat, align 4
  %176 = load %struct.device*, %struct.device** %5, align 8
  %177 = call i32 @watchdog_init_timeout(%struct.TYPE_7__* %174, i32 %175, %struct.device* %176)
  %178 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %179 = call i32 @__lpc18xx_wdt_set_timeout(%struct.lpc18xx_wdt_dev* %178)
  %180 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %181 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %180, i32 0, i32 2
  %182 = load i32, i32* @lpc18xx_wdt_timer_feed, align 4
  %183 = call i32 @timer_setup(i32* %181, i32 %182, i32 0)
  %184 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %185 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %184, i32 0, i32 1
  %186 = load i32, i32* @nowayout, align 4
  %187 = call i32 @watchdog_set_nowayout(%struct.TYPE_7__* %185, i32 %186)
  %188 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %189 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %188, i32 0, i32 1
  %190 = call i32 @watchdog_set_restart_priority(%struct.TYPE_7__* %189, i32 128)
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %193 = call i32 @platform_set_drvdata(%struct.platform_device* %191, %struct.lpc18xx_wdt_dev* %192)
  %194 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %195 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %194, i32 0, i32 1
  %196 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_7__* %195)
  %197 = load %struct.device*, %struct.device** %5, align 8
  %198 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %4, align 8
  %199 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %198, i32 0, i32 1
  %200 = call i32 @devm_watchdog_register_device(%struct.device* %197, %struct.TYPE_7__* %199)
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %126, %121, %108, %95, %86, %73, %59, %42, %27, %14
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.lpc18xx_wdt_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, i8*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_7__*, %struct.lpc18xx_wdt_dev*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_7__*, i32, %struct.device*) #1

declare dso_local i32 @__lpc18xx_wdt_set_timeout(%struct.lpc18xx_wdt_dev*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc18xx_wdt_dev*) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_7__*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
