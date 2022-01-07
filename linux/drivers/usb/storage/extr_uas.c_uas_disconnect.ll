; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.uas_dev_info = type { i32, i32, i32, i32, i32, i32 }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @uas_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uas_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.uas_dev_info*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.Scsi_Host* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.uas_dev_info*
  store %struct.uas_dev_info* %11, %struct.uas_dev_info** %4, align 8
  %12 = load %struct.uas_dev_info*, %struct.uas_dev_info** %4, align 8
  %13 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %12, i32 0, i32 5
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.uas_dev_info*, %struct.uas_dev_info** %4, align 8
  %17 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.uas_dev_info*, %struct.uas_dev_info** %4, align 8
  %19 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %18, i32 0, i32 5
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.uas_dev_info*, %struct.uas_dev_info** %4, align 8
  %23 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %22, i32 0, i32 4
  %24 = call i32 @cancel_work_sync(i32* %23)
  %25 = load %struct.uas_dev_info*, %struct.uas_dev_info** %4, align 8
  %26 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %25, i32 0, i32 3
  %27 = call i32 @usb_kill_anchored_urbs(i32* %26)
  %28 = load %struct.uas_dev_info*, %struct.uas_dev_info** %4, align 8
  %29 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %28, i32 0, i32 2
  %30 = call i32 @usb_kill_anchored_urbs(i32* %29)
  %31 = load %struct.uas_dev_info*, %struct.uas_dev_info** %4, align 8
  %32 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %31, i32 0, i32 1
  %33 = call i32 @usb_kill_anchored_urbs(i32* %32)
  %34 = load %struct.uas_dev_info*, %struct.uas_dev_info** %4, align 8
  %35 = load i32, i32* @DID_NO_CONNECT, align 4
  %36 = call i32 @uas_zap_pending(%struct.uas_dev_info* %34, i32 %35)
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %38 = call i32 @scsi_remove_host(%struct.Scsi_Host* %37)
  %39 = load %struct.uas_dev_info*, %struct.uas_dev_info** %4, align 8
  %40 = call i32 @uas_free_streams(%struct.uas_dev_info* %39)
  %41 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %42 = call i32 @scsi_host_put(%struct.Scsi_Host* %41)
  ret void
}

declare dso_local %struct.Scsi_Host* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @uas_zap_pending(%struct.uas_dev_info*, i32) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @uas_free_streams(%struct.uas_dev_info*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
