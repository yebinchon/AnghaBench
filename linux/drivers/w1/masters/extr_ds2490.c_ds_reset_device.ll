; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2490.c_ds_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2490.c_ds_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_device = type { i32 }

@CTL_RESET_DEVICE = common dso_local global i32 0, align 4
@MOD_PULSE_EN = common dso_local global i32 0, align 4
@PULSE_SPUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ds_reset_device: Error allowing strong pullup\0A\00", align 1
@COMM_SET_DURATION = common dso_local global i32 0, align 4
@COMM_IM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ds_reset_device: Error setting duration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds_device*)* @ds_reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_reset_device(%struct.ds_device* %0) #0 {
  %2 = alloca %struct.ds_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ds_device* %0, %struct.ds_device** %2, align 8
  %4 = load %struct.ds_device*, %struct.ds_device** %2, align 8
  %5 = load i32, i32* @CTL_RESET_DEVICE, align 4
  %6 = call i32 @ds_send_control_cmd(%struct.ds_device* %4, i32 %5, i32 0)
  %7 = load %struct.ds_device*, %struct.ds_device** %2, align 8
  %8 = load i32, i32* @MOD_PULSE_EN, align 4
  %9 = load i32, i32* @PULSE_SPUE, align 4
  %10 = call i64 @ds_send_control_mode(%struct.ds_device* %7, i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load %struct.ds_device*, %struct.ds_device** %2, align 8
  %16 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load %struct.ds_device*, %struct.ds_device** %2, align 8
  %21 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 4
  store i32 %23, i32* %3, align 4
  %24 = load %struct.ds_device*, %struct.ds_device** %2, align 8
  %25 = load i32, i32* @COMM_SET_DURATION, align 4
  %26 = load i32, i32* @COMM_IM, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @ds_send_control(%struct.ds_device* %24, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %19
  br label %34

34:                                               ; preds = %33, %14
  ret void
}

declare dso_local i32 @ds_send_control_cmd(%struct.ds_device*, i32, i32) #1

declare dso_local i64 @ds_send_control_mode(%struct.ds_device*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @ds_send_control(%struct.ds_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
