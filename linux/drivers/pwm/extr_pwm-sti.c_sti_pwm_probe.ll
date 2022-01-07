; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.sti_pwm_compat_data = type { i32, i32, i32, i64, i32 }
%struct.sti_pwm_chip = type { %struct.TYPE_2__, i8*, i8*, %struct.sti_pwm_compat_data*, i32, i64, %struct.device*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32*, i64, i32*, %struct.device* }
%struct.resource = type { i32 }
%struct.sti_cpt_ddata = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@sti_pwm_regmap_config = common dso_local global i32 0, align 4
@sti_pwm_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to request IRQ\0A\00", align 1
@sti_pwm_regfields = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to get PWM clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to prepare clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to get PWM capture clock\0A\00", align 1
@sti_pwm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sti_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sti_pwm_compat_data*, align 8
  %6 = alloca %struct.sti_pwm_chip*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sti_cpt_ddata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @devm_kzalloc(%struct.device* %14, i32 104, i32 %15)
  %17 = bitcast i8* %16 to %struct.sti_pwm_chip*
  store %struct.sti_pwm_chip* %17, %struct.sti_pwm_chip** %6, align 8
  %18 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %19 = icmp ne %struct.sti_pwm_chip* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %271

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kzalloc(%struct.device* %24, i32 32, i32 %25)
  %27 = bitcast i8* %26 to %struct.sti_pwm_compat_data*
  store %struct.sti_pwm_compat_data* %27, %struct.sti_pwm_compat_data** %5, align 8
  %28 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %5, align 8
  %29 = icmp ne %struct.sti_pwm_compat_data* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %271

33:                                               ; preds = %23
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load i32, i32* @IORESOURCE_MEM, align 4
  %36 = call %struct.resource* @platform_get_resource(%struct.platform_device* %34, i32 %35, i32 0)
  store %struct.resource* %36, %struct.resource** %7, align 8
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.resource*, %struct.resource** %7, align 8
  %39 = call i8* @devm_ioremap_resource(%struct.device* %37, %struct.resource* %38)
  %40 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %41 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %40, i32 0, i32 8
  store i8* %39, i8** %41, align 8
  %42 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %43 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %42, i32 0, i32 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %33
  %48 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %49 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %48, i32 0, i32 8
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %2, align 4
  br label %271

52:                                               ; preds = %33
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %55 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %54, i32 0, i32 8
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @devm_regmap_init_mmio(%struct.device* %53, i8* %56, i32* @sti_pwm_regmap_config)
  %58 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %59 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %61 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %60, i32 0, i32 7
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %67 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %66, i32 0, i32 7
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PTR_ERR(i8* %68)
  store i32 %69, i32* %2, align 4
  br label %271

70:                                               ; preds = %52
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = call i32 @platform_get_irq(%struct.platform_device* %71, i32 0)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %2, align 4
  br label %271

77:                                               ; preds = %70
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @sti_pwm_interrupt, align 4
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %86 = call i32 @devm_request_irq(%struct.device* %79, i32 %80, i32 %81, i32 0, i32 %84, %struct.sti_pwm_chip* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %77
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %2, align 4
  br label %271

94:                                               ; preds = %77
  %95 = load i32, i32* @sti_pwm_regfields, align 4
  %96 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %5, align 8
  %97 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %5, align 8
  %99 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %98, i32 0, i32 0
  store i32 255, i32* %99, align 8
  %100 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %5, align 8
  %101 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %100, i32 0, i32 1
  store i32 255, i32* %101, align 4
  %102 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %5, align 8
  %103 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %5, align 8
  %105 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %104, i32 0, i32 2
  store i32 0, i32* %105, align 8
  %106 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %5, align 8
  %107 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %108 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %107, i32 0, i32 3
  store %struct.sti_pwm_compat_data* %106, %struct.sti_pwm_compat_data** %108, align 8
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %111 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %110, i32 0, i32 6
  store %struct.device* %109, %struct.device** %111, align 8
  %112 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %113 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %112, i32 0, i32 5
  store i64 0, i64* %113, align 8
  %114 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %115 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %114, i32 0, i32 4
  %116 = call i32 @mutex_init(i32* %115)
  %117 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %118 = call i32 @sti_pwm_probe_dt(%struct.sti_pwm_chip* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %94
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %2, align 4
  br label %271

123:                                              ; preds = %94
  %124 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %5, align 8
  %125 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  br label %160

129:                                              ; preds = %123
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = getelementptr inbounds %struct.device, %struct.device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @of_clk_get_by_name(i32 %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %134 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %135 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %137 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @IS_ERR(i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %129
  %142 = load %struct.device*, %struct.device** %4, align 8
  %143 = call i32 @dev_err(%struct.device* %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %144 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %145 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @PTR_ERR(i8* %146)
  store i32 %147, i32* %2, align 4
  br label %271

148:                                              ; preds = %129
  %149 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %150 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @clk_prepare(i8* %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load %struct.device*, %struct.device** %4, align 8
  %157 = call i32 @dev_err(%struct.device* %156, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %2, align 4
  br label %271

159:                                              ; preds = %148
  br label %160

160:                                              ; preds = %159, %128
  %161 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %5, align 8
  %162 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  br label %197

166:                                              ; preds = %160
  %167 = load %struct.device*, %struct.device** %4, align 8
  %168 = getelementptr inbounds %struct.device, %struct.device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @of_clk_get_by_name(i32 %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %171 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %172 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %171, i32 0, i32 1
  store i8* %170, i8** %172, align 8
  %173 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %174 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = call i64 @IS_ERR(i8* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %166
  %179 = load %struct.device*, %struct.device** %4, align 8
  %180 = call i32 @dev_err(%struct.device* %179, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %181 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %182 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @PTR_ERR(i8* %183)
  store i32 %184, i32* %2, align 4
  br label %271

185:                                              ; preds = %166
  %186 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %187 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @clk_prepare(i8* %188)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = load %struct.device*, %struct.device** %4, align 8
  %194 = call i32 @dev_err(%struct.device* %193, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %2, align 4
  br label %271

196:                                              ; preds = %185
  br label %197

197:                                              ; preds = %196, %165
  %198 = load %struct.device*, %struct.device** %4, align 8
  %199 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %200 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 4
  store %struct.device* %198, %struct.device** %201, align 8
  %202 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %203 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 3
  store i32* @sti_pwm_ops, i32** %204, align 8
  %205 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %206 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  store i32 -1, i32* %207, align 8
  %208 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %209 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %208, i32 0, i32 3
  %210 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %209, align 8
  %211 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %214 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 2
  store i64 %212, i64* %215, align 8
  %216 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %217 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %216, i32 0, i32 0
  %218 = call i32 @pwmchip_add(%struct.TYPE_2__* %217)
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* %10, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %197
  %222 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %223 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %222, i32 0, i32 2
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @clk_unprepare(i8* %224)
  %226 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %227 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @clk_unprepare(i8* %228)
  %230 = load i32, i32* %10, align 4
  store i32 %230, i32* %2, align 4
  br label %271

231:                                              ; preds = %197
  store i32 0, i32* %8, align 4
  br label %232

232:                                              ; preds = %264, %231
  %233 = load i32, i32* %8, align 4
  %234 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %5, align 8
  %235 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp ult i32 %233, %236
  br i1 %237, label %238, label %267

238:                                              ; preds = %232
  %239 = load %struct.device*, %struct.device** %4, align 8
  %240 = load i32, i32* @GFP_KERNEL, align 4
  %241 = call i8* @devm_kzalloc(%struct.device* %239, i32 8, i32 %240)
  %242 = bitcast i8* %241 to %struct.sti_cpt_ddata*
  store %struct.sti_cpt_ddata* %242, %struct.sti_cpt_ddata** %11, align 8
  %243 = load %struct.sti_cpt_ddata*, %struct.sti_cpt_ddata** %11, align 8
  %244 = icmp ne %struct.sti_cpt_ddata* %243, null
  br i1 %244, label %248, label %245

245:                                              ; preds = %238
  %246 = load i32, i32* @ENOMEM, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %2, align 4
  br label %271

248:                                              ; preds = %238
  %249 = load %struct.sti_cpt_ddata*, %struct.sti_cpt_ddata** %11, align 8
  %250 = getelementptr inbounds %struct.sti_cpt_ddata, %struct.sti_cpt_ddata* %249, i32 0, i32 1
  %251 = call i32 @init_waitqueue_head(i32* %250)
  %252 = load %struct.sti_cpt_ddata*, %struct.sti_cpt_ddata** %11, align 8
  %253 = getelementptr inbounds %struct.sti_cpt_ddata, %struct.sti_cpt_ddata* %252, i32 0, i32 0
  %254 = call i32 @mutex_init(i32* %253)
  %255 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %256 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load %struct.sti_cpt_ddata*, %struct.sti_cpt_ddata** %11, align 8
  %263 = call i32 @pwm_set_chip_data(i32* %261, %struct.sti_cpt_ddata* %262)
  br label %264

264:                                              ; preds = %248
  %265 = load i32, i32* %8, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %8, align 4
  br label %232

267:                                              ; preds = %232
  %268 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %269 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %6, align 8
  %270 = call i32 @platform_set_drvdata(%struct.platform_device* %268, %struct.sti_pwm_chip* %269)
  store i32 0, i32* %2, align 4
  br label %271

271:                                              ; preds = %267, %245, %221, %192, %178, %155, %141, %121, %89, %75, %65, %47, %30, %20
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_regmap_init_mmio(%struct.device*, i8*, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.sti_pwm_chip*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sti_pwm_probe_dt(%struct.sti_pwm_chip*) #1

declare dso_local i8* @of_clk_get_by_name(i32, i8*) #1

declare dso_local i32 @clk_prepare(i8*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @clk_unprepare(i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @pwm_set_chip_data(i32*, %struct.sti_cpt_ddata*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sti_pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
