; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_pcie_enable_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_pcie_enable_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nwl_pcie = type { i64, %struct.nwl_msi, %struct.device* }
%struct.nwl_msi = type { i64, i64, i32*, i32 }
%struct.device = type { i32 }
%struct.platform_device = type { i32 }

@INT_PCI_MSI_NR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"msi1\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to get IRQ#%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@nwl_pcie_msi_handler_high = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"msi0\00", align 1
@nwl_pcie_msi_handler_low = common dso_local global i32 0, align 4
@I_MSII_CAPABILITIES = common dso_local global i32 0, align 4
@MSII_PRESENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"MSI not present\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@I_MSII_CONTROL = common dso_local global i32 0, align 4
@MSII_ENABLE = common dso_local global i32 0, align 4
@MSII_STATUS_ENABLE = common dso_local global i32 0, align 4
@I_MSII_BASE_LO = common dso_local global i32 0, align 4
@I_MSII_BASE_HI = common dso_local global i32 0, align 4
@MSGF_MSI_MASK_HI = common dso_local global i32 0, align 4
@MSGF_MSI_STATUS_HI = common dso_local global i32 0, align 4
@MSGF_MSI_SR_HI_MASK = common dso_local global i32 0, align 4
@MSGF_MSI_MASK_LO = common dso_local global i32 0, align 4
@MSGF_MSI_STATUS_LO = common dso_local global i32 0, align 4
@MSGF_MSI_SR_LO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nwl_pcie*)* @nwl_pcie_enable_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nwl_pcie_enable_msi(%struct.nwl_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nwl_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.nwl_msi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nwl_pcie* %0, %struct.nwl_pcie** %3, align 8
  %10 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %10, i32 0, i32 2
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.platform_device* @to_platform_device(%struct.device* %13)
  store %struct.platform_device* %14, %struct.platform_device** %5, align 8
  %15 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %16 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %15, i32 0, i32 1
  store %struct.nwl_msi* %16, %struct.nwl_msi** %6, align 8
  %17 = load i32, i32* @INT_PCI_MSI_NR, align 4
  %18 = call i32 @BITS_TO_LONGS(i32 %17)
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load %struct.nwl_msi*, %struct.nwl_msi** %6, align 8
  %23 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %22, i32 0, i32 3
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kzalloc(i32 %25, i32 %26)
  %28 = load %struct.nwl_msi*, %struct.nwl_msi** %6, align 8
  %29 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.nwl_msi*, %struct.nwl_msi** %6, align 8
  %31 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %166

37:                                               ; preds = %1
  %38 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %39 = call i8* @platform_get_irq_byname(%struct.platform_device* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.nwl_msi*, %struct.nwl_msi** %6, align 8
  %42 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.nwl_msi*, %struct.nwl_msi** %6, align 8
  %44 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load %struct.nwl_msi*, %struct.nwl_msi** %6, align 8
  %50 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %158

55:                                               ; preds = %37
  %56 = load %struct.nwl_msi*, %struct.nwl_msi** %6, align 8
  %57 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @nwl_pcie_msi_handler_high, align 4
  %60 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %61 = call i32 @irq_set_chained_handler_and_data(i64 %58, i32 %59, %struct.nwl_pcie* %60)
  %62 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %63 = call i8* @platform_get_irq_byname(%struct.platform_device* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.nwl_msi*, %struct.nwl_msi** %6, align 8
  %66 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.nwl_msi*, %struct.nwl_msi** %6, align 8
  %68 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %55
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load %struct.nwl_msi*, %struct.nwl_msi** %6, align 8
  %74 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %158

79:                                               ; preds = %55
  %80 = load %struct.nwl_msi*, %struct.nwl_msi** %6, align 8
  %81 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @nwl_pcie_msi_handler_low, align 4
  %84 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %85 = call i32 @irq_set_chained_handler_and_data(i64 %82, i32 %83, %struct.nwl_pcie* %84)
  %86 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %87 = load i32, i32* @I_MSII_CAPABILITIES, align 4
  %88 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %86, i32 %87)
  %89 = load i32, i32* @MSII_PRESENT, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %79
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %8, align 4
  br label %158

98:                                               ; preds = %79
  %99 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %100 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %101 = load i32, i32* @I_MSII_CONTROL, align 4
  %102 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %100, i32 %101)
  %103 = load i32, i32* @MSII_ENABLE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @I_MSII_CONTROL, align 4
  %106 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %99, i32 %104, i32 %105)
  %107 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %108 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %109 = load i32, i32* @I_MSII_CONTROL, align 4
  %110 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %108, i32 %109)
  %111 = load i32, i32* @MSII_STATUS_ENABLE, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @I_MSII_CONTROL, align 4
  %114 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %107, i32 %112, i32 %113)
  %115 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %116 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %7, align 8
  %118 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @lower_32_bits(i64 %119)
  %121 = load i32, i32* @I_MSII_BASE_LO, align 4
  %122 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %118, i32 %120, i32 %121)
  %123 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @upper_32_bits(i64 %124)
  %126 = load i32, i32* @I_MSII_BASE_HI, align 4
  %127 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %123, i32 %125, i32 %126)
  %128 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %129 = load i32, i32* @MSGF_MSI_MASK_HI, align 4
  %130 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %128, i32 0, i32 %129)
  %131 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %132 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %133 = load i32, i32* @MSGF_MSI_STATUS_HI, align 4
  %134 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %132, i32 %133)
  %135 = load i32, i32* @MSGF_MSI_SR_HI_MASK, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* @MSGF_MSI_STATUS_HI, align 4
  %138 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %131, i32 %136, i32 %137)
  %139 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %140 = load i32, i32* @MSGF_MSI_SR_HI_MASK, align 4
  %141 = load i32, i32* @MSGF_MSI_MASK_HI, align 4
  %142 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %139, i32 %140, i32 %141)
  %143 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %144 = load i32, i32* @MSGF_MSI_MASK_LO, align 4
  %145 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %143, i32 0, i32 %144)
  %146 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %147 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %148 = load i32, i32* @MSGF_MSI_STATUS_LO, align 4
  %149 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %147, i32 %148)
  %150 = load i32, i32* @MSGF_MSI_SR_LO_MASK, align 4
  %151 = and i32 %149, %150
  %152 = load i32, i32* @MSGF_MSI_STATUS_LO, align 4
  %153 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %146, i32 %151, i32 %152)
  %154 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %155 = load i32, i32* @MSGF_MSI_SR_LO_MASK, align 4
  %156 = load i32, i32* @MSGF_MSI_MASK_LO, align 4
  %157 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %154, i32 %155, i32 %156)
  store i32 0, i32* %2, align 4
  br label %166

158:                                              ; preds = %93, %71, %47
  %159 = load %struct.nwl_msi*, %struct.nwl_msi** %6, align 8
  %160 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @kfree(i32* %161)
  %163 = load %struct.nwl_msi*, %struct.nwl_msi** %6, align 8
  %164 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %163, i32 0, i32 2
  store i32* null, i32** %164, align 8
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %158, %98, %34
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i8* @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i64, i32, %struct.nwl_pcie*) #1

declare dso_local i32 @nwl_bridge_readl(%struct.nwl_pcie*, i32) #1

declare dso_local i32 @nwl_bridge_writel(%struct.nwl_pcie*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
