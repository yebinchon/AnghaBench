; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-renesas-tpu.c_tpu_pwm_timer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-renesas-tpu.c_tpu_pwm_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpu_pwm_device = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"cannot enable clock\0A\00", align 1
@TPU_PIN_INACTIVE = common dso_local global i32 0, align 4
@TPU_TCRn = common dso_local global i32 0, align 4
@TPU_TCR_CCLR_TGRB = common dso_local global i32 0, align 4
@TPU_TCR_CKEG_RISING = common dso_local global i32 0, align 4
@TPU_TMDRn = common dso_local global i32 0, align 4
@TPU_TMDR_MD_PWM = common dso_local global i32 0, align 4
@TPU_PIN_PWM = common dso_local global i32 0, align 4
@TPU_TGRAn = common dso_local global i32 0, align 4
@TPU_TGRBn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%u: TGRA 0x%04x TGRB 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpu_pwm_device*)* @tpu_pwm_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpu_pwm_timer_start(%struct.tpu_pwm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpu_pwm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.tpu_pwm_device* %0, %struct.tpu_pwm_device** %3, align 8
  %5 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %6 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %1
  %10 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %11 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %10, i32 0, i32 5
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @pm_runtime_get_sync(i32* %15)
  %17 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %18 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %17, i32 0, i32 5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @clk_prepare_enable(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %9
  %26 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %27 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %26, i32 0, i32 5
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %90

34:                                               ; preds = %9
  %35 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %36 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %1
  %38 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %39 = load i32, i32* @TPU_PIN_INACTIVE, align 4
  %40 = call i32 @tpu_pwm_set_pin(%struct.tpu_pwm_device* %38, i32 %39)
  %41 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %42 = call i32 @tpu_pwm_start_stop(%struct.tpu_pwm_device* %41, i32 0)
  %43 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %44 = load i32, i32* @TPU_TCRn, align 4
  %45 = load i32, i32* @TPU_TCR_CCLR_TGRB, align 4
  %46 = load i32, i32* @TPU_TCR_CKEG_RISING, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %49 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %47, %50
  %52 = call i32 @tpu_pwm_write(%struct.tpu_pwm_device* %43, i32 %44, i32 %51)
  %53 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %54 = load i32, i32* @TPU_TMDRn, align 4
  %55 = load i32, i32* @TPU_TMDR_MD_PWM, align 4
  %56 = call i32 @tpu_pwm_write(%struct.tpu_pwm_device* %53, i32 %54, i32 %55)
  %57 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %58 = load i32, i32* @TPU_PIN_PWM, align 4
  %59 = call i32 @tpu_pwm_set_pin(%struct.tpu_pwm_device* %57, i32 %58)
  %60 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %61 = load i32, i32* @TPU_TGRAn, align 4
  %62 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %63 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @tpu_pwm_write(%struct.tpu_pwm_device* %60, i32 %61, i32 %64)
  %66 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %67 = load i32, i32* @TPU_TGRBn, align 4
  %68 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %69 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @tpu_pwm_write(%struct.tpu_pwm_device* %66, i32 %67, i32 %70)
  %72 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %73 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %72, i32 0, i32 5
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %79 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %82 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %85 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_dbg(i32* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %83, i32 %86)
  %88 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %89 = call i32 @tpu_pwm_start_stop(%struct.tpu_pwm_device* %88, i32 1)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %37, %25
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @tpu_pwm_set_pin(%struct.tpu_pwm_device*, i32) #1

declare dso_local i32 @tpu_pwm_start_stop(%struct.tpu_pwm_device*, i32) #1

declare dso_local i32 @tpu_pwm_write(%struct.tpu_pwm_device*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
