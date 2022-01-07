; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-omap-dmtimer.c_pwm_omap_dmtimer_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-omap-dmtimer.c_pwm_omap_dmtimer_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pwm_omap_dmtimer_chip = type { i32*, %struct.omap_dm_timer_ops*, %struct.TYPE_7__, i32, %struct.platform_device* }
%struct.omap_dm_timer_ops = type { i32 (i32*)*, i32 (i32*, i32)*, i32 (i32*, i32)*, i32 (i32*)*, i32* (%struct.device_node*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_8__* }
%struct.dmtimer_platform_data = type { %struct.omap_dm_timer_ops* }

@.str = private unnamed_addr constant [10 x i8] c"ti,timers\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to find Timer pdev\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"dmtimer pdata structure NULL, deferring probe\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Incomplete dmtimer pdata structure\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"ti,timer-pwm\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Missing ti,timer-pwm capability\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"ti,prescaler\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"ti,clock-source\00", align 1
@pwm_omap_dmtimer_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"failed to register PWM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_omap_dmtimer_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_omap_dmtimer_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.pwm_omap_dmtimer_chip*, align 8
  %8 = alloca %struct.dmtimer_platform_data*, align 8
  %9 = alloca %struct.omap_dm_timer_ops*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %273

24:                                               ; preds = %1
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %25)
  store %struct.platform_device* %26, %struct.platform_device** %6, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %28 = icmp ne %struct.platform_device* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(%struct.TYPE_8__* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %141

35:                                               ; preds = %24
  %36 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call %struct.dmtimer_platform_data* @dev_get_platdata(%struct.TYPE_8__* %37)
  store %struct.dmtimer_platform_data* %38, %struct.dmtimer_platform_data** %8, align 8
  %39 = load %struct.dmtimer_platform_data*, %struct.dmtimer_platform_data** %8, align 8
  %40 = icmp ne %struct.dmtimer_platform_data* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @dev_dbg(%struct.TYPE_8__* %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EPROBE_DEFER, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %141

47:                                               ; preds = %35
  %48 = load %struct.dmtimer_platform_data*, %struct.dmtimer_platform_data** %8, align 8
  %49 = getelementptr inbounds %struct.dmtimer_platform_data, %struct.dmtimer_platform_data* %48, i32 0, i32 0
  %50 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %49, align 8
  store %struct.omap_dm_timer_ops* %50, %struct.omap_dm_timer_ops** %9, align 8
  %51 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %52 = icmp ne %struct.omap_dm_timer_ops* %51, null
  br i1 %52, label %53, label %113

53:                                               ; preds = %47
  %54 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %55 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %54, i32 0, i32 4
  %56 = load i32* (%struct.device_node*)*, i32* (%struct.device_node*)** %55, align 8
  %57 = icmp ne i32* (%struct.device_node*)* %56, null
  br i1 %57, label %58, label %113

58:                                               ; preds = %53
  %59 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %60 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %59, i32 0, i32 0
  %61 = load i32 (i32*)*, i32 (i32*)** %60, align 8
  %62 = icmp ne i32 (i32*)* %61, null
  br i1 %62, label %63, label %113

63:                                               ; preds = %58
  %64 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %65 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %64, i32 0, i32 12
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %113

68:                                               ; preds = %63
  %69 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %70 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %69, i32 0, i32 11
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %113

73:                                               ; preds = %68
  %74 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %75 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %113

78:                                               ; preds = %73
  %79 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %80 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %78
  %84 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %85 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %84, i32 0, i32 3
  %86 = load i32 (i32*)*, i32 (i32*)** %85, align 8
  %87 = icmp ne i32 (i32*)* %86, null
  br i1 %87, label %88, label %113

88:                                               ; preds = %83
  %89 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %90 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  %94 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %95 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %100 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %105 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %104, i32 0, i32 2
  %106 = load i32 (i32*, i32)*, i32 (i32*, i32)** %105, align 8
  %107 = icmp ne i32 (i32*, i32)* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %110 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %108, %103, %98, %93, %88, %83, %78, %73, %68, %63, %58, %53, %47
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 @dev_err(%struct.TYPE_8__* %115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %12, align 4
  br label %141

119:                                              ; preds = %108
  %120 = load %struct.device_node*, %struct.device_node** %5, align 8
  %121 = call i32 @of_get_property(%struct.device_node* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %119
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @dev_err(%struct.TYPE_8__* %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %127 = load i32, i32* @ENODEV, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %12, align 4
  br label %141

129:                                              ; preds = %119
  %130 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %131 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %130, i32 0, i32 4
  %132 = load i32* (%struct.device_node*)*, i32* (%struct.device_node*)** %131, align 8
  %133 = load %struct.device_node*, %struct.device_node** %5, align 8
  %134 = call i32* %132(%struct.device_node* %133)
  store i32* %134, i32** %10, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %129
  %138 = load i32, i32* @EPROBE_DEFER, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %12, align 4
  br label %141

140:                                              ; preds = %129
  br label %141

141:                                              ; preds = %140, %137, %123, %113, %41, %29
  %142 = load %struct.device_node*, %struct.device_node** %5, align 8
  %143 = call i32 @of_node_put(%struct.device_node* %142)
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* %12, align 4
  store i32 %147, i32* %2, align 4
  br label %273

148:                                              ; preds = %141
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = call %struct.pwm_omap_dmtimer_chip* @devm_kzalloc(%struct.TYPE_8__* %150, i32 64, i32 %151)
  store %struct.pwm_omap_dmtimer_chip* %152, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %153 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %154 = icmp ne %struct.pwm_omap_dmtimer_chip* %153, null
  br i1 %154, label %163, label %155

155:                                              ; preds = %148
  %156 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %157 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %156, i32 0, i32 0
  %158 = load i32 (i32*)*, i32 (i32*)** %157, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = call i32 %158(i32* %159)
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %2, align 4
  br label %273

163:                                              ; preds = %148
  %164 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %9, align 8
  %165 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %166 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %165, i32 0, i32 1
  store %struct.omap_dm_timer_ops* %164, %struct.omap_dm_timer_ops** %166, align 8
  %167 = load i32*, i32** %10, align 8
  %168 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %169 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %168, i32 0, i32 0
  store i32* %167, i32** %169, align 8
  %170 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %171 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %172 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %171, i32 0, i32 4
  store %struct.platform_device* %170, %struct.platform_device** %172, align 8
  %173 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %174 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %173, i32 0, i32 4
  %175 = load %struct.platform_device*, %struct.platform_device** %174, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = call i64 @pm_runtime_active(%struct.TYPE_8__* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %163
  %180 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %181 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %180, i32 0, i32 1
  %182 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %181, align 8
  %183 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %182, i32 0, i32 3
  %184 = load i32 (i32*)*, i32 (i32*)** %183, align 8
  %185 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %186 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 %184(i32* %187)
  br label %189

189:                                              ; preds = %179, %163
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load %struct.device_node*, %struct.device_node** %192, align 8
  %194 = call i32 @of_property_read_u32(%struct.device_node* %193, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %11)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %207, label %196

196:                                              ; preds = %189
  %197 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %198 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %197, i32 0, i32 1
  %199 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %198, align 8
  %200 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %199, i32 0, i32 2
  %201 = load i32 (i32*, i32)*, i32 (i32*, i32)** %200, align 8
  %202 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %203 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %11, align 4
  %206 = call i32 %201(i32* %204, i32 %205)
  br label %207

207:                                              ; preds = %196, %189
  %208 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %209 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load %struct.device_node*, %struct.device_node** %210, align 8
  %212 = call i32 @of_property_read_u32(%struct.device_node* %211, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32* %11)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %225, label %214

214:                                              ; preds = %207
  %215 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %216 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %215, i32 0, i32 1
  %217 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %216, align 8
  %218 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %217, i32 0, i32 1
  %219 = load i32 (i32*, i32)*, i32 (i32*, i32)** %218, align 8
  %220 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %221 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %11, align 4
  %224 = call i32 %219(i32* %222, i32 %223)
  br label %225

225:                                              ; preds = %214, %207
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %226, i32 0, i32 0
  %228 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %229 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 5
  store %struct.TYPE_8__* %227, %struct.TYPE_8__** %230, align 8
  %231 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %232 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 4
  store i32* @pwm_omap_dmtimer_ops, i32** %233, align 8
  %234 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %235 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  store i32 -1, i32* %236, align 8
  %237 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %238 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  store i32 1, i32* %239, align 4
  %240 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %241 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %242 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 3
  store i32 %240, i32* %243, align 4
  %244 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %245 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 2
  store i32 3, i32* %246, align 8
  %247 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %248 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %247, i32 0, i32 3
  %249 = call i32 @mutex_init(i32* %248)
  %250 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %251 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %250, i32 0, i32 2
  %252 = call i32 @pwmchip_add(%struct.TYPE_7__* %251)
  store i32 %252, i32* %12, align 4
  %253 = load i32, i32* %12, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %269

255:                                              ; preds = %225
  %256 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %257 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %256, i32 0, i32 0
  %258 = call i32 @dev_err(%struct.TYPE_8__* %257, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %259 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %260 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %259, i32 0, i32 1
  %261 = load %struct.omap_dm_timer_ops*, %struct.omap_dm_timer_ops** %260, align 8
  %262 = getelementptr inbounds %struct.omap_dm_timer_ops, %struct.omap_dm_timer_ops* %261, i32 0, i32 0
  %263 = load i32 (i32*)*, i32 (i32*)** %262, align 8
  %264 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %265 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = call i32 %263(i32* %266)
  %268 = load i32, i32* %12, align 4
  store i32 %268, i32* %2, align 4
  br label %273

269:                                              ; preds = %225
  %270 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %271 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %7, align 8
  %272 = call i32 @platform_set_drvdata(%struct.platform_device* %270, %struct.pwm_omap_dmtimer_chip* %271)
  store i32 0, i32* %2, align 4
  br label %273

273:                                              ; preds = %269, %255, %155, %146, %21
  %274 = load i32, i32* %2, align 4
  ret i32 %274
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local %struct.dmtimer_platform_data* @dev_get_platdata(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.pwm_omap_dmtimer_chip* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @pm_runtime_active(%struct.TYPE_8__*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_7__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pwm_omap_dmtimer_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
