; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_isr_one_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_isr_one_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aer_rpc = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.aer_err_source = type { i32, i32 }
%struct.aer_err_info = type { i32, i32, i32 }

@PCI_ERR_ROOT_COR_RCV = common dso_local global i32 0, align 4
@AER_CORRECTABLE = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_MULTI_COR_RCV = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_UNCOR_RCV = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_FATAL_RCV = common dso_local global i32 0, align 4
@AER_FATAL = common dso_local global i32 0, align 4
@AER_NONFATAL = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_MULTI_UNCOR_RCV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aer_rpc*, %struct.aer_err_source*)* @aer_isr_one_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aer_isr_one_error(%struct.aer_rpc* %0, %struct.aer_err_source* %1) #0 {
  %3 = alloca %struct.aer_rpc*, align 8
  %4 = alloca %struct.aer_err_source*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.aer_err_info, align 4
  store %struct.aer_rpc* %0, %struct.aer_rpc** %3, align 8
  store %struct.aer_err_source* %1, %struct.aer_err_source** %4, align 8
  %7 = load %struct.aer_rpc*, %struct.aer_rpc** %3, align 8
  %8 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %7, i32 0, i32 0
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %12 = call i32 @pci_rootport_aer_stats_incr(%struct.pci_dev* %10, %struct.aer_err_source* %11)
  %13 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %14 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCI_ERR_ROOT_COR_RCV, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %2
  %20 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %21 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ERR_COR_ID(i32 %22)
  %24 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %6, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @AER_CORRECTABLE, align 4
  %26 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %6, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %28 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PCI_ERR_ROOT_MULTI_COR_RCV, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %6, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %37

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %6, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = call i32 @aer_print_port_info(%struct.pci_dev* %38, %struct.aer_err_info* %6)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = call i64 @find_source_device(%struct.pci_dev* %40, %struct.aer_err_info* %6)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @aer_process_err_devices(%struct.aer_err_info* %6)
  br label %45

45:                                               ; preds = %43, %37
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %48 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PCI_ERR_ROOT_UNCOR_RCV, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %91

53:                                               ; preds = %46
  %54 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %55 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ERR_UNCOR_ID(i32 %56)
  %58 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %6, i32 0, i32 2
  store i32 %57, i32* %58, align 4
  %59 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %60 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PCI_ERR_ROOT_FATAL_RCV, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* @AER_FATAL, align 4
  %67 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %6, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  br label %71

68:                                               ; preds = %53
  %69 = load i32, i32* @AER_NONFATAL, align 4
  %70 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %6, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %73 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PCI_ERR_ROOT_MULTI_UNCOR_RCV, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %6, i32 0, i32 0
  store i32 1, i32* %79, align 4
  br label %82

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %6, i32 0, i32 0
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %84 = call i32 @aer_print_port_info(%struct.pci_dev* %83, %struct.aer_err_info* %6)
  %85 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %86 = call i64 @find_source_device(%struct.pci_dev* %85, %struct.aer_err_info* %6)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = call i32 @aer_process_err_devices(%struct.aer_err_info* %6)
  br label %90

90:                                               ; preds = %88, %82
  br label %91

91:                                               ; preds = %90, %46
  ret void
}

declare dso_local i32 @pci_rootport_aer_stats_incr(%struct.pci_dev*, %struct.aer_err_source*) #1

declare dso_local i32 @ERR_COR_ID(i32) #1

declare dso_local i32 @aer_print_port_info(%struct.pci_dev*, %struct.aer_err_info*) #1

declare dso_local i64 @find_source_device(%struct.pci_dev*, %struct.aer_err_info*) #1

declare dso_local i32 @aer_process_err_devices(%struct.aer_err_info*) #1

declare dso_local i32 @ERR_UNCOR_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
