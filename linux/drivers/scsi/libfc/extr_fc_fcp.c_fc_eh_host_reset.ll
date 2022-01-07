; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_eh_host_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_eh_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.fc_lport = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Resetting host\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@FC_HOST_RESET_TIMEOUT = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"libfc: Host reset succeeded on port (%6.6x)\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"libfc: Host reset failed, port (%6.6x) is not ready.\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_eh_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %4, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %12)
  store %struct.fc_lport* %13, %struct.fc_lport** %5, align 8
  %14 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %15 = call i32 @FC_SCSI_DBG(%struct.fc_lport* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %17 = call i32 @fc_lport_reset(%struct.fc_lport* %16)
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* @FC_HOST_RESET_TIMEOUT, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %32, %1
  %22 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %23 = call i64 @fc_fcp_lport_queue_ready(%struct.fc_lport* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @time_before(i64 %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i1 [ false, %21 ], [ %29, %25 ]
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = call i32 @msleep(i32 1000)
  br label %21

34:                                               ; preds = %30
  %35 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %36 = call i64 @fc_fcp_lport_queue_ready(%struct.fc_lport* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32, i32* @KERN_INFO, align 4
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %41 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %42 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @shost_printk(i32 %39, %struct.Scsi_Host* %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @SUCCESS, align 4
  store i32 %45, i32* %2, align 4
  br label %54

46:                                               ; preds = %34
  %47 = load i32, i32* @KERN_INFO, align 4
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %49 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %50 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @shost_printk(i32 %47, %struct.Scsi_Host* %48, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @FAILED, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %46, %38
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @FC_SCSI_DBG(%struct.fc_lport*, i8*) #1

declare dso_local i32 @fc_lport_reset(%struct.fc_lport*) #1

declare dso_local i64 @fc_fcp_lport_queue_ready(%struct.fc_lport*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
