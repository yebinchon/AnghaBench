; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pwm_bl.c_compute_duty_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pwm_bl.c_compute_duty_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_bl_data = type { i32, i32*, i32, i32 }
%struct.pwm_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_bl_data*, i32)* @compute_duty_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_duty_cycle(%struct.pwm_bl_data* %0, i32 %1) #0 {
  %3 = alloca %struct.pwm_bl_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_state, align 4
  %7 = alloca i32, align 4
  store %struct.pwm_bl_data* %0, %struct.pwm_bl_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %3, align 8
  %9 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %3, align 8
  %12 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pwm_get_state(i32 %13, %struct.pwm_state* %6)
  %15 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %3, align 8
  %16 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %3, align 8
  %21 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %19
  %30 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sub i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = mul i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %3, align 8
  %38 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @do_div(i32 %36, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %41, %42
  ret i32 %43
}

declare dso_local i32 @pwm_get_state(i32, %struct.pwm_state*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
