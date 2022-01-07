; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-samsung.c_pwm_samsung_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-samsung.c_pwm_samsung_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i64 }
%struct.samsung_pwm_chip = type { i32, i8*, i8*, i8*, %struct.TYPE_3__, %struct.TYPE_4__, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, %struct.device* }
%struct.TYPE_4__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pwm_samsung_ops = common dso_local global i32 0, align 4
@SAMSUNG_PWM_NUM = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"no platform data specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"timers\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get timer base clk\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to enable base clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"pwm-tclk0\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"pwm-tclk1\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to register PWM chip\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"base_clk at %lu, tclk0 at %lu, tclk1 at %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_samsung_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_samsung_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.samsung_pwm_chip*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.samsung_pwm_chip* @devm_kzalloc(%struct.device* %12, i32 80, i32 %13)
  store %struct.samsung_pwm_chip* %14, %struct.samsung_pwm_chip** %5, align 8
  %15 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %16 = icmp eq %struct.samsung_pwm_chip* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %216

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %24 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  store %struct.device* %22, %struct.device** %25, align 8
  %26 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %27 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  store i32* @pwm_samsung_ops, i32** %28, align 8
  %29 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %30 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load i32, i32* @SAMSUNG_PWM_NUM, align 4
  %33 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %34 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @SAMSUNG_PWM_NUM, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = sub nsw i32 %37, 1
  %39 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %40 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @CONFIG_OF, align 4
  %42 = call i64 @IS_ENABLED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %20
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %52 = call i32 @pwm_samsung_parse_dt(%struct.samsung_pwm_chip* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %216

57:                                               ; preds = %50
  %58 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %59 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %60 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %63 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i32 3, i32* %64, align 8
  br label %85

65:                                               ; preds = %44, %20
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %216

77:                                               ; preds = %65
  %78 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %79 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %78, i32 0, i32 5
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.device, %struct.device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @memcpy(%struct.TYPE_4__* %79, i32 %83, i32 4)
  br label %85

85:                                               ; preds = %77, %57
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = load i32, i32* @IORESOURCE_MEM, align 4
  %88 = call %struct.resource* @platform_get_resource(%struct.platform_device* %86, i32 %87, i32 0)
  store %struct.resource* %88, %struct.resource** %6, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load %struct.resource*, %struct.resource** %6, align 8
  %92 = call i8* @devm_ioremap_resource(%struct.device* %90, %struct.resource* %91)
  %93 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %94 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %93, i32 0, i32 6
  store i8* %92, i8** %94, align 8
  %95 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %96 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %95, i32 0, i32 6
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @IS_ERR(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %85
  %101 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %102 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %101, i32 0, i32 6
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @PTR_ERR(i8* %103)
  store i32 %104, i32* %2, align 4
  br label %216

105:                                              ; preds = %85
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i8* @devm_clk_get(%struct.device* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %109 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %110 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %112 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @IS_ERR(i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %105
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = call i32 @dev_err(%struct.device* %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %119 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %120 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %119, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @PTR_ERR(i8* %121)
  store i32 %122, i32* %2, align 4
  br label %216

123:                                              ; preds = %105
  %124 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %125 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @clk_prepare_enable(i8* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = call i32 @dev_err(%struct.device* %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %2, align 4
  br label %216

134:                                              ; preds = %123
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %153, %134
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @SAMSUNG_PWM_NUM, align 4
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %139, label %156

139:                                              ; preds = %135
  %140 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %141 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @BIT(i32 %144)
  %146 = and i32 %143, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %139
  %149 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @pwm_samsung_set_invert(%struct.samsung_pwm_chip* %149, i32 %150, i32 1)
  br label %152

152:                                              ; preds = %148, %139
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %7, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %135

156:                                              ; preds = %135
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = call i8* @devm_clk_get(%struct.device* %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %160 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %161 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = call i8* @devm_clk_get(%struct.device* %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %165 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %166 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %169 = call i32 @platform_set_drvdata(%struct.platform_device* %167, %struct.samsung_pwm_chip* %168)
  %170 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %171 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %170, i32 0, i32 4
  %172 = call i32 @pwmchip_add(%struct.TYPE_3__* %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %156
  %176 = load %struct.device*, %struct.device** %4, align 8
  %177 = call i32 @dev_err(%struct.device* %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %178 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %179 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %178, i32 0, i32 3
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @clk_disable_unprepare(i8* %180)
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %2, align 4
  br label %216

183:                                              ; preds = %156
  %184 = load %struct.device*, %struct.device** %4, align 8
  %185 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %186 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %185, i32 0, i32 3
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @clk_get_rate(i8* %187)
  %189 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %190 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %189, i32 0, i32 2
  %191 = load i8*, i8** %190, align 8
  %192 = call i64 @IS_ERR(i8* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %183
  %195 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %196 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %195, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @clk_get_rate(i8* %197)
  br label %200

199:                                              ; preds = %183
  br label %200

200:                                              ; preds = %199, %194
  %201 = phi i32 [ %198, %194 ], [ 0, %199 ]
  %202 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %203 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = call i64 @IS_ERR(i8* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %200
  %208 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %5, align 8
  %209 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @clk_get_rate(i8* %210)
  br label %213

212:                                              ; preds = %200
  br label %213

213:                                              ; preds = %212, %207
  %214 = phi i32 [ %211, %207 ], [ 0, %212 ]
  %215 = call i32 @dev_dbg(%struct.device* %184, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %188, i32 %201, i32 %214)
  store i32 0, i32* %2, align 4
  br label %216

216:                                              ; preds = %213, %175, %130, %116, %100, %71, %55, %17
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local %struct.samsung_pwm_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @pwm_samsung_parse_dt(%struct.samsung_pwm_chip*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @pwm_samsung_set_invert(%struct.samsung_pwm_chip*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.samsung_pwm_chip*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_3__*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @clk_get_rate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
