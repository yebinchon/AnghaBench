; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_envctrl.c_set_fan_speeds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_envctrl.c_set_fan_speeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_fan_control = type { i64, i64, i64, i32, i32 }

@FAN_SPEED_MIN = common dso_local global i64 0, align 8
@FAN_SPEED_MAX = common dso_local global i64 0, align 8
@CPU_FAN_REG = common dso_local global i32 0, align 4
@SYS_FAN_REG = common dso_local global i32 0, align 4
@PSUPPLY_FAN_ON = common dso_local global i64 0, align 8
@PSUPPLY_FAN_OFF = common dso_local global i64 0, align 8
@PSUPPLY_FAN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bbc_fan_control*)* @set_fan_speeds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fan_speeds(%struct.bbc_fan_control* %0) #0 {
  %2 = alloca %struct.bbc_fan_control*, align 8
  store %struct.bbc_fan_control* %0, %struct.bbc_fan_control** %2, align 8
  %3 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %2, align 8
  %4 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @FAN_SPEED_MIN, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i64, i64* @FAN_SPEED_MIN, align 8
  %10 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %2, align 8
  %11 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %2, align 8
  %14 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FAN_SPEED_MAX, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i64, i64* @FAN_SPEED_MAX, align 8
  %20 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %2, align 8
  %21 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %2, align 8
  %24 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FAN_SPEED_MIN, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i64, i64* @FAN_SPEED_MIN, align 8
  %30 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %2, align 8
  %31 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %2, align 8
  %34 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FAN_SPEED_MAX, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, i64* @FAN_SPEED_MAX, align 8
  %40 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %2, align 8
  %41 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %2, align 8
  %44 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %2, align 8
  %47 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @CPU_FAN_REG, align 4
  %50 = call i32 @bbc_i2c_writeb(i32 %45, i64 %48, i32 %49)
  %51 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %2, align 8
  %52 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %2, align 8
  %55 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @SYS_FAN_REG, align 4
  %58 = call i32 @bbc_i2c_writeb(i32 %53, i64 %56, i32 %57)
  %59 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %2, align 8
  %60 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %2, align 8
  %63 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %42
  %67 = load i64, i64* @PSUPPLY_FAN_ON, align 8
  br label %70

68:                                               ; preds = %42
  %69 = load i64, i64* @PSUPPLY_FAN_OFF, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i64 [ %67, %66 ], [ %69, %68 ]
  %72 = load i32, i32* @PSUPPLY_FAN_REG, align 4
  %73 = call i32 @bbc_i2c_writeb(i32 %61, i64 %71, i32 %72)
  ret void
}

declare dso_local i32 @bbc_i2c_writeb(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
