; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.resource = type { i32 }
%struct.sam9_rtc = type { i32, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32* }
%struct.of_phandle_args = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"atmel,rtt-rtc-time-reg\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to retrieve gpbr regmap, aborting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not enable slow clock\0A\00", align 1
@AT91_RTT_RTPRES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Invalid slow clock rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MR = common dso_local global i32 0, align 4
@AT91_RTT_RTTRST = common dso_local global i32 0, align 4
@AT91_RTT_ALMIEN = common dso_local global i32 0, align 4
@AT91_RTT_RTTINCIEN = common dso_local global i32 0, align 4
@at91_rtc_ops = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@at91_rtc_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_COND_SUSPEND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"can't share IRQ %d?\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%s: SET TIME!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @at91_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.sam9_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.of_phandle_args, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call i32 @platform_get_irq(%struct.platform_device* %11, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %245

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sam9_rtc* @devm_kzalloc(%struct.TYPE_22__* %19, i32 56, i32 %20)
  store %struct.sam9_rtc* %21, %struct.sam9_rtc** %5, align 8
  %22 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %23 = icmp ne %struct.sam9_rtc* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %245

27:                                               ; preds = %17
  %28 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %29 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %28, i32 0, i32 6
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %33 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @device_can_wakeup(%struct.TYPE_22__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @device_init_wakeup(%struct.TYPE_22__* %40, i32 1)
  br label %42

42:                                               ; preds = %38, %27
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %45 = call i32 @platform_set_drvdata(%struct.platform_device* %43, %struct.sam9_rtc* %44)
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load i32, i32* @IORESOURCE_MEM, align 4
  %48 = call %struct.resource* @platform_get_resource(%struct.platform_device* %46, i32 %47, i32 0)
  store %struct.resource* %48, %struct.resource** %4, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.resource*, %struct.resource** %4, align 8
  %52 = call %struct.TYPE_21__* @devm_ioremap_resource(%struct.TYPE_22__* %50, %struct.resource* %51)
  %53 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %54 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %53, i32 0, i32 5
  store %struct.TYPE_21__* %52, %struct.TYPE_21__** %54, align 8
  %55 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %56 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %55, i32 0, i32 5
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = call i64 @IS_ERR(%struct.TYPE_21__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %42
  %61 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %62 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %61, i32 0, i32 5
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %62, align 8
  %64 = call i32 @PTR_ERR(%struct.TYPE_21__* %63)
  store i32 %64, i32* %2, align 4
  br label %245

65:                                               ; preds = %42
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @of_parse_phandle_with_fixed_args(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 1, i32 0, %struct.of_phandle_args* %10)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %245

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.TYPE_21__* @syscon_node_to_regmap(i32 %77)
  %79 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %80 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %79, i32 0, i32 3
  store %struct.TYPE_21__* %78, %struct.TYPE_21__** %80, align 8
  %81 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %86 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %88 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %87, i32 0, i32 3
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %88, align 8
  %90 = call i64 @IS_ERR(%struct.TYPE_21__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %75
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @dev_err(%struct.TYPE_22__* %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %245

98:                                               ; preds = %75
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call %struct.TYPE_21__* @devm_clk_get(%struct.TYPE_22__* %100, i32* null)
  %102 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %103 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %102, i32 0, i32 1
  store %struct.TYPE_21__* %101, %struct.TYPE_21__** %103, align 8
  %104 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %105 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %104, i32 0, i32 1
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  %107 = call i64 @IS_ERR(%struct.TYPE_21__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %98
  %110 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %111 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %110, i32 0, i32 1
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = call i32 @PTR_ERR(%struct.TYPE_21__* %112)
  store i32 %113, i32* %2, align 4
  br label %245

114:                                              ; preds = %98
  %115 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %116 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %115, i32 0, i32 1
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = call i32 @clk_prepare_enable(%struct.TYPE_21__* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 @dev_err(%struct.TYPE_22__* %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %245

126:                                              ; preds = %114
  %127 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %128 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %127, i32 0, i32 1
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = call i32 @clk_get_rate(%struct.TYPE_21__* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @AT91_RTT_RTPRES, align 4
  %136 = icmp ugt i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %133, %126
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i32 @dev_err(%struct.TYPE_22__* %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %6, align 4
  br label %239

143:                                              ; preds = %133
  %144 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %145 = load i32, i32* @MR, align 4
  %146 = call i32 @rtt_readl(%struct.sam9_rtc* %144, i32 %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @AT91_RTT_RTPRES, align 4
  %149 = and i32 %147, %148
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %143
  %153 = load i32, i32* @AT91_RTT_RTTRST, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* @AT91_RTT_RTPRES, align 4
  %156 = and i32 %154, %155
  %157 = or i32 %153, %156
  store i32 %157, i32* %8, align 4
  %158 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %159 = call i32 @gpbr_writel(%struct.sam9_rtc* %158, i32 0)
  br label %160

160:                                              ; preds = %152, %143
  %161 = load i32, i32* @AT91_RTT_ALMIEN, align 4
  %162 = load i32, i32* @AT91_RTT_RTTINCIEN, align 4
  %163 = or i32 %161, %162
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %8, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %8, align 4
  %167 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %168 = load i32, i32* @MR, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @rtt_writel(%struct.sam9_rtc* %167, i32 %168, i32 %169)
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = call %struct.TYPE_21__* @devm_rtc_allocate_device(%struct.TYPE_22__* %172)
  %174 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %175 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %174, i32 0, i32 2
  store %struct.TYPE_21__* %173, %struct.TYPE_21__** %175, align 8
  %176 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %177 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %176, i32 0, i32 2
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %177, align 8
  %179 = call i64 @IS_ERR(%struct.TYPE_21__* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %160
  %182 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %183 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %182, i32 0, i32 2
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %183, align 8
  %185 = call i32 @PTR_ERR(%struct.TYPE_21__* %184)
  store i32 %185, i32* %6, align 4
  br label %239

186:                                              ; preds = %160
  %187 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %188 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %187, i32 0, i32 2
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 2
  store i32* @at91_rtc_ops, i32** %190, align 8
  %191 = load i32, i32* @U32_MAX, align 4
  %192 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %193 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %192, i32 0, i32 2
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 1
  store i32 %191, i32* %195, align 4
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %196, i32 0, i32 0
  %198 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %199 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @at91_rtc_interrupt, align 4
  %202 = load i32, i32* @IRQF_SHARED, align 4
  %203 = load i32, i32* @IRQF_COND_SUSPEND, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %206 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %205, i32 0, i32 2
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 0
  %209 = call i32 @dev_name(i32* %208)
  %210 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %211 = call i32 @devm_request_irq(%struct.TYPE_22__* %197, i32 %200, i32 %201, i32 %204, i32 %209, %struct.sam9_rtc* %210)
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %186
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %218 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @dev_dbg(%struct.TYPE_22__* %216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %219)
  br label %239

221:                                              ; preds = %186
  %222 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %223 = call i64 @gpbr_readl(%struct.sam9_rtc* %222)
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %221
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %226, i32 0, i32 0
  %228 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %229 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %228, i32 0, i32 2
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 0
  %232 = call i32 @dev_name(i32* %231)
  %233 = call i32 @dev_warn(%struct.TYPE_22__* %227, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %225, %221
  %235 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %236 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %235, i32 0, i32 2
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %236, align 8
  %238 = call i32 @rtc_register_device(%struct.TYPE_21__* %237)
  store i32 %238, i32* %2, align 4
  br label %245

239:                                              ; preds = %214, %181, %137
  %240 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %241 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %240, i32 0, i32 1
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %241, align 8
  %243 = call i32 @clk_disable_unprepare(%struct.TYPE_21__* %242)
  %244 = load i32, i32* %6, align 4
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %239, %234, %121, %109, %92, %73, %60, %24, %15
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.sam9_rtc* @devm_kzalloc(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @device_can_wakeup(%struct.TYPE_22__*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sam9_rtc*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_21__* @devm_ioremap_resource(%struct.TYPE_22__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_21__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_21__*) #1

declare dso_local i32 @of_parse_phandle_with_fixed_args(i32, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local %struct.TYPE_21__* @syscon_node_to_regmap(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_22__*, i8*) #1

declare dso_local %struct.TYPE_21__* @devm_clk_get(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.TYPE_21__*) #1

declare dso_local i32 @clk_get_rate(%struct.TYPE_21__*) #1

declare dso_local i32 @rtt_readl(%struct.sam9_rtc*, i32) #1

declare dso_local i32 @gpbr_writel(%struct.sam9_rtc*, i32) #1

declare dso_local i32 @rtt_writel(%struct.sam9_rtc*, i32, i32) #1

declare dso_local %struct.TYPE_21__* @devm_rtc_allocate_device(%struct.TYPE_22__*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_22__*, i32, i32, i32, i32, %struct.sam9_rtc*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i64 @gpbr_readl(%struct.sam9_rtc*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_21__*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
