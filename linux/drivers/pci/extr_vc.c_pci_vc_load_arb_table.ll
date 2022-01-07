; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_vc.c_pci_vc_load_arb_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_vc.c_pci_vc_load_arb_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_VC_PORT_CTRL = common dso_local global i64 0, align 8
@PCI_VC_PORT_CTRL_LOAD_TABLE = common dso_local global i32 0, align 4
@PCI_VC_PORT_STATUS = common dso_local global i64 0, align 8
@PCI_VC_PORT_STATUS_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"VC arbitration table failed to load\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @pci_vc_load_arb_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vc_load_arb_table(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = load i64, i64* @PCI_VC_PORT_CTRL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @pci_read_config_word(%struct.pci_dev* %6, i64 %10, i32* %5)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @PCI_VC_PORT_CTRL, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PCI_VC_PORT_CTRL_LOAD_TABLE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @pci_write_config_word(%struct.pci_dev* %12, i64 %16, i32 %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @PCI_VC_PORT_STATUS, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* @PCI_VC_PORT_STATUS_TABLE, align 4
  %27 = call i64 @pci_wait_for_pending(%struct.pci_dev* %21, i64 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %33

30:                                               ; preds = %2
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = call i32 @pci_err(%struct.pci_dev* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i64 @pci_wait_for_pending(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
