; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-hibvt.c_hibvt_pwm_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-hibvt.c_hibvt_pwm_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.pwm_state = type { i64, i64, i64, i64 }
%struct.hibvt_pwm_chip = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @hibvt_pwm_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hibvt_pwm_apply(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_state*, align 8
  %7 = alloca %struct.hibvt_pwm_chip*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %6, align 8
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %9 = call %struct.hibvt_pwm_chip* @to_hibvt_pwm_chip(%struct.pwm_chip* %8)
  store %struct.hibvt_pwm_chip* %9, %struct.hibvt_pwm_chip** %7, align 8
  %10 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %11 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %14 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %12, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %20 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %21 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %22 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @hibvt_pwm_set_polarity(%struct.pwm_chip* %19, %struct.pwm_device* %20, i64 %23)
  br label %25

25:                                               ; preds = %18, %3
  %26 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %27 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %30 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %28, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %25
  %35 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %36 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %39 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %37, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %34, %25
  %44 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %45 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %46 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %47 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %50 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @hibvt_pwm_config(%struct.pwm_chip* %44, %struct.pwm_device* %45, i64 %48, i64 %51)
  %53 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %7, align 8
  %54 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %43
  %60 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %61 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %66 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %67 = call i32 @hibvt_pwm_enable(%struct.pwm_chip* %65, %struct.pwm_device* %66)
  br label %68

68:                                               ; preds = %64, %59, %43
  br label %69

69:                                               ; preds = %68, %34
  %70 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %71 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %74 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %72, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %69
  %79 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %80 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %85 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %86 = call i32 @hibvt_pwm_enable(%struct.pwm_chip* %84, %struct.pwm_device* %85)
  br label %91

87:                                               ; preds = %78
  %88 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %89 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %90 = call i32 @hibvt_pwm_disable(%struct.pwm_chip* %88, %struct.pwm_device* %89)
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91, %69
  ret i32 0
}

declare dso_local %struct.hibvt_pwm_chip* @to_hibvt_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @hibvt_pwm_set_polarity(%struct.pwm_chip*, %struct.pwm_device*, i64) #1

declare dso_local i32 @hibvt_pwm_config(%struct.pwm_chip*, %struct.pwm_device*, i64, i64) #1

declare dso_local i32 @hibvt_pwm_enable(%struct.pwm_chip*, %struct.pwm_device*) #1

declare dso_local i32 @hibvt_pwm_disable(%struct.pwm_chip*, %struct.pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
