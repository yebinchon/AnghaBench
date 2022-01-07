; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_idev_init_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_idev_init_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32, i32 }

@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@cmpc_accel_open_v4 = common dso_local global i32 0, align 4
@cmpc_accel_close_v4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @cmpc_accel_idev_init_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmpc_accel_idev_init_v4(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %3 = load i32, i32* @EV_ABS, align 4
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @set_bit(i32 %3, i32 %6)
  %8 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %9 = load i32, i32* @ABS_X, align 4
  %10 = call i32 @input_set_abs_params(%struct.input_dev* %8, i32 %9, i32 -255, i32 255, i32 16, i32 0)
  %11 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %12 = load i32, i32* @ABS_Y, align 4
  %13 = call i32 @input_set_abs_params(%struct.input_dev* %11, i32 %12, i32 -255, i32 255, i32 16, i32 0)
  %14 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %15 = load i32, i32* @ABS_Z, align 4
  %16 = call i32 @input_set_abs_params(%struct.input_dev* %14, i32 %15, i32 -255, i32 255, i32 16, i32 0)
  %17 = load i32, i32* @cmpc_accel_open_v4, align 4
  %18 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @cmpc_accel_close_v4, align 4
  %21 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  ret void
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
