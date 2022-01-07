; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_init_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_init_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_init_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_init_capabilities(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %4 = call i32 @pci_ea_init(%struct.pci_dev* %3)
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call i32 @pci_msi_setup_pci_dev(%struct.pci_dev* %5)
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call i32 @pci_allocate_cap_save_buffers(%struct.pci_dev* %7)
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call i32 @pci_pm_init(%struct.pci_dev* %9)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = call i32 @pci_vpd_init(%struct.pci_dev* %11)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = call i32 @pci_configure_ari(%struct.pci_dev* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call i32 @pci_iov_init(%struct.pci_dev* %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = call i32 @pci_ats_init(%struct.pci_dev* %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = call i32 @pci_enable_acs(%struct.pci_dev* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @pci_ptm_init(%struct.pci_dev* %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = call i32 @pci_aer_init(%struct.pci_dev* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = call i32 @pcie_report_downtraining(%struct.pci_dev* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = call i64 @pci_probe_reset_function(%struct.pci_dev* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @pci_ea_init(%struct.pci_dev*) #1

declare dso_local i32 @pci_msi_setup_pci_dev(%struct.pci_dev*) #1

declare dso_local i32 @pci_allocate_cap_save_buffers(%struct.pci_dev*) #1

declare dso_local i32 @pci_pm_init(%struct.pci_dev*) #1

declare dso_local i32 @pci_vpd_init(%struct.pci_dev*) #1

declare dso_local i32 @pci_configure_ari(%struct.pci_dev*) #1

declare dso_local i32 @pci_iov_init(%struct.pci_dev*) #1

declare dso_local i32 @pci_ats_init(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_acs(%struct.pci_dev*) #1

declare dso_local i32 @pci_ptm_init(%struct.pci_dev*) #1

declare dso_local i32 @pci_aer_init(%struct.pci_dev*) #1

declare dso_local i32 @pcie_report_downtraining(%struct.pci_dev*) #1

declare dso_local i64 @pci_probe_reset_function(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
