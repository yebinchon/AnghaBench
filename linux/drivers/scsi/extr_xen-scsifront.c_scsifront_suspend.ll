; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.vscsifrnt_info = type { i32, i32, i32, i32, i64, i64, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*)* @scsifront_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsifront_suspend(%struct.xenbus_device* %0) #0 {
  %2 = alloca %struct.xenbus_device*, align 8
  %3 = alloca %struct.vscsifrnt_info*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %2, align 8
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %7 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %6, i32 0, i32 0
  %8 = call %struct.vscsifrnt_info* @dev_get_drvdata(i32* %7)
  store %struct.vscsifrnt_info* %8, %struct.vscsifrnt_info** %3, align 8
  %9 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %10 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %9, i32 0, i32 6
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @spin_lock_irq(i32 %14)
  %16 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %17 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  br label %18

18:                                               ; preds = %29, %1
  %19 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %20 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %23, %18
  %28 = phi i1 [ false, %18 ], [ %26, %23 ]
  br i1 %28, label %29, label %55

29:                                               ; preds = %27
  %30 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %31 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %33 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @spin_unlock_irq(i32 %36)
  %38 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %39 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %38, i32 0, i32 3
  %40 = call i32 @wake_up(i32* %39)
  %41 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %42 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %45 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @wait_event_interruptible(i32 %43, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @spin_lock_irq(i32 %53)
  br label %18

55:                                               ; preds = %27
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @spin_unlock_irq(i32 %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.vscsifrnt_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
