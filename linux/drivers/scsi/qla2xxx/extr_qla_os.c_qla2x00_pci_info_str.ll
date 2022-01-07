; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_pci_info_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_pci_info_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@qla2x00_pci_info_str.pci_bus_modes = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"33\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"66\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"133\00", align 1
@BIT_9 = common dso_local global i32 0, align 4
@BIT_10 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"PCI-X (%s MHz)\00", align 1
@BIT_8 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"PCI (%s MHz)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.scsi_qla_host*, i8*, i64)* @qla2x00_pci_info_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qla2x00_pci_info_str(%struct.scsi_qla_host* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 0
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %7, align 8
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BIT_9, align 4
  %16 = load i32, i32* @BIT_10, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = ashr i32 %18, 9
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8*], [4 x i8*]* @qla2x00_pci_info_str.pci_bus_modes, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @snprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %28)
  br label %44

30:                                               ; preds = %3
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BIT_8, align 4
  %35 = and i32 %33, %34
  %36 = ashr i32 %35, 8
  store i32 %36, i32* %8, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i8*], [4 x i8*]* @qla2x00_pci_info_str.pci_bus_modes, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @snprintf(i8* %37, i64 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %30, %22
  %45 = load i8*, i8** %5, align 8
  ret i8* %45
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
