; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_envctrl.c_maybe_new_cpu_fan_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_envctrl.c_maybe_new_cpu_fan_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_fan_control = type { i32, i32 }

@FAN_CPU = common dso_local global i32 0, align 4
@FAN_SAME = common dso_local global i32 0, align 4
@FAN_FULLBLAST = common dso_local global i32 0, align 4
@FAN_SPEED_MAX = common dso_local global i32 0, align 4
@FAN_FASTER = common dso_local global i32 0, align 4
@FAN_SPEED_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bbc_fan_control*)* @maybe_new_cpu_fan_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_new_cpu_fan_speed(%struct.bbc_fan_control* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bbc_fan_control*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bbc_fan_control* %0, %struct.bbc_fan_control** %3, align 8
  %6 = load i32, i32* @FAN_CPU, align 4
  %7 = call i32 @prioritize_fan_action(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @FAN_SAME, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

12:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @FAN_FULLBLAST, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %18 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FAN_SPEED_MAX, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @FAN_SPEED_MAX, align 4
  %25 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %26 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %22
  br label %75

28:                                               ; preds = %12
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @FAN_FASTER, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %34 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FAN_SPEED_MAX, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %60

39:                                               ; preds = %32
  %40 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %41 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %41, align 4
  %44 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %45 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %48 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 3
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %39
  %53 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %54 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 3
  %57 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %58 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %39
  br label %60

60:                                               ; preds = %59, %38
  br label %74

61:                                               ; preds = %28
  %62 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %63 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @FAN_SPEED_MIN, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %73

68:                                               ; preds = %61
  %69 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %70 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %68, %67
  br label %74

74:                                               ; preds = %73, %60
  br label %75

75:                                               ; preds = %74, %27
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %11
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @prioritize_fan_action(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
