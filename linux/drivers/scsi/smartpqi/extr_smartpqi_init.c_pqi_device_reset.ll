; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_device_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_scsi_dev = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*)* @pqi_device_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_device_reset(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca %struct.pqi_scsi_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %4, align 8
  %6 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %7 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %10 = call i32 @pqi_ctrl_block_requests(%struct.pqi_ctrl_info* %9)
  %11 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %12 = call i32 @pqi_ctrl_wait_until_quiesced(%struct.pqi_ctrl_info* %11)
  %13 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %14 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %15 = call i32 @pqi_fail_io_queued_for_device(%struct.pqi_ctrl_info* %13, %struct.pqi_scsi_dev* %14)
  %16 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %17 = call i32 @pqi_wait_until_inbound_queues_empty(%struct.pqi_ctrl_info* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %19 = call i32 @pqi_device_reset_start(%struct.pqi_scsi_dev* %18)
  %20 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %21 = call i32 @pqi_ctrl_unblock_requests(%struct.pqi_ctrl_info* %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @FAILED, align 4
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %28 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %29 = call i32 @_pqi_device_reset(%struct.pqi_ctrl_info* %27, %struct.pqi_scsi_dev* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %24
  %31 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %32 = call i32 @pqi_device_reset_done(%struct.pqi_scsi_dev* %31)
  %33 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %34 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pqi_ctrl_block_requests(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_ctrl_wait_until_quiesced(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_fail_io_queued_for_device(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*) #1

declare dso_local i32 @pqi_wait_until_inbound_queues_empty(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_device_reset_start(%struct.pqi_scsi_dev*) #1

declare dso_local i32 @pqi_ctrl_unblock_requests(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @_pqi_device_reset(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*) #1

declare dso_local i32 @pqi_device_reset_done(%struct.pqi_scsi_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
