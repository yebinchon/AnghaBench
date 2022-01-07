; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rockchip.c_rockchip_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rockchip.c_rockchip_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.of_device_id = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.rockchip_pwm_chip = type { i8*, i8*, %struct.TYPE_9__, %struct.TYPE_8__*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_10__* }
%struct.resource = type { i32 }

@rockchip_pwm_dt_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Can't get bus clk: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Can't get APB clk: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Can't prepare enable bus clk: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Can't prepare APB clk: %d\0A\00", align 1
@rockchip_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"pwmchip_add() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.rockchip_pwm_chip*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @rockchip_pwm_dt_ids, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.of_device_id* @of_match_device(i32 %9, %struct.TYPE_10__* %11)
  store %struct.of_device_id* %12, %struct.of_device_id** %4, align 8
  %13 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %14 = icmp ne %struct.of_device_id* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %230

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.rockchip_pwm_chip* @devm_kzalloc(%struct.TYPE_10__* %20, i32 72, i32 %21)
  store %struct.rockchip_pwm_chip* %22, %struct.rockchip_pwm_chip** %5, align 8
  %23 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %24 = icmp ne %struct.rockchip_pwm_chip* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %230

28:                                               ; preds = %18
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = call %struct.resource* @platform_get_resource(%struct.platform_device* %29, i32 %30, i32 0)
  store %struct.resource* %31, %struct.resource** %6, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = call i8* @devm_ioremap_resource(%struct.TYPE_10__* %33, %struct.resource* %34)
  %36 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %37 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %39 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %38, i32 0, i32 4
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %45 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR(i8* %46)
  store i32 %47, i32* %2, align 4
  br label %230

48:                                               ; preds = %28
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i8* @devm_clk_get(%struct.TYPE_10__* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %53 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %55 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @IS_ERR(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %48
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i8* @devm_clk_get(%struct.TYPE_10__* %61, i8* null)
  %63 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %64 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %66 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @IS_ERR(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %59
  %71 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %72 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @PTR_ERR(i8* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @EPROBE_DEFER, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @dev_err(%struct.TYPE_10__* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79, %70
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %230

86:                                               ; preds = %59
  br label %87

87:                                               ; preds = %86, %48
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @of_count_phandle_with_args(i32 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i8* @devm_clk_get(%struct.TYPE_10__* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %100 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  br label %107

101:                                              ; preds = %87
  %102 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %103 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %106 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %101, %95
  %108 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %109 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @IS_ERR(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %107
  %114 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %115 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @PTR_ERR(i8* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @EPROBE_DEFER, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %113
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @dev_err(%struct.TYPE_10__* %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %122, %113
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %230

129:                                              ; preds = %107
  %130 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %131 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @clk_prepare_enable(i8* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @dev_err(%struct.TYPE_10__* %138, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %2, align 4
  br label %230

142:                                              ; preds = %129
  %143 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %144 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @clk_prepare(i8* %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @dev_err(%struct.TYPE_10__* %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  br label %224

154:                                              ; preds = %142
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %157 = call i32 @platform_set_drvdata(%struct.platform_device* %155, %struct.rockchip_pwm_chip* %156)
  %158 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %159 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %158, i32 0, i32 0
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %162 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %161, i32 0, i32 3
  store %struct.TYPE_8__* %160, %struct.TYPE_8__** %162, align 8
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %166 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 6
  store %struct.TYPE_10__* %164, %struct.TYPE_10__** %167, align 8
  %168 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %169 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 5
  store i32* @rockchip_pwm_ops, i32** %170, align 8
  %171 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %172 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  store i32 -1, i32* %173, align 8
  %174 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %175 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  store i32 1, i32* %176, align 4
  %177 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %178 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %177, i32 0, i32 3
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %154
  %184 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %185 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %186 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 4
  store i32 %184, i32* %187, align 8
  %188 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %189 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 2
  store i32 3, i32* %190, align 8
  br label %191

191:                                              ; preds = %183, %154
  %192 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %193 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %192, i32 0, i32 2
  %194 = call i32 @pwmchip_add(%struct.TYPE_9__* %193)
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %191
  %198 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %199 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @clk_unprepare(i8* %200)
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @dev_err(%struct.TYPE_10__* %203, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %204)
  br label %219

206:                                              ; preds = %191
  %207 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %208 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @pwm_is_enabled(i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %206
  %214 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %215 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @clk_disable(i8* %216)
  br label %218

218:                                              ; preds = %213, %206
  store i32 0, i32* %2, align 4
  br label %230

219:                                              ; preds = %197
  %220 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %221 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @clk_unprepare(i8* %222)
  br label %224

224:                                              ; preds = %219, %149
  %225 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %5, align 8
  %226 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @clk_disable_unprepare(i8* %227)
  %229 = load i32, i32* %7, align 4
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %224, %218, %136, %127, %84, %43, %25, %15
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_10__*) #1

declare dso_local %struct.rockchip_pwm_chip* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @of_count_phandle_with_args(i32, i8*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_prepare(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rockchip_pwm_chip*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_9__*) #1

declare dso_local i32 @clk_unprepare(i8*) #1

declare dso_local i32 @pwm_is_enabled(i32) #1

declare dso_local i32 @clk_disable(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
