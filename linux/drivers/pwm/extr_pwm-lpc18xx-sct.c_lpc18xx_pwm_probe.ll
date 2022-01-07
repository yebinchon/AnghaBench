; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lpc18xx_pwm_chip = type { i32, i32, %struct.TYPE_3__, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.pwm_device*, i32, i32*, i32* }
%struct.pwm_device = type { i32 }
%struct.resource = type { i32 }
%struct.lpc18xx_pwm_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get pwm clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"could not prepare or enable pwm clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"pwm clock has no frequency\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@LPC18XX_PWM_TIMER_MAX = common dso_local global i32 0, align 4
@lpc18xx_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@LPC18XX_PWM_CONFIG = common dso_local global i32 0, align 4
@LPC18XX_PWM_CONFIG_UNIFY = common dso_local global i32 0, align 4
@LPC18XX_PWM_EVENT_PERIOD = common dso_local global i32 0, align 4
@LPC18XX_PWM_EVSTATEMSK_ALL = common dso_local global i32 0, align 4
@LPC18XX_PWM_EVCTRL_COMB_MATCH = common dso_local global i32 0, align 4
@LPC18XX_PWM_LIMIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"pwmchip_add failed: %d\0A\00", align 1
@LPC18XX_PWM_CTRL = common dso_local global i32 0, align 4
@LPC18XX_PWM_BIDIR = common dso_local global i32 0, align 4
@LPC18XX_PWM_CTRL_HALT = common dso_local global i32 0, align 4
@LPC18XX_PWM_PRE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc18xx_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpc18xx_pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpc18xx_pwm_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @devm_kzalloc(i32* %12, i32 96, i32 %13)
  %15 = bitcast i8* %14 to %struct.lpc18xx_pwm_chip*
  store %struct.lpc18xx_pwm_chip* %15, %struct.lpc18xx_pwm_chip** %4, align 8
  %16 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %17 = icmp ne %struct.lpc18xx_pwm_chip* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %258

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %25 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %6, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = call i32 @devm_ioremap_resource(i32* %30, %struct.resource* %31)
  %33 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %34 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 8
  %35 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %36 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %21
  %41 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %42 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %258

45:                                               ; preds = %21
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @devm_clk_get(i32* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %50 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %52 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %61 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %258

64:                                               ; preds = %45
  %65 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %66 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @clk_prepare_enable(i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %258

76:                                               ; preds = %64
  %77 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %78 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @clk_get_rate(i32 %79)
  %81 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %82 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  %83 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %84 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %76
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %252

93:                                               ; preds = %76
  %94 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %95 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %94, i32 0, i32 9
  %96 = call i32 @mutex_init(i32* %95)
  %97 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %98 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %97, i32 0, i32 8
  %99 = call i32 @mutex_init(i32* %98)
  %100 = load i64, i64* @NSEC_PER_SEC, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* @LPC18XX_PWM_TIMER_MAX, align 4
  %103 = mul nsw i32 %101, %102
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %106 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @do_div(i32 %104, i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %111 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i64, i64* @NSEC_PER_SEC, align 8
  %113 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %114 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @DIV_ROUND_UP(i64 %112, i32 %115)
  %117 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %118 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %117, i32 0, i32 7
  store i32 %116, i32* %118, align 4
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %122 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 6
  store i32* %120, i32** %123, align 8
  %124 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %125 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 5
  store i32* @lpc18xx_pwm_ops, i32** %126, align 8
  %127 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %128 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  store i32 -1, i32* %129, align 8
  %130 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %131 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  store i32 16, i32* %132, align 4
  %133 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %134 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %135 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 4
  store i32 %133, i32* %136, align 8
  %137 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %138 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  store i32 3, i32* %139, align 8
  %140 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %141 = load i32, i32* @LPC18XX_PWM_CONFIG, align 4
  %142 = load i32, i32* @LPC18XX_PWM_CONFIG_UNIFY, align 4
  %143 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %140, i32 %141, i32 %142)
  %144 = load i32, i32* @LPC18XX_PWM_EVENT_PERIOD, align 4
  %145 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %146 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %145, i32 0, i32 5
  %147 = call i32 @set_bit(i32 %144, i32* %146)
  %148 = load i32, i32* @LPC18XX_PWM_EVENT_PERIOD, align 4
  %149 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %150 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %152 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %153 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @LPC18XX_PWM_EVSTATEMSK(i32 %154)
  %156 = load i32, i32* @LPC18XX_PWM_EVSTATEMSK_ALL, align 4
  %157 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %151, i32 %155, i32 %156)
  %158 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %159 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @LPC18XX_PWM_EVCTRL_MATCH(i32 %160)
  %162 = load i32, i32* @LPC18XX_PWM_EVCTRL_COMB_MATCH, align 4
  %163 = or i32 %161, %162
  store i32 %163, i32* %9, align 4
  %164 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %165 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %166 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @LPC18XX_PWM_EVCTRL(i32 %167)
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %164, i32 %168, i32 %169)
  %171 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %172 = load i32, i32* @LPC18XX_PWM_LIMIT, align 4
  %173 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %174 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @BIT(i32 %175)
  %177 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %171, i32 %172, i32 %176)
  %178 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %179 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %178, i32 0, i32 2
  %180 = call i32 @pwmchip_add(%struct.TYPE_3__* %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %93
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = load i32, i32* %7, align 4
  %187 = call i32 (i32*, i8*, ...) @dev_err(i32* %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %186)
  br label %252

188:                                              ; preds = %93
  store i32 0, i32* %8, align 4
  br label %189

189:                                              ; preds = %219, %188
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %192 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp slt i32 %190, %194
  br i1 %195, label %196, label %222

196:                                              ; preds = %189
  %197 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %198 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 3
  %200 = load %struct.pwm_device*, %struct.pwm_device** %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %200, i64 %202
  store %struct.pwm_device* %203, %struct.pwm_device** %5, align 8
  %204 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %205 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* @GFP_KERNEL, align 4
  %208 = call i8* @devm_kzalloc(i32* %206, i32 4, i32 %207)
  %209 = bitcast i8* %208 to %struct.lpc18xx_pwm_data*
  store %struct.lpc18xx_pwm_data* %209, %struct.lpc18xx_pwm_data** %10, align 8
  %210 = load %struct.lpc18xx_pwm_data*, %struct.lpc18xx_pwm_data** %10, align 8
  %211 = icmp ne %struct.lpc18xx_pwm_data* %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %196
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %7, align 4
  br label %248

215:                                              ; preds = %196
  %216 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %217 = load %struct.lpc18xx_pwm_data*, %struct.lpc18xx_pwm_data** %10, align 8
  %218 = call i32 @pwm_set_chip_data(%struct.pwm_device* %216, %struct.lpc18xx_pwm_data* %217)
  br label %219

219:                                              ; preds = %215
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %189

222:                                              ; preds = %189
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %225 = call i32 @platform_set_drvdata(%struct.platform_device* %223, %struct.lpc18xx_pwm_chip* %224)
  %226 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %227 = load i32, i32* @LPC18XX_PWM_CTRL, align 4
  %228 = call i32 @lpc18xx_pwm_readl(%struct.lpc18xx_pwm_chip* %226, i32 %227)
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* @LPC18XX_PWM_BIDIR, align 4
  %230 = xor i32 %229, -1
  %231 = load i32, i32* %9, align 4
  %232 = and i32 %231, %230
  store i32 %232, i32* %9, align 4
  %233 = load i32, i32* @LPC18XX_PWM_CTRL_HALT, align 4
  %234 = xor i32 %233, -1
  %235 = load i32, i32* %9, align 4
  %236 = and i32 %235, %234
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* @LPC18XX_PWM_PRE_MASK, align 4
  %238 = xor i32 %237, -1
  %239 = load i32, i32* %9, align 4
  %240 = and i32 %239, %238
  store i32 %240, i32* %9, align 4
  %241 = call i32 @LPC18XX_PWM_PRE(i32 0)
  %242 = load i32, i32* %9, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %9, align 4
  %244 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %245 = load i32, i32* @LPC18XX_PWM_CTRL, align 4
  %246 = load i32, i32* %9, align 4
  %247 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %244, i32 %245, i32 %246)
  store i32 0, i32* %2, align 4
  br label %258

248:                                              ; preds = %212
  %249 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %250 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %249, i32 0, i32 2
  %251 = call i32 @pwmchip_remove(%struct.TYPE_3__* %250)
  br label %252

252:                                              ; preds = %248, %183, %87
  %253 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %4, align 8
  %254 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @clk_disable_unprepare(i32 %255)
  %257 = load i32, i32* %7, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %252, %222, %71, %56, %40, %18
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @LPC18XX_PWM_EVSTATEMSK(i32) #1

declare dso_local i32 @LPC18XX_PWM_EVCTRL_MATCH(i32) #1

declare dso_local i32 @LPC18XX_PWM_EVCTRL(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_3__*) #1

declare dso_local i32 @pwm_set_chip_data(%struct.pwm_device*, %struct.lpc18xx_pwm_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc18xx_pwm_chip*) #1

declare dso_local i32 @lpc18xx_pwm_readl(%struct.lpc18xx_pwm_chip*, i32) #1

declare dso_local i32 @LPC18XX_PWM_PRE(i32) #1

declare dso_local i32 @pwmchip_remove(%struct.TYPE_3__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
