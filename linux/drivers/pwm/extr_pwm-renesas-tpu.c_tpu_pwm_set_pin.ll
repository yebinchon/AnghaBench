; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-renesas-tpu.c_tpu_pwm_set_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-renesas-tpu.c_tpu_pwm_set_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpu_pwm_device = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@tpu_pwm_set_pin.states = internal constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PWM\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%u: configuring pin as %s\0A\00", align 1
@TPU_TIORn = common dso_local global i32 0, align 4
@PWM_POLARITY_INVERSED = common dso_local global i32 0, align 4
@TPU_TIOR_IOA_1 = common dso_local global i32 0, align 4
@TPU_TIOR_IOA_0 = common dso_local global i32 0, align 4
@TPU_TIOR_IOA_0_SET = common dso_local global i32 0, align 4
@TPU_TIOR_IOA_1_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpu_pwm_device*, i32)* @tpu_pwm_set_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpu_pwm_set_pin(%struct.tpu_pwm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.tpu_pwm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.tpu_pwm_device* %0, %struct.tpu_pwm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %6 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %12 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* @tpu_pwm_set_pin.states, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %13, i8* %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %65 [
    i32 129, label %20
    i32 128, label %35
    i32 130, label %50
  ]

20:                                               ; preds = %2
  %21 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %22 = load i32, i32* @TPU_TIORn, align 4
  %23 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %24 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @TPU_TIOR_IOA_1, align 4
  br label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @TPU_TIOR_IOA_0, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @tpu_pwm_write(%struct.tpu_pwm_device* %21, i32 %22, i32 %33)
  br label %65

35:                                               ; preds = %2
  %36 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %37 = load i32, i32* @TPU_TIORn, align 4
  %38 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %39 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @TPU_TIOR_IOA_0_SET, align 4
  br label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @TPU_TIOR_IOA_1_CLR, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = call i32 @tpu_pwm_write(%struct.tpu_pwm_device* %36, i32 %37, i32 %48)
  br label %65

50:                                               ; preds = %2
  %51 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %52 = load i32, i32* @TPU_TIORn, align 4
  %53 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %54 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @TPU_TIOR_IOA_0, align 4
  br label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @TPU_TIOR_IOA_1, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = call i32 @tpu_pwm_write(%struct.tpu_pwm_device* %51, i32 %52, i32 %63)
  br label %65

65:                                               ; preds = %2, %62, %47, %32
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8*) #1

declare dso_local i32 @tpu_pwm_write(%struct.tpu_pwm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
