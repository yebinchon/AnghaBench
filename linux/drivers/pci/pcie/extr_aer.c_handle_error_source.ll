; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_handle_error_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_handle_error_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.aer_err_info = type { i64, i32 }

@AER_CORRECTABLE = common dso_local global i64 0, align 8
@PCI_ERR_COR_STATUS = common dso_local global i64 0, align 8
@AER_NONFATAL = common dso_local global i64 0, align 8
@pci_channel_io_normal = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_AER = common dso_local global i32 0, align 4
@AER_FATAL = common dso_local global i64 0, align 8
@pci_channel_io_frozen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.aer_err_info*)* @handle_error_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_error_source(%struct.pci_dev* %0, %struct.aer_err_info* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.aer_err_info*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.aer_err_info* %1, %struct.aer_err_info** %4, align 8
  %6 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %7 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AER_CORRECTABLE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @PCI_ERR_COR_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %24 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pci_write_config_dword(%struct.pci_dev* %18, i64 %22, i32 %25)
  br label %27

27:                                               ; preds = %17, %11
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = call i32 @pci_aer_clear_device_status(%struct.pci_dev* %28)
  br label %54

30:                                               ; preds = %2
  %31 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %32 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AER_NONFATAL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load i32, i32* @pci_channel_io_normal, align 4
  %39 = load i32, i32* @PCIE_PORT_SERVICE_AER, align 4
  %40 = call i32 @pcie_do_recovery(%struct.pci_dev* %37, i32 %38, i32 %39)
  br label %53

41:                                               ; preds = %30
  %42 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %43 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AER_FATAL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %49 = load i32, i32* @pci_channel_io_frozen, align 4
  %50 = load i32, i32* @PCIE_PORT_SERVICE_AER, align 4
  %51 = call i32 @pcie_do_recovery(%struct.pci_dev* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %41
  br label %53

53:                                               ; preds = %52, %36
  br label %54

54:                                               ; preds = %53, %27
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = call i32 @pci_dev_put(%struct.pci_dev* %55)
  ret void
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_aer_clear_device_status(%struct.pci_dev*) #1

declare dso_local i32 @pcie_do_recovery(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
