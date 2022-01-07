; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_init_pci_cfg_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_init_pci_cfg_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }

@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_READRQ = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_READRQ_512B = common dso_local global i32 0, align 4
@ESAS2R_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"max read request size > 512B\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*)* @esas2r_init_pci_cfg_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_init_pci_cfg_space(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %4 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @pci_is_pcie(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %14 = call i32 @pcie_capability_read_word(i32 %12, i32 %13, i32* %3)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @PCI_EXP_DEVCTL_READRQ_512B, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %9
  %21 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %22 = call i32 @esas2r_log(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @PCI_EXP_DEVCTL_READRQ_512B, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @pcie_capability_write_word(i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %20, %9
  br label %37

37:                                               ; preds = %36, %1
  ret void
}

declare dso_local i64 @pci_is_pcie(i32) #1

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i32 @esas2r_log(i32, i8*) #1

declare dso_local i32 @pcie_capability_write_word(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
