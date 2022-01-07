; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_esas2r_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_esas2r_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.esas2r_adapter = type { i32 }

@ESAS2R_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"esas2r_remove(%p) called; host:%p\00", align 1
@found_adapters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @esas2r_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.esas2r_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.esas2r_adapter*
  store %struct.esas2r_adapter* %10, %struct.esas2r_adapter** %4, align 8
  %11 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %16 = call i32 @esas2r_log_dev(i32 %11, i32* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.pci_dev* %14, %struct.Scsi_Host* %15)
  %17 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @esas2r_kill_adapter(i32 %19)
  %21 = load i32, i32* @found_adapters, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* @found_adapters, align 4
  ret void
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @esas2r_log_dev(i32, i32*, i8*, %struct.pci_dev*, %struct.Scsi_Host*) #1

declare dso_local i32 @esas2r_kill_adapter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
