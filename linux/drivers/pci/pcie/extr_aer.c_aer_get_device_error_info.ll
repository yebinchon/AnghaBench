; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_get_device_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_get_device_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.aer_err_info = type { i32, i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@AER_CORRECTABLE = common dso_local global i64 0, align 8
@PCI_ERR_COR_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_COR_MASK = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_DOWNSTREAM = common dso_local global i64 0, align 8
@AER_NONFATAL = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_MASK = common dso_local global i64 0, align 8
@PCI_ERR_CAP = common dso_local global i64 0, align 8
@AER_LOG_TLP_MASKS = common dso_local global i32 0, align 4
@PCI_ERR_HEADER_LOG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aer_get_device_error_info(%struct.pci_dev* %0, %struct.aer_err_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.aer_err_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.aer_err_info* %1, %struct.aer_err_info** %5, align 8
  %8 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %9 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %11 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %157

18:                                               ; preds = %2
  %19 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %20 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AER_CORRECTABLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %18
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @PCI_ERR_COR_STATUS, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %31 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %30, i32 0, i32 0
  %32 = call i32 @pci_read_config_dword(%struct.pci_dev* %25, i64 %29, i32* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @PCI_ERR_COR_MASK, align 8
  %37 = add nsw i64 %35, %36
  %38 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %39 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %38, i32 0, i32 3
  %40 = call i32 @pci_read_config_dword(%struct.pci_dev* %33, i64 %37, i32* %39)
  %41 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %42 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %45 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = xor i32 %46, -1
  %48 = and i32 %43, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %157

51:                                               ; preds = %24
  br label %156

52:                                               ; preds = %18
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call i64 @pci_pcie_type(%struct.pci_dev* %53)
  %55 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = call i64 @pci_pcie_type(%struct.pci_dev* %58)
  %60 = load i64, i64* @PCI_EXP_TYPE_DOWNSTREAM, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %64 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AER_NONFATAL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %155

68:                                               ; preds = %62, %57, %52
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %73 = add nsw i64 %71, %72
  %74 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %75 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %74, i32 0, i32 0
  %76 = call i32 @pci_read_config_dword(%struct.pci_dev* %69, i64 %73, i32* %75)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @PCI_ERR_UNCOR_MASK, align 8
  %81 = add nsw i64 %79, %80
  %82 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %83 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %82, i32 0, i32 3
  %84 = call i32 @pci_read_config_dword(%struct.pci_dev* %77, i64 %81, i32* %83)
  %85 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %86 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %89 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = xor i32 %90, -1
  %92 = and i32 %87, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %157

95:                                               ; preds = %68
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* @PCI_ERR_CAP, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @pci_read_config_dword(%struct.pci_dev* %96, i64 %100, i32* %7)
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @PCI_ERR_CAP_FEP(i32 %102)
  %104 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %105 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %107 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @AER_LOG_TLP_MASKS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %154

112:                                              ; preds = %95
  %113 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %114 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  %115 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* @PCI_ERR_HEADER_LOG, align 8
  %119 = add nsw i64 %117, %118
  %120 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %121 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = call i32 @pci_read_config_dword(%struct.pci_dev* %115, i64 %119, i32* %122)
  %124 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* @PCI_ERR_HEADER_LOG, align 8
  %128 = add nsw i64 %126, %127
  %129 = add nsw i64 %128, 4
  %130 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %131 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = call i32 @pci_read_config_dword(%struct.pci_dev* %124, i64 %129, i32* %132)
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* @PCI_ERR_HEADER_LOG, align 8
  %138 = add nsw i64 %136, %137
  %139 = add nsw i64 %138, 8
  %140 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %141 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  %143 = call i32 @pci_read_config_dword(%struct.pci_dev* %134, i64 %139, i32* %142)
  %144 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* @PCI_ERR_HEADER_LOG, align 8
  %148 = add nsw i64 %146, %147
  %149 = add nsw i64 %148, 12
  %150 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %151 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 3
  %153 = call i32 @pci_read_config_dword(%struct.pci_dev* %144, i64 %149, i32* %152)
  br label %154

154:                                              ; preds = %112, %95
  br label %155

155:                                              ; preds = %154, %62
  br label %156

156:                                              ; preds = %155, %51
  store i32 1, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %94, %50, %17
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @PCI_ERR_CAP_FEP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
