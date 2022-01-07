; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_restore_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_restore_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %39

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call i32 @pci_restore_ltr_state(%struct.pci_dev* %9)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = call i32 @pci_restore_pcie_state(%struct.pci_dev* %11)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = call i32 @pci_restore_pasid_state(%struct.pci_dev* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call i32 @pci_restore_pri_state(%struct.pci_dev* %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = call i32 @pci_restore_ats_state(%struct.pci_dev* %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = call i32 @pci_restore_vc_state(%struct.pci_dev* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @pci_restore_rebar_state(%struct.pci_dev* %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = call i32 @pci_restore_dpc_state(%struct.pci_dev* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = call i32 @pci_cleanup_aer_error_status_regs(%struct.pci_dev* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = call i32 @pci_restore_config_space(%struct.pci_dev* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = call i32 @pci_restore_pcix_state(%struct.pci_dev* %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = call i32 @pci_restore_msi_state(%struct.pci_dev* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i32 @pci_enable_acs(%struct.pci_dev* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = call i32 @pci_restore_iov_state(%struct.pci_dev* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @pci_restore_ltr_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_pcie_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_pasid_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_pri_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_ats_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_vc_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_rebar_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_dpc_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_cleanup_aer_error_status_regs(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_config_space(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_pcix_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_msi_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_acs(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_iov_state(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
