; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_..NCR5380.c_requeue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_..NCR5380.c_requeue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.NCR5380_hostdata = type { i32, %struct.scsi_cmnd*, i32, i32 }
%struct.NCR5380_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @requeue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @requeue_cmd(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.NCR5380_hostdata*, align 8
  %6 = alloca %struct.NCR5380_cmd*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = call %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host* %7)
  store %struct.NCR5380_hostdata* %8, %struct.NCR5380_hostdata** %5, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = call %struct.NCR5380_cmd* @scsi_cmd_priv(%struct.scsi_cmnd* %9)
  store %struct.NCR5380_cmd* %10, %struct.NCR5380_cmd** %6, align 8
  %11 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %5, align 8
  %12 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %11, i32 0, i32 1
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = icmp eq %struct.scsi_cmnd* %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %5, align 8
  %19 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %18, i32 0, i32 3
  %20 = call i32 @scsi_eh_restore_cmnd(%struct.scsi_cmnd* %17, i32* %19)
  %21 = load %struct.NCR5380_cmd*, %struct.NCR5380_cmd** %6, align 8
  %22 = getelementptr inbounds %struct.NCR5380_cmd, %struct.NCR5380_cmd* %21, i32 0, i32 0
  %23 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %5, align 8
  %24 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %23, i32 0, i32 2
  %25 = call i32 @list_add(i32* %22, i32* %24)
  %26 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %5, align 8
  %27 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %26, i32 0, i32 1
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %27, align 8
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.NCR5380_cmd*, %struct.NCR5380_cmd** %6, align 8
  %30 = getelementptr inbounds %struct.NCR5380_cmd, %struct.NCR5380_cmd* %29, i32 0, i32 0
  %31 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %5, align 8
  %32 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %31, i32 0, i32 0
  %33 = call i32 @list_add(i32* %30, i32* %32)
  br label %34

34:                                               ; preds = %28, %16
  ret void
}

declare dso_local %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.NCR5380_cmd* @scsi_cmd_priv(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_eh_restore_cmnd(%struct.scsi_cmnd*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
