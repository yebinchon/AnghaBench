; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-spear13xx.c_spear13xx_pcie_establish_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-spear13xx.c_spear13xx_pcie_establish_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear13xx_pcie = type { i64, %struct.pcie_app_reg*, %struct.dw_pcie* }
%struct.pcie_app_reg = type { i32 }
%struct.dw_pcie = type { i32, i32, %struct.pcie_port }
%struct.pcie_port = type { i32 }

@EXP_CAP_ID_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"link already up\0A\00", align 1
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_READRQ = common dso_local global i32 0, align 4
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_SLS = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_SLS_2_5GB = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL2 = common dso_local global i32 0, align 4
@DEVICE_TYPE_RC = common dso_local global i32 0, align 4
@MISCTRL_EN_ID = common dso_local global i32 0, align 4
@APP_LTSSM_ENABLE_ID = common dso_local global i32 0, align 4
@REG_TRANSLATION_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spear13xx_pcie*)* @spear13xx_pcie_establish_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear13xx_pcie_establish_link(%struct.spear13xx_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spear13xx_pcie*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.pcie_port*, align 8
  %6 = alloca %struct.pcie_app_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spear13xx_pcie* %0, %struct.spear13xx_pcie** %3, align 8
  %9 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %9, i32 0, i32 2
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  store %struct.dw_pcie* %11, %struct.dw_pcie** %4, align 8
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %13 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %12, i32 0, i32 2
  store %struct.pcie_port* %13, %struct.pcie_port** %5, align 8
  %14 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %3, align 8
  %15 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %14, i32 0, i32 1
  %16 = load %struct.pcie_app_reg*, %struct.pcie_app_reg** %15, align 8
  store %struct.pcie_app_reg* %16, %struct.pcie_app_reg** %6, align 8
  %17 = load i32, i32* @EXP_CAP_ID_OFFSET, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %19 = call i64 @dw_pcie_link_up(%struct.dw_pcie* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %23 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %145

26:                                               ; preds = %1
  %27 = load %struct.pcie_port*, %struct.pcie_port** %5, align 8
  %28 = call i32 @dw_pcie_setup_rc(%struct.pcie_port* %27)
  %29 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %30 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @dw_pcie_read(i32 %35, i32 2, i32* %7)
  %37 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %42 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dw_pcie_write(i32 %47, i32 2, i32 %48)
  %50 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %51 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PCI_VENDOR_ID, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @dw_pcie_write(i32 %54, i32 2, i32 4170)
  %56 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %57 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PCI_DEVICE_ID, align 4
  %60 = add nsw i32 %58, %59
  %61 = call i32 @dw_pcie_write(i32 %60, i32 2, i32 52608)
  %62 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %3, align 8
  %63 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %129

66:                                               ; preds = %26
  %67 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %68 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @dw_pcie_read(i32 %73, i32 4, i32* %7)
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @PCI_EXP_LNKCAP_SLS, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @PCI_EXP_LNKCAP_SLS_2_5GB, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %66
  %81 = load i32, i32* @PCI_EXP_LNKCAP_SLS, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @PCI_EXP_LNKCAP_SLS_2_5GB, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %89 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @dw_pcie_write(i32 %94, i32 4, i32 %95)
  br label %97

97:                                               ; preds = %80, %66
  %98 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %99 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* @PCI_EXP_LNKCTL2, align 4
  %104 = add nsw i32 %102, %103
  %105 = call i32 @dw_pcie_read(i32 %104, i32 2, i32* %7)
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @PCI_EXP_LNKCAP_SLS, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @PCI_EXP_LNKCAP_SLS_2_5GB, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %97
  %112 = load i32, i32* @PCI_EXP_LNKCAP_SLS, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %7, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* @PCI_EXP_LNKCAP_SLS_2_5GB, align 4
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %7, align 4
  %119 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %120 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* @PCI_EXP_LNKCTL2, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @dw_pcie_write(i32 %125, i32 2, i32 %126)
  br label %128

128:                                              ; preds = %111, %97
  br label %129

129:                                              ; preds = %128, %26
  %130 = load i32, i32* @DEVICE_TYPE_RC, align 4
  %131 = load i32, i32* @MISCTRL_EN_ID, align 4
  %132 = shl i32 1, %131
  %133 = or i32 %130, %132
  %134 = load i32, i32* @APP_LTSSM_ENABLE_ID, align 4
  %135 = shl i32 1, %134
  %136 = or i32 %133, %135
  %137 = load i32, i32* @REG_TRANSLATION_ENABLE, align 4
  %138 = shl i32 1, %137
  %139 = or i32 %136, %138
  %140 = load %struct.pcie_app_reg*, %struct.pcie_app_reg** %6, align 8
  %141 = getelementptr inbounds %struct.pcie_app_reg, %struct.pcie_app_reg* %140, i32 0, i32 0
  %142 = call i32 @writel(i32 %139, i32* %141)
  %143 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %144 = call i32 @dw_pcie_wait_for_link(%struct.dw_pcie* %143)
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %129, %21
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i64 @dw_pcie_link_up(%struct.dw_pcie*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dw_pcie_setup_rc(%struct.pcie_port*) #1

declare dso_local i32 @dw_pcie_read(i32, i32, i32*) #1

declare dso_local i32 @dw_pcie_write(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dw_pcie_wait_for_link(%struct.dw_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
