; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_main.c_fnic_reset_host_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_main.c_fnic_reset_host_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.fc_lport = type { i32 }
%struct.fnic = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fc_host_statistics = type { i32 }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"fnic: Reset vnic stats failed 0x%x\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @fnic_reset_host_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_reset_host_stats(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fnic*, align 8
  %6 = alloca %struct.fc_host_statistics*, align 8
  %7 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %9 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %8)
  store %struct.fc_lport* %9, %struct.fc_lport** %4, align 8
  %10 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %11 = call %struct.fnic* @lport_priv(%struct.fc_lport* %10)
  store %struct.fnic* %11, %struct.fnic** %5, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %13 = call %struct.fc_host_statistics* @fnic_get_stats(%struct.Scsi_Host* %12)
  store %struct.fc_host_statistics* %13, %struct.fc_host_statistics** %6, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %15 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %6, align 8
  %16 = call i32 @fnic_dump_fchost_stats(%struct.Scsi_Host* %14, %struct.fc_host_statistics* %15)
  %17 = load %struct.fnic*, %struct.fnic** %5, align 8
  %18 = getelementptr inbounds %struct.fnic, %struct.fnic* %17, i32 0, i32 2
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.fnic*, %struct.fnic** %5, align 8
  %22 = getelementptr inbounds %struct.fnic, %struct.fnic* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @vnic_dev_stats_clear(i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load %struct.fnic*, %struct.fnic** %5, align 8
  %26 = getelementptr inbounds %struct.fnic, %struct.fnic* %25, i32 0, i32 2
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load i32, i32* @KERN_DEBUG, align 4
  %33 = load %struct.fnic*, %struct.fnic** %5, align 8
  %34 = getelementptr inbounds %struct.fnic, %struct.fnic* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @FNIC_MAIN_DBG(i32 %32, i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %46

40:                                               ; preds = %1
  %41 = load i32, i32* @jiffies, align 4
  %42 = load %struct.fnic*, %struct.fnic** %5, align 8
  %43 = getelementptr inbounds %struct.fnic, %struct.fnic* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %6, align 8
  %45 = call i32 @memset(%struct.fc_host_statistics* %44, i32 0, i32 4)
  br label %46

46:                                               ; preds = %40, %31
  ret void
}

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.fnic* @lport_priv(%struct.fc_lport*) #1

declare dso_local %struct.fc_host_statistics* @fnic_get_stats(%struct.Scsi_Host*) #1

declare dso_local i32 @fnic_dump_fchost_stats(%struct.Scsi_Host*, %struct.fc_host_statistics*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vnic_dev_stats_clear(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @FNIC_MAIN_DBG(i32, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.fc_host_statistics*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
