; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_power_down_notify_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_power_down_notify_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }

@MU_DOORBELL_IN = common dso_local global i32 0, align 4
@DRBL_POWER_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@MU_DOORBELL_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Timeout waiting for power down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*)* @esas2r_power_down_notify_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_power_down_notify_firmware(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %5 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %6 = load i32, i32* @MU_DOORBELL_IN, align 4
  %7 = load i32, i32* @DRBL_POWER_DOWN, align 4
  %8 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %5, i32 %6, i32 %7)
  %9 = load i32, i32* @jiffies, align 4
  %10 = call i32 @jiffies_to_msecs(i32 %9)
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %1, %34
  %12 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %13 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %14 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @DRBL_POWER_DOWN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %21 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %20, i32 %21, i32 %22)
  br label %35

24:                                               ; preds = %11
  %25 = call i32 @msecs_to_jiffies(i32 100)
  %26 = call i32 @schedule_timeout_interruptible(i32 %25)
  %27 = load i32, i32* @jiffies, align 4
  %28 = call i32 @jiffies_to_msecs(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp sgt i32 %30, 30000
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %35

34:                                               ; preds = %24
  br label %11

35:                                               ; preds = %32, %19
  ret void
}

declare dso_local i32 @esas2r_write_register_dword(%struct.esas2r_adapter*, i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @esas2r_read_register_dword(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @esas2r_hdebug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
