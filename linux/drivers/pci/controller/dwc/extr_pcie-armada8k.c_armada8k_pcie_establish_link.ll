; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-armada8k.c_armada8k_pcie_establish_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-armada8k.c_armada8k_pcie_establish_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada8k_pcie = type { %struct.dw_pcie* }
%struct.dw_pcie = type { i32 }

@PCIE_GLOBAL_CONTROL_REG = common dso_local global i32 0, align 4
@PCIE_APP_LTSSM_EN = common dso_local global i32 0, align 4
@PCIE_DEVICE_TYPE_MASK = common dso_local global i32 0, align 4
@PCIE_DEVICE_TYPE_SHIFT = common dso_local global i32 0, align 4
@PCIE_DEVICE_TYPE_RC = common dso_local global i32 0, align 4
@PCIE_ARCACHE_TRC_REG = common dso_local global i32 0, align 4
@ARCACHE_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PCIE_AWCACHE_TRC_REG = common dso_local global i32 0, align 4
@AWCACHE_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PCIE_ARUSER_REG = common dso_local global i32 0, align 4
@AX_USER_DOMAIN_MASK = common dso_local global i32 0, align 4
@AX_USER_DOMAIN_SHIFT = common dso_local global i32 0, align 4
@DOMAIN_OUTER_SHAREABLE = common dso_local global i32 0, align 4
@PCIE_AWUSER_REG = common dso_local global i32 0, align 4
@PCIE_GLOBAL_INT_MASK1_REG = common dso_local global i32 0, align 4
@PCIE_INT_A_ASSERT_MASK = common dso_local global i32 0, align 4
@PCIE_INT_B_ASSERT_MASK = common dso_local global i32 0, align 4
@PCIE_INT_C_ASSERT_MASK = common dso_local global i32 0, align 4
@PCIE_INT_D_ASSERT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Link not up after reconfiguration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.armada8k_pcie*)* @armada8k_pcie_establish_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada8k_pcie_establish_link(%struct.armada8k_pcie* %0) #0 {
  %2 = alloca %struct.armada8k_pcie*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca i32, align 4
  store %struct.armada8k_pcie* %0, %struct.armada8k_pcie** %2, align 8
  %5 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %2, align 8
  %6 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %5, i32 0, i32 0
  %7 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  store %struct.dw_pcie* %7, %struct.dw_pcie** %3, align 8
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %9 = call i32 @dw_pcie_link_up(%struct.dw_pcie* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %13 = load i32, i32* @PCIE_GLOBAL_CONTROL_REG, align 4
  %14 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @PCIE_APP_LTSSM_EN, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %20 = load i32, i32* @PCIE_GLOBAL_CONTROL_REG, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %11, %1
  %24 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %25 = load i32, i32* @PCIE_GLOBAL_CONTROL_REG, align 4
  %26 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @PCIE_DEVICE_TYPE_MASK, align 4
  %28 = load i32, i32* @PCIE_DEVICE_TYPE_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @PCIE_DEVICE_TYPE_RC, align 4
  %34 = load i32, i32* @PCIE_DEVICE_TYPE_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %39 = load i32, i32* @PCIE_GLOBAL_CONTROL_REG, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %38, i32 %39, i32 %40)
  %42 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %43 = load i32, i32* @PCIE_ARCACHE_TRC_REG, align 4
  %44 = load i32, i32* @ARCACHE_DEFAULT_VALUE, align 4
  %45 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %42, i32 %43, i32 %44)
  %46 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %47 = load i32, i32* @PCIE_AWCACHE_TRC_REG, align 4
  %48 = load i32, i32* @AWCACHE_DEFAULT_VALUE, align 4
  %49 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %46, i32 %47, i32 %48)
  %50 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %51 = load i32, i32* @PCIE_ARUSER_REG, align 4
  %52 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @AX_USER_DOMAIN_MASK, align 4
  %54 = load i32, i32* @AX_USER_DOMAIN_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @DOMAIN_OUTER_SHAREABLE, align 4
  %60 = load i32, i32* @AX_USER_DOMAIN_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %65 = load i32, i32* @PCIE_ARUSER_REG, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %64, i32 %65, i32 %66)
  %68 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %69 = load i32, i32* @PCIE_AWUSER_REG, align 4
  %70 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @AX_USER_DOMAIN_MASK, align 4
  %72 = load i32, i32* @AX_USER_DOMAIN_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %4, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* @DOMAIN_OUTER_SHAREABLE, align 4
  %78 = load i32, i32* @AX_USER_DOMAIN_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %83 = load i32, i32* @PCIE_AWUSER_REG, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %82, i32 %83, i32 %84)
  %86 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %87 = load i32, i32* @PCIE_GLOBAL_INT_MASK1_REG, align 4
  %88 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %86, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* @PCIE_INT_A_ASSERT_MASK, align 4
  %90 = load i32, i32* @PCIE_INT_B_ASSERT_MASK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @PCIE_INT_C_ASSERT_MASK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @PCIE_INT_D_ASSERT_MASK, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %4, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %4, align 4
  %98 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %99 = load i32, i32* @PCIE_GLOBAL_INT_MASK1_REG, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %98, i32 %99, i32 %100)
  %102 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %103 = call i32 @dw_pcie_link_up(%struct.dw_pcie* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %23
  %106 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %107 = load i32, i32* @PCIE_GLOBAL_CONTROL_REG, align 4
  %108 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %106, i32 %107)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* @PCIE_APP_LTSSM_EN, align 4
  %110 = load i32, i32* %4, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %4, align 4
  %112 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %113 = load i32, i32* @PCIE_GLOBAL_CONTROL_REG, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %105, %23
  %117 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %118 = call i64 @dw_pcie_wait_for_link(%struct.dw_pcie* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %122 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %125

125:                                              ; preds = %120, %116
  ret void
}

declare dso_local i32 @dw_pcie_link_up(%struct.dw_pcie*) #1

declare dso_local i32 @dw_pcie_readl_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i32, i32) #1

declare dso_local i64 @dw_pcie_wait_for_link(%struct.dw_pcie*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
