; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_port_check_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_port_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_port = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@RP_PRIV_MISC = common dso_local global i64 0, align 8
@RP_PRIV_MISC_PRSNT_MAP_EP_ABSNT = common dso_local global i64 0, align 8
@RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT = common dso_local global i64 0, align 8
@TEGRA_PCIE_LINKUP_TIMEOUT = common dso_local global i32 0, align 4
@RP_VEND_XP = common dso_local global i64 0, align 8
@RP_VEND_XP_DL_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"link %u down, retrying\0A\00", align 1
@RP_LINK_CONTROL_STATUS = common dso_local global i64 0, align 8
@RP_LINK_CONTROL_STATUS_DL_LINK_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie_port*)* @tegra_pcie_port_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_port_check_link(%struct.tegra_pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie_port*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_pcie_port* %0, %struct.tegra_pcie_port** %3, align 8
  %8 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 3, i32* %5, align 4
  %13 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RP_PRIV_MISC, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @readl(i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* @RP_PRIV_MISC_PRSNT_MAP_EP_ABSNT, align 8
  %20 = xor i64 %19, -1
  %21 = load i64, i64* %6, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* @RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT, align 8
  %24 = load i64, i64* %6, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RP_PRIV_MISC, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i64 %26, i64 %31)
  br label %33

33:                                               ; preds = %86, %1
  %34 = load i32, i32* @TEGRA_PCIE_LINKUP_TIMEOUT, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %49, %33
  %36 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RP_VEND_XP, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i64 @readl(i64 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @RP_VEND_XP_DL_UP, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %53

47:                                               ; preds = %35
  %48 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, -1
  store i32 %51, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %35, label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %3, align 8
  %59 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_dbg(%struct.device* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %83

62:                                               ; preds = %53
  %63 = load i32, i32* @TEGRA_PCIE_LINKUP_TIMEOUT, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %78, %62
  %65 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %3, align 8
  %66 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RP_LINK_CONTROL_STATUS, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i64 @readl(i64 %69)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @RP_LINK_CONTROL_STATUS_DL_LINK_ACTIVE, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store i32 1, i32* %2, align 4
  br label %91

76:                                               ; preds = %64
  %77 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, -1
  store i32 %80, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %64, label %82

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %82, %56
  %84 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %3, align 8
  %85 = call i32 @tegra_pcie_port_reset(%struct.tegra_pcie_port* %84)
  br label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = add i32 %87, -1
  store i32 %88, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %33, label %90

90:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %75
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @tegra_pcie_port_reset(%struct.tegra_pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
