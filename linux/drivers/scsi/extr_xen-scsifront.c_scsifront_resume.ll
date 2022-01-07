; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.vscsifrnt_info = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"fail to resume %d\0A\00", align 1
@XenbusStateInitialised = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*)* @scsifront_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsifront_resume(%struct.xenbus_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca %struct.vscsifrnt_info*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %8 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 0
  %9 = call %struct.vscsifrnt_info* @dev_get_drvdata(i32* %8)
  store %struct.vscsifrnt_info* %9, %struct.vscsifrnt_info** %4, align 8
  %10 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %4, align 8
  %11 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %10, i32 0, i32 0
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %5, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @spin_lock_irq(i32 %15)
  %17 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %4, align 8
  %18 = call i32 @scsifront_finish_all(%struct.vscsifrnt_info* %17)
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @spin_unlock_irq(i32 %21)
  %23 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %4, align 8
  %24 = call i32 @scsifront_free_ring(%struct.vscsifrnt_info* %23)
  %25 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %4, align 8
  %26 = call i32 @scsifront_init_ring(%struct.vscsifrnt_info* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %31 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %35 = call i32 @scsi_host_put(%struct.Scsi_Host* %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %1
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %39 = load i32, i32* @XenbusStateInitialised, align 4
  %40 = call i32 @xenbus_switch_state(%struct.xenbus_device* %38, i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.vscsifrnt_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @scsifront_finish_all(%struct.vscsifrnt_info*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @scsifront_free_ring(%struct.vscsifrnt_info*) #1

declare dso_local i32 @scsifront_init_ring(%struct.vscsifrnt_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
