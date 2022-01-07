; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_hba_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_hba_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i32, i32, i64, i32 }
%struct.pci_dev = type { i32 }

@beiscsi_sht = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"beiscsi_hba_alloc - iscsi_host_alloc failed\0A\00", align 1
@BE2_MAX_SESSIONS = common dso_local global i32 0, align 4
@BEISCSI_MAX_CMD_LEN = common dso_local global i32 0, align 4
@BEISCSI_NUM_MAX_LUN = common dso_local global i32 0, align 4
@beiscsi_scsi_transport = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.beiscsi_hba* (%struct.pci_dev*)* @beiscsi_hba_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.beiscsi_hba* @beiscsi_hba_alloc(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = call %struct.Scsi_Host* @iscsi_host_alloc(i32* @beiscsi_sht, i32 16, i32 0)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %5, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %8 = icmp ne %struct.Scsi_Host* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = call i32 @dev_err(i32* %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store %struct.beiscsi_hba* null, %struct.beiscsi_hba** %2, align 8
  br label %45

13:                                               ; preds = %1
  %14 = load i32, i32* @BE2_MAX_SESSIONS, align 4
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @BEISCSI_MAX_CMD_LEN, align 4
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @BEISCSI_NUM_MAX_LUN, align 4
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @beiscsi_scsi_transport, align 4
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %29 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %28)
  store %struct.beiscsi_hba* %29, %struct.beiscsi_hba** %4, align 8
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %31 = call i32 @memset(%struct.beiscsi_hba* %30, i32 0, i32 16)
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %33 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %34 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %33, i32 0, i32 2
  store %struct.Scsi_Host* %32, %struct.Scsi_Host** %34, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = call i32 @pci_dev_get(%struct.pci_dev* %35)
  %37 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %38 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %41 = call i32 @pci_set_drvdata(%struct.pci_dev* %39, %struct.beiscsi_hba* %40)
  %42 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %43 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  %44 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  store %struct.beiscsi_hba* %44, %struct.beiscsi_hba** %2, align 8
  br label %45

45:                                               ; preds = %13, %9
  %46 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  ret %struct.beiscsi_hba* %46
}

declare dso_local %struct.Scsi_Host* @iscsi_host_alloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @memset(%struct.beiscsi_hba*, i32, i32) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
