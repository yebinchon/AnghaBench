; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_pci_info_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_pci_info_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"PCIe iSA\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @qlafx00_pci_info_str(%struct.scsi_qla_host* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %8, i32 0, i32 0
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %7, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @pci_is_pcie(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @strlcpy(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i8*, i8** %5, align 8
  ret i8* %21
}

declare dso_local i64 @pci_is_pcie(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
