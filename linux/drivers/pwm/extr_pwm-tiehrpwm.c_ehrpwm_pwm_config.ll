; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiehrpwm.c_ehrpwm_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiehrpwm.c_ehrpwm_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.ehrpwm_pwm_chip = type { i64, i32*, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@NUM_PWM_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"period value conflicts with channel %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PERIOD_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Unsupported values\0A\00", align 1
@TBCTL = common dso_local global i32 0, align 4
@TBCTL_CLKDIV_MASK = common dso_local global i32 0, align 4
@TBCTL_PRDLD_MASK = common dso_local global i32 0, align 4
@TBCTL_PRDLD_SHDW = common dso_local global i32 0, align 4
@TBPRD = common dso_local global i32 0, align 4
@TBCTL_CTRMODE_MASK = common dso_local global i32 0, align 4
@TBCTL_CTRMODE_UP = common dso_local global i32 0, align 4
@CMPB = common dso_local global i32 0, align 4
@CMPA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @ehrpwm_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehrpwm_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ehrpwm_pwm_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %19 = call %struct.ehrpwm_pwm_chip* @to_ehrpwm_pwm_chip(%struct.pwm_chip* %18)
  store %struct.ehrpwm_pwm_chip* %19, %struct.ehrpwm_pwm_chip** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @NSEC_PER_SEC, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @ERANGE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %177

26:                                               ; preds = %4
  %27 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %10, align 8
  %28 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %17, align 8
  %30 = load i64, i64* %17, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %30, %32
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %17, align 8
  %35 = load i32, i32* @NSEC_PER_SEC, align 4
  %36 = call i32 @do_div(i64 %34, i32 %35)
  %37 = load i64, i64* %17, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %55

42:                                               ; preds = %26
  %43 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %10, align 8
  %44 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %17, align 8
  %46 = load i64, i64* %17, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %46, %48
  store i64 %49, i64* %17, align 8
  %50 = load i64, i64* %17, align 8
  %51 = load i32, i32* @NSEC_PER_SEC, align 4
  %52 = call i32 @do_div(i64 %50, i32 %51)
  %53 = load i64, i64* %17, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %42, %41
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %95, %55
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @NUM_PWM_CHANNEL, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %98

60:                                               ; preds = %56
  %61 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %10, align 8
  %62 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %60
  %70 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %10, align 8
  %71 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %69
  %80 = load i32, i32* %15, align 4
  %81 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %82 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %95

86:                                               ; preds = %79
  %87 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %88 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 (i32, i8*, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %177

94:                                               ; preds = %69, %60
  br label %95

95:                                               ; preds = %94, %85
  %96 = load i32, i32* %15, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %56

98:                                               ; preds = %56
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %10, align 8
  %101 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %104 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  store i32 %99, i32* %107, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @PERIOD_MAX, align 4
  %110 = sdiv i32 %108, %109
  %111 = call i64 @set_prescale_div(i32 %110, i32* %13, i32* %14)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %98
  %114 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %115 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @dev_err(i32 %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %177

120:                                              ; preds = %98
  %121 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %122 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @pm_runtime_get_sync(i32 %123)
  %125 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %10, align 8
  %126 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @TBCTL, align 4
  %129 = load i32, i32* @TBCTL_CLKDIV_MASK, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @ehrpwm_modify(i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %13, align 4
  %134 = sdiv i32 %132, %133
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %13, align 4
  %137 = sdiv i32 %135, %136
  store i32 %137, i32* %12, align 4
  %138 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %10, align 8
  %139 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @TBCTL, align 4
  %142 = load i32, i32* @TBCTL_PRDLD_MASK, align 4
  %143 = load i32, i32* @TBCTL_PRDLD_SHDW, align 4
  %144 = call i32 @ehrpwm_modify(i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %10, align 8
  %146 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @TBPRD, align 4
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @ehrpwm_write(i32 %147, i32 %148, i32 %149)
  %151 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %10, align 8
  %152 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @TBCTL, align 4
  %155 = load i32, i32* @TBCTL_CTRMODE_MASK, align 4
  %156 = load i32, i32* @TBCTL_CTRMODE_UP, align 4
  %157 = call i32 @ehrpwm_modify(i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %159 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %164

162:                                              ; preds = %120
  %163 = load i32, i32* @CMPB, align 4
  store i32 %163, i32* %16, align 4
  br label %166

164:                                              ; preds = %120
  %165 = load i32, i32* @CMPA, align 4
  store i32 %165, i32* %16, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %10, align 8
  %168 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @ehrpwm_write(i32 %169, i32 %170, i32 %171)
  %173 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %174 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @pm_runtime_put_sync(i32 %175)
  store i32 0, i32* %5, align 4
  br label %177

177:                                              ; preds = %166, %113, %86, %23
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local %struct.ehrpwm_pwm_chip* @to_ehrpwm_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @set_prescale_div(i32, i32*, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @ehrpwm_modify(i32, i32, i32, i32) #1

declare dso_local i32 @ehrpwm_write(i32, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
