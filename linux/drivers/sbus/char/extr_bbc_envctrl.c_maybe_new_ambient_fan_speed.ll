; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_envctrl.c_maybe_new_ambient_fan_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_envctrl.c_maybe_new_ambient_fan_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_fan_control = type { i32, i32 }

@FAN_AMBIENT = common dso_local global i32 0, align 4
@FAN_SAME = common dso_local global i32 0, align 4
@FAN_FULLBLAST = common dso_local global i32 0, align 4
@FAN_SPEED_MAX = common dso_local global i32 0, align 4
@FAN_FASTER = common dso_local global i32 0, align 4
@FAN_SPEED_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bbc_fan_control*)* @maybe_new_ambient_fan_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_new_ambient_fan_speed(%struct.bbc_fan_control* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bbc_fan_control*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bbc_fan_control* %0, %struct.bbc_fan_control** %3, align 8
  %7 = load i32, i32* @FAN_AMBIENT, align 4
  %8 = call i32 @prioritize_fan_action(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @FAN_SAME, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

13:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @FAN_FULLBLAST, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %19 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FAN_SPEED_MAX, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @FAN_SPEED_MAX, align 4
  %26 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %27 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %23
  br label %68

29:                                               ; preds = %13
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @FAN_FASTER, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %35 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FAN_SPEED_MAX, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %45

40:                                               ; preds = %33
  %41 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %42 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 2
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %39
  br label %67

46:                                               ; preds = %29
  %47 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %48 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @FAN_SPEED_MIN, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %56 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 3
  %59 = icmp sle i32 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %46
  store i32 0, i32* %5, align 4
  br label %66

61:                                               ; preds = %53
  %62 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %3, align 8
  %63 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %61, %60
  br label %67

67:                                               ; preds = %66, %45
  br label %68

68:                                               ; preds = %67, %28
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %12
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @prioritize_fan_action(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
