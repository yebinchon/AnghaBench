; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_host_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_host_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, i32, %struct.TYPE_2__, %struct.pci_dev*, %struct.Scsi_Host* }
%struct.TYPE_2__ = type { %struct.pci_dev*, i32 }
%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.pci_dev = type { i32 }

@qedi_host_template = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Could not allocate shost\0A\00", align 1
@QEDI_MAX_ISCSI_CONNS_PER_HBA = common dso_local global i32 0, align 4
@qedi_scsi_transport = common dso_local global i32 0, align 4
@ISCSI_MAX_SESS_PER_HBA = common dso_local global i32 0, align 4
@QEDI_SQ_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qedi_ctx* (%struct.pci_dev*)* @qedi_host_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qedi_ctx* @qedi_host_alloc(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.qedi_ctx*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store %struct.qedi_ctx* null, %struct.qedi_ctx** %4, align 8
  %5 = call %struct.Scsi_Host* @iscsi_host_alloc(i32* @qedi_host_template, i32 40, i32 0)
  store %struct.Scsi_Host* %5, %struct.Scsi_Host** %3, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %7 = icmp ne %struct.Scsi_Host* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @QEDI_ERR(i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %56

10:                                               ; preds = %1
  %11 = load i32, i32* @QEDI_MAX_ISCSI_CONNS_PER_HBA, align 4
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 4
  store i32 -1, i32* %17, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  store i32 16, i32* %19, align 8
  %20 = load i32, i32* @qedi_scsi_transport, align 4
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %24 = call %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host* %23)
  store %struct.qedi_ctx* %24, %struct.qedi_ctx** %4, align 8
  %25 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %26 = call i32 @memset(%struct.qedi_ctx* %25, i32 0, i32 40)
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %28 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %28, i32 0, i32 4
  store %struct.Scsi_Host* %27, %struct.Scsi_Host** %29, align 8
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %37, i32 0, i32 3
  store %struct.pci_dev* %36, %struct.pci_dev** %38, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.pci_dev* %39, %struct.pci_dev** %42, align 8
  %43 = load i32, i32* @ISCSI_MAX_SESS_PER_HBA, align 4
  %44 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @QEDI_SQ_SIZE, align 4
  %47 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %50 = call i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx* %49)
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %54 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %55 = call i32 @pci_set_drvdata(%struct.pci_dev* %53, %struct.qedi_ctx* %54)
  br label %56

56:                                               ; preds = %10, %8
  %57 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  ret %struct.qedi_ctx* %57
}

declare dso_local %struct.Scsi_Host* @iscsi_host_alloc(i32*, i32, i32) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*) #1

declare dso_local %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @memset(%struct.qedi_ctx*, i32, i32) #1

declare dso_local i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.qedi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
