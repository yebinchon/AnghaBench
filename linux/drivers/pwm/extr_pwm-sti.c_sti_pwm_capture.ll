; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i64 }
%struct.pwm_capture = type { i64, i64 }
%struct.sti_pwm_chip = type { i32, i32, i32, i32, %struct.device*, %struct.sti_pwm_compat_data* }
%struct.device = type { i32 }
%struct.sti_pwm_compat_data = type { i64 }
%struct.sti_cpt_ddata = type { i32, i64*, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"device %u is not valid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CPT_EDGE_RISING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to enable PWM capture %u: %d\0A\00", align 1
@CPT_EDGE_DISABLED = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"internal error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_capture*, i64)* @sti_pwm_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_pwm_capture(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_capture* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca %struct.pwm_capture*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sti_pwm_chip*, align 8
  %11 = alloca %struct.sti_pwm_compat_data*, align 8
  %12 = alloca %struct.sti_cpt_ddata*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store %struct.pwm_capture* %2, %struct.pwm_capture** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %19 = call %struct.sti_pwm_chip* @to_sti_pwmchip(%struct.pwm_chip* %18)
  store %struct.sti_pwm_chip* %19, %struct.sti_pwm_chip** %10, align 8
  %20 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %21 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %20, i32 0, i32 5
  %22 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %21, align 8
  store %struct.sti_pwm_compat_data* %22, %struct.sti_pwm_compat_data** %11, align 8
  %23 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %24 = call %struct.sti_cpt_ddata* @pwm_get_chip_data(%struct.pwm_device* %23)
  store %struct.sti_cpt_ddata* %24, %struct.sti_cpt_ddata** %12, align 8
  %25 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %26 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %25, i32 0, i32 4
  %27 = load %struct.device*, %struct.device** %26, align 8
  store %struct.device* %27, %struct.device** %13, align 8
  %28 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %29 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %11, align 8
  %32 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load %struct.device*, %struct.device** %13, align 8
  %37 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %38 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %178

43:                                               ; preds = %4
  %44 = load %struct.sti_cpt_ddata*, %struct.sti_cpt_ddata** %12, align 8
  %45 = getelementptr inbounds %struct.sti_cpt_ddata, %struct.sti_cpt_ddata* %44, i32 0, i32 2
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.sti_cpt_ddata*, %struct.sti_cpt_ddata** %12, align 8
  %48 = getelementptr inbounds %struct.sti_cpt_ddata, %struct.sti_cpt_ddata* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %50 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %53 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @PWM_CPT_EDGE(i64 %54)
  %56 = load i32, i32* @CPT_EDGE_RISING, align 4
  %57 = call i32 @regmap_write(i32 %51, i32 %55, i32 %56)
  %58 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %59 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %62 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @BIT(i64 %63)
  %65 = call i32 @regmap_field_write(i32 %60, i32 %64)
  %66 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %67 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @regmap_field_write(i32 %68, i32 1)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %43
  %73 = load %struct.device*, %struct.device** %13, align 8
  %74 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %75 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %17, align 4
  %78 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %76, i32 %77)
  br label %169

79:                                               ; preds = %43
  %80 = load %struct.sti_cpt_ddata*, %struct.sti_cpt_ddata** %12, align 8
  %81 = getelementptr inbounds %struct.sti_cpt_ddata, %struct.sti_cpt_ddata* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sti_cpt_ddata*, %struct.sti_cpt_ddata** %12, align 8
  %84 = getelementptr inbounds %struct.sti_cpt_ddata, %struct.sti_cpt_ddata* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 1
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @msecs_to_jiffies(i64 %88)
  %90 = call i32 @wait_event_interruptible_timeout(i32 %82, i32 %87, i32 %89)
  store i32 %90, i32* %17, align 4
  %91 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %92 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %95 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @PWM_CPT_EDGE(i64 %96)
  %98 = load i32, i32* @CPT_EDGE_DISABLED, align 4
  %99 = call i32 @regmap_write(i32 %93, i32 %97, i32 %98)
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @ERESTARTSYS, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %79
  br label %169

105:                                              ; preds = %79
  %106 = load %struct.sti_cpt_ddata*, %struct.sti_cpt_ddata** %12, align 8
  %107 = getelementptr inbounds %struct.sti_cpt_ddata, %struct.sti_cpt_ddata* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  switch i32 %108, label %165 [
    i32 0, label %109
    i32 1, label %109
    i32 2, label %114
  ]

109:                                              ; preds = %105, %105
  %110 = load %struct.pwm_capture*, %struct.pwm_capture** %8, align 8
  %111 = getelementptr inbounds %struct.pwm_capture, %struct.pwm_capture* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load %struct.pwm_capture*, %struct.pwm_capture** %8, align 8
  %113 = getelementptr inbounds %struct.pwm_capture, %struct.pwm_capture* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  br label %168

114:                                              ; preds = %105
  %115 = load %struct.sti_cpt_ddata*, %struct.sti_cpt_ddata** %12, align 8
  %116 = getelementptr inbounds %struct.sti_cpt_ddata, %struct.sti_cpt_ddata* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.sti_cpt_ddata*, %struct.sti_cpt_ddata** %12, align 8
  %121 = getelementptr inbounds %struct.sti_cpt_ddata, %struct.sti_cpt_ddata* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = sub i64 %119, %124
  store i64 %125, i64* %15, align 8
  %126 = load %struct.sti_cpt_ddata*, %struct.sti_cpt_ddata** %12, align 8
  %127 = getelementptr inbounds %struct.sti_cpt_ddata, %struct.sti_cpt_ddata* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.sti_cpt_ddata*, %struct.sti_cpt_ddata** %12, align 8
  %132 = getelementptr inbounds %struct.sti_cpt_ddata, %struct.sti_cpt_ddata* %131, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 1
  %135 = load i64, i64* %134, align 8
  %136 = sub i64 %130, %135
  store i64 %136, i64* %16, align 8
  %137 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %138 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @clk_get_rate(i32 %139)
  store i32 %140, i32* %14, align 4
  %141 = load i64, i64* %15, align 8
  %142 = load i64, i64* %16, align 8
  %143 = add i64 %141, %142
  %144 = load i64, i64* @NSEC_PER_SEC, align 8
  %145 = mul i64 %143, %144
  %146 = load %struct.pwm_capture*, %struct.pwm_capture** %8, align 8
  %147 = getelementptr inbounds %struct.pwm_capture, %struct.pwm_capture* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load i32, i32* %14, align 4
  %149 = zext i32 %148 to i64
  %150 = load %struct.pwm_capture*, %struct.pwm_capture** %8, align 8
  %151 = getelementptr inbounds %struct.pwm_capture, %struct.pwm_capture* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = udiv i64 %152, %149
  store i64 %153, i64* %151, align 8
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* @NSEC_PER_SEC, align 8
  %156 = mul i64 %154, %155
  %157 = load %struct.pwm_capture*, %struct.pwm_capture** %8, align 8
  %158 = getelementptr inbounds %struct.pwm_capture, %struct.pwm_capture* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  %159 = load i32, i32* %14, align 4
  %160 = zext i32 %159 to i64
  %161 = load %struct.pwm_capture*, %struct.pwm_capture** %8, align 8
  %162 = getelementptr inbounds %struct.pwm_capture, %struct.pwm_capture* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = udiv i64 %163, %160
  store i64 %164, i64* %162, align 8
  br label %168

165:                                              ; preds = %105
  %166 = load %struct.device*, %struct.device** %13, align 8
  %167 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %166, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %114, %109
  br label %169

169:                                              ; preds = %168, %104, %72
  %170 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %10, align 8
  %171 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @regmap_field_write(i32 %172, i32 0)
  %174 = load %struct.sti_cpt_ddata*, %struct.sti_cpt_ddata** %12, align 8
  %175 = getelementptr inbounds %struct.sti_cpt_ddata, %struct.sti_cpt_ddata* %174, i32 0, i32 2
  %176 = call i32 @mutex_unlock(i32* %175)
  %177 = load i32, i32* %17, align 4
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %169, %35
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local %struct.sti_pwm_chip* @to_sti_pwmchip(%struct.pwm_chip*) #1

declare dso_local %struct.sti_cpt_ddata* @pwm_get_chip_data(%struct.pwm_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @PWM_CPT_EDGE(i64) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
