; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i64 }
%struct.sti_pwm_chip = type { i32, i32, %struct.pwm_device*, i32, i32, i32, i32, i32, %struct.device*, %struct.sti_pwm_compat_data* }
%struct.device = type { i32 }
%struct.sti_pwm_compat_data = type { i32 }

@PWM_PRESCALE_LOW_MASK = common dso_local global i32 0, align 4
@PWM_PRESCALE_HIGH_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"prescale:%u, period:%i, duty:%i, value:%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @sti_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sti_pwm_chip*, align 8
  %11 = alloca %struct.sti_pwm_compat_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.pwm_device*, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %20 = call %struct.sti_pwm_chip* @to_sti_pwmchip(%struct.pwm_chip* %19)
  store %struct.sti_pwm_chip* %20, %struct.sti_pwm_chip** %10, align 8
  %21 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %22 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %21, i32 0, i32 9
  %23 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %22, align 8
  store %struct.sti_pwm_compat_data* %23, %struct.sti_pwm_compat_data** %11, align 8
  store i32 0, i32* %14, align 4
  %24 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %25 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %24, i32 0, i32 2
  %26 = load %struct.pwm_device*, %struct.pwm_device** %25, align 8
  store %struct.pwm_device* %26, %struct.pwm_device** %15, align 8
  %27 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %28 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %27, i32 0, i32 8
  %29 = load %struct.device*, %struct.device** %28, align 8
  store %struct.device* %29, %struct.device** %16, align 8
  store i32 0, i32* %17, align 4
  %30 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %31 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @hweight_long(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.pwm_device*, %struct.pwm_device** %15, align 8
  %39 = call i32 @pwm_get_period(%struct.pwm_device* %38)
  %40 = icmp eq i32 %37, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %17, align 4
  br label %42

42:                                               ; preds = %36, %4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %50 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.pwm_device*, %struct.pwm_device** %15, align 8
  %53 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %76, label %56

56:                                               ; preds = %48, %45
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %61 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.pwm_device*, %struct.pwm_device** %15, align 8
  %64 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67, %59, %56
  %71 = load i32, i32* %12, align 4
  %72 = icmp ugt i32 %71, 1
  br i1 %72, label %73, label %170

73:                                               ; preds = %70
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %170

76:                                               ; preds = %73, %67, %48, %42
  %77 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %78 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @clk_enable(i32 %79)
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %18, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %18, align 4
  store i32 %84, i32* %5, align 4
  br label %184

85:                                               ; preds = %76
  %86 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %87 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @clk_enable(i32 %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* %18, align 4
  store i32 %93, i32* %5, align 4
  br label %184

94:                                               ; preds = %85
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %130, label %97

97:                                               ; preds = %94
  %98 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @sti_pwm_get_prescale(%struct.sti_pwm_chip* %98, i32 %99, i32* %14)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %174

104:                                              ; preds = %97
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @PWM_PRESCALE_LOW_MASK, align 4
  %107 = and i32 %105, %106
  store i32 %107, i32* %13, align 4
  %108 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %109 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @regmap_field_write(i32 %110, i32 %111)
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  br label %174

116:                                              ; preds = %104
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @PWM_PRESCALE_HIGH_MASK, align 4
  %119 = and i32 %117, %118
  %120 = lshr i32 %119, 4
  store i32 %120, i32* %13, align 4
  %121 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %122 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @regmap_field_write(i32 %123, i32 %124)
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %174

129:                                              ; preds = %116
  br label %130

130:                                              ; preds = %129, %94
  %131 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %11, align 8
  %132 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %8, align 4
  %135 = mul nsw i32 %133, %134
  %136 = load i32, i32* %9, align 4
  %137 = sdiv i32 %135, %136
  store i32 %137, i32* %13, align 4
  %138 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %139 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %142 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @PWM_OUT_VAL(i64 %143)
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @regmap_write(i32 %140, i32 %144, i32 %145)
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %130
  br label %174

150:                                              ; preds = %130
  %151 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %152 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @regmap_field_write(i32 %153, i32 0)
  store i32 %154, i32* %18, align 4
  %155 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %156 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %159 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %158, i32 0, i32 3
  %160 = call i32 @set_bit(i64 %157, i32* %159)
  %161 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %162 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %163 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %162, i32 0, i32 2
  store %struct.pwm_device* %161, %struct.pwm_device** %163, align 8
  %164 = load %struct.device*, %struct.device** %16, align 8
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @dev_dbg(%struct.device* %164, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %165, i32 %166, i32 %167, i32 %168)
  br label %173

170:                                              ; preds = %73, %70
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %5, align 4
  br label %184

173:                                              ; preds = %150
  br label %174

174:                                              ; preds = %173, %149, %128, %115, %103
  %175 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %176 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @clk_disable(i32 %177)
  %179 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %180 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @clk_disable(i32 %181)
  %183 = load i32, i32* %18, align 4
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %174, %170, %92, %83
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local %struct.sti_pwm_chip* @to_sti_pwmchip(%struct.pwm_chip*) #1

declare dso_local i32 @hweight_long(i32) #1

declare dso_local i32 @pwm_get_period(%struct.pwm_device*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @sti_pwm_get_prescale(%struct.sti_pwm_chip*, i32, i32*) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @PWM_OUT_VAL(i64) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
