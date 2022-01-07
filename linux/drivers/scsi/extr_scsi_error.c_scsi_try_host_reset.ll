; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_try_host_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_try_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, %struct.scsi_host_template* }
%struct.scsi_host_template = type { i32 (%struct.scsi_cmnd.0*)*, i32 }
%struct.scsi_cmnd.0 = type opaque

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Snd Host RST\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@HOST_RESET_SETTLE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @scsi_try_host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_try_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.scsi_host_template*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %6, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 1
  %15 = load %struct.scsi_host_template*, %struct.scsi_host_template** %14, align 8
  store %struct.scsi_host_template* %15, %struct.scsi_host_template** %7, align 8
  %16 = load i32, i32* @KERN_INFO, align 4
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %18 = call i32 @shost_printk(i32 %16, %struct.Scsi_Host* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @SCSI_LOG_ERROR_RECOVERY(i32 3, i32 %18)
  %20 = load %struct.scsi_host_template*, %struct.scsi_host_template** %7, align 8
  %21 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %20, i32 0, i32 0
  %22 = load i32 (%struct.scsi_cmnd.0*)*, i32 (%struct.scsi_cmnd.0*)** %21, align 8
  %23 = icmp ne i32 (%struct.scsi_cmnd.0*)* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @FAILED, align 4
  store i32 %25, i32* %2, align 4
  br label %61

26:                                               ; preds = %1
  %27 = load %struct.scsi_host_template*, %struct.scsi_host_template** %7, align 8
  %28 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %27, i32 0, i32 0
  %29 = load i32 (%struct.scsi_cmnd.0*)*, i32 (%struct.scsi_cmnd.0*)** %28, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %31 = bitcast %struct.scsi_cmnd* %30 to %struct.scsi_cmnd.0*
  %32 = call i32 %29(%struct.scsi_cmnd.0* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SUCCESS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %26
  %37 = load %struct.scsi_host_template*, %struct.scsi_host_template** %7, align 8
  %38 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @HOST_RESET_SETTLE_TIME, align 4
  %43 = call i32 @ssleep(i32 %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %46 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @spin_lock_irqsave(i32 %47, i64 %48)
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %52 = call i32 @scmd_channel(%struct.scsi_cmnd* %51)
  %53 = call i32 @scsi_report_bus_reset(%struct.Scsi_Host* %50, i32 %52)
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %55 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32 %56, i64 %57)
  br label %59

59:                                               ; preds = %44, %26
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %24
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @SCSI_LOG_ERROR_RECOVERY(i32, i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @scsi_report_bus_reset(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @scmd_channel(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
