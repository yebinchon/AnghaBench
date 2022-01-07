; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_msi_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_msi_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.msi_domain_info = type { %struct.hv_pcibus_device* }
%struct.hv_pcibus_device = type { i32 }
%struct.hv_pci_dev = type { i32 }
%struct.pci_dev = type { i32 }
%struct.tran_int_desc = type { i32 }
%struct.irq_data = type { i32* }
%struct.msi_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, %struct.msi_domain_info*, i32)* @hv_msi_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_msi_free(%struct.irq_domain* %0, %struct.msi_domain_info* %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.msi_domain_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hv_pcibus_device*, align 8
  %8 = alloca %struct.hv_pci_dev*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.tran_int_desc*, align 8
  %11 = alloca %struct.irq_data*, align 8
  %12 = alloca %struct.msi_desc*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store %struct.msi_domain_info* %1, %struct.msi_domain_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %13, i32 %14)
  store %struct.irq_data* %15, %struct.irq_data** %11, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %11, align 8
  %17 = call %struct.msi_desc* @irq_data_get_msi_desc(%struct.irq_data* %16)
  store %struct.msi_desc* %17, %struct.msi_desc** %12, align 8
  %18 = load %struct.msi_desc*, %struct.msi_desc** %12, align 8
  %19 = call %struct.pci_dev* @msi_desc_to_pci_dev(%struct.msi_desc* %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %9, align 8
  %20 = load %struct.msi_domain_info*, %struct.msi_domain_info** %5, align 8
  %21 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %20, i32 0, i32 0
  %22 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %21, align 8
  store %struct.hv_pcibus_device* %22, %struct.hv_pcibus_device** %7, align 8
  %23 = load %struct.irq_data*, %struct.irq_data** %11, align 8
  %24 = call %struct.tran_int_desc* @irq_data_get_irq_chip_data(%struct.irq_data* %23)
  store %struct.tran_int_desc* %24, %struct.tran_int_desc** %10, align 8
  %25 = load %struct.tran_int_desc*, %struct.tran_int_desc** %10, align 8
  %26 = icmp ne %struct.tran_int_desc* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %48

28:                                               ; preds = %3
  %29 = load %struct.irq_data*, %struct.irq_data** %11, align 8
  %30 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %7, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @devfn_to_wslot(i32 %34)
  %36 = call %struct.hv_pci_dev* @get_pcichild_wslot(%struct.hv_pcibus_device* %31, i32 %35)
  store %struct.hv_pci_dev* %36, %struct.hv_pci_dev** %8, align 8
  %37 = load %struct.hv_pci_dev*, %struct.hv_pci_dev** %8, align 8
  %38 = icmp ne %struct.hv_pci_dev* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load %struct.tran_int_desc*, %struct.tran_int_desc** %10, align 8
  %41 = call i32 @kfree(%struct.tran_int_desc* %40)
  br label %48

42:                                               ; preds = %28
  %43 = load %struct.hv_pci_dev*, %struct.hv_pci_dev** %8, align 8
  %44 = load %struct.tran_int_desc*, %struct.tran_int_desc** %10, align 8
  %45 = call i32 @hv_int_desc_free(%struct.hv_pci_dev* %43, %struct.tran_int_desc* %44)
  %46 = load %struct.hv_pci_dev*, %struct.hv_pci_dev** %8, align 8
  %47 = call i32 @put_pcichild(%struct.hv_pci_dev* %46)
  br label %48

48:                                               ; preds = %42, %39, %27
  ret void
}

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local %struct.msi_desc* @irq_data_get_msi_desc(%struct.irq_data*) #1

declare dso_local %struct.pci_dev* @msi_desc_to_pci_dev(%struct.msi_desc*) #1

declare dso_local %struct.tran_int_desc* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.hv_pci_dev* @get_pcichild_wslot(%struct.hv_pcibus_device*, i32) #1

declare dso_local i32 @devfn_to_wslot(i32) #1

declare dso_local i32 @kfree(%struct.tran_int_desc*) #1

declare dso_local i32 @hv_int_desc_free(%struct.hv_pci_dev*, %struct.tran_int_desc*) #1

declare dso_local i32 @put_pcichild(%struct.hv_pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
