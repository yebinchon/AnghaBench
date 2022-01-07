; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_probe_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_probe_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_pwm_chip = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, %struct.sti_pwm_compat_data*, %struct.device* }
%struct.sti_pwm_compat_data = type { %struct.reg_field*, i8*, i8* }
%struct.reg_field = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"st,pwm-num-chan\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"st,capture-num-chan\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"No channels configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PWMCLK_PRESCALE_LOW = common dso_local global i64 0, align 8
@PWMCLK_PRESCALE_HIGH = common dso_local global i64 0, align 8
@PWM_OUT_EN = common dso_local global i64 0, align 8
@PWM_CPT_EN = common dso_local global i64 0, align 8
@PWM_CPT_INT_EN = common dso_local global i64 0, align 8
@PWM_CPT_INT_STAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sti_pwm_chip*)* @sti_pwm_probe_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_pwm_probe_dt(%struct.sti_pwm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sti_pwm_chip*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.reg_field*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.sti_pwm_compat_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.sti_pwm_chip* %0, %struct.sti_pwm_chip** %3, align 8
  %10 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %11 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %10, i32 0, i32 8
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  %16 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %17 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %16, i32 0, i32 7
  %18 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %17, align 8
  store %struct.sti_pwm_compat_data* %18, %struct.sti_pwm_compat_data** %7, align 8
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = call i32 @of_property_read_u32(%struct.device_node* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %7, align 8
  %26 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = call i32 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %7, align 8
  %35 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %7, align 8
  %38 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %7, align 8
  %43 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %193

51:                                               ; preds = %41, %36
  %52 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %7, align 8
  %53 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %52, i32 0, i32 0
  %54 = load %struct.reg_field*, %struct.reg_field** %53, align 8
  store %struct.reg_field* %54, %struct.reg_field** %5, align 8
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %57 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.reg_field*, %struct.reg_field** %5, align 8
  %60 = load i64, i64* @PWMCLK_PRESCALE_LOW, align 8
  %61 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %59, i64 %60
  %62 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @devm_regmap_field_alloc(%struct.device* %55, i32 %58, i32 %63)
  %65 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %66 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %68 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %67, i32 0, i32 6
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %51
  %73 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %74 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %73, i32 0, i32 6
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @PTR_ERR(i8* %75)
  store i32 %76, i32* %2, align 4
  br label %193

77:                                               ; preds = %51
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %80 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.reg_field*, %struct.reg_field** %5, align 8
  %83 = load i64, i64* @PWMCLK_PRESCALE_HIGH, align 8
  %84 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %82, i64 %83
  %85 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @devm_regmap_field_alloc(%struct.device* %78, i32 %81, i32 %86)
  %88 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %89 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  %90 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %91 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %90, i32 0, i32 5
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @IS_ERR(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %77
  %96 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %97 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %96, i32 0, i32 5
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @PTR_ERR(i8* %98)
  store i32 %99, i32* %2, align 4
  br label %193

100:                                              ; preds = %77
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %103 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.reg_field*, %struct.reg_field** %5, align 8
  %106 = load i64, i64* @PWM_OUT_EN, align 8
  %107 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %105, i64 %106
  %108 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @devm_regmap_field_alloc(%struct.device* %101, i32 %104, i32 %109)
  %111 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %112 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %114 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @IS_ERR(i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %100
  %119 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %120 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @PTR_ERR(i8* %121)
  store i32 %122, i32* %2, align 4
  br label %193

123:                                              ; preds = %100
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %126 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.reg_field*, %struct.reg_field** %5, align 8
  %129 = load i64, i64* @PWM_CPT_EN, align 8
  %130 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %128, i64 %129
  %131 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @devm_regmap_field_alloc(%struct.device* %124, i32 %127, i32 %132)
  %134 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %135 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  %136 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %137 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @IS_ERR(i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %123
  %142 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %143 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @PTR_ERR(i8* %144)
  store i32 %145, i32* %2, align 4
  br label %193

146:                                              ; preds = %123
  %147 = load %struct.device*, %struct.device** %4, align 8
  %148 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %149 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.reg_field*, %struct.reg_field** %5, align 8
  %152 = load i64, i64* @PWM_CPT_INT_EN, align 8
  %153 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %151, i64 %152
  %154 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @devm_regmap_field_alloc(%struct.device* %147, i32 %150, i32 %155)
  %157 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %158 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %160 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %159, i32 0, i32 2
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @IS_ERR(i8* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %146
  %165 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %166 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @PTR_ERR(i8* %167)
  store i32 %168, i32* %2, align 4
  br label %193

169:                                              ; preds = %146
  %170 = load %struct.device*, %struct.device** %4, align 8
  %171 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %172 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.reg_field*, %struct.reg_field** %5, align 8
  %175 = load i64, i64* @PWM_CPT_INT_STAT, align 8
  %176 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %174, i64 %175
  %177 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @devm_regmap_field_alloc(%struct.device* %170, i32 %173, i32 %178)
  %180 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %181 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  %182 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %183 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i64 @PTR_ERR_OR_ZERO(i8* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %169
  %188 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %189 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @PTR_ERR(i8* %190)
  store i32 %191, i32* %2, align 4
  br label %193

192:                                              ; preds = %169
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %192, %187, %164, %141, %118, %95, %72, %46
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_regmap_field_alloc(%struct.device*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @PTR_ERR_OR_ZERO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
