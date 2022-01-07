; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i8*, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.fc_rport = type { i32 }
%struct.ibmvfc_host = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @ibmvfc_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.fc_rport*, align 8
  %6 = alloca %struct.ibmvfc_host*, align 8
  %7 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %8 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 1
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %4, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = call i32 @scsi_target(%struct.scsi_device* %11)
  %13 = call %struct.fc_rport* @starget_to_rport(i32 %12)
  store %struct.fc_rport* %13, %struct.fc_rport** %5, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %15 = call %struct.ibmvfc_host* @shost_priv(%struct.Scsi_Host* %14)
  store %struct.ibmvfc_host* %15, %struct.ibmvfc_host** %6, align 8
  store i64 0, i64* %7, align 8
  %16 = load %struct.fc_rport*, %struct.fc_rport** %5, align 8
  %17 = icmp ne %struct.fc_rport* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.fc_rport*, %struct.fc_rport** %5, align 8
  %20 = call i64 @fc_remote_port_chkready(%struct.fc_rport* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %1
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %44

25:                                               ; preds = %18
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave(i32 %28, i64 %29)
  %31 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %6, align 8
  %32 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = sext i32 %33 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32 %41, i64 %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %25, %22
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(%struct.scsi_device*) #1

declare dso_local %struct.ibmvfc_host* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
