; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_handle_error_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_handle_error_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keystone_pcie = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@ERR_IRQ_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ERR_SYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"System Error\0A\00", align 1
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Fatal Error\0A\00", align 1
@ERR_NONFATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Non Fatal Error\0A\00", align 1
@ERR_CORR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Correctable Error\0A\00", align 1
@ERR_AXI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"AXI tag lookup fatal Error\0A\00", align 1
@ERR_AER = common dso_local global i32 0, align 4
@AM6_ERR_AER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"ECRC Error\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.keystone_pcie*)* @ks_pcie_handle_error_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_pcie_handle_error_irq(%struct.keystone_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.keystone_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.keystone_pcie* %0, %struct.keystone_pcie** %3, align 8
  %6 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %12 = load i32, i32* @ERR_IRQ_STATUS, align 4
  %13 = call i32 @ks_pcie_app_readl(%struct.keystone_pcie* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %2, align 4
  br label %87

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ERR_SYS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @ERR_FATAL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ERR_NONFATAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = call i32 @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ERR_CORR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = call i32 @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %52 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @ERR_AXI, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %55, %50
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @ERR_AER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %70 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @AM6_ERR_AER, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73, %63
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %73, %68
  %82 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %83 = load i32, i32* @ERR_IRQ_STATUS, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @ks_pcie_app_writel(%struct.keystone_pcie* %82, i32 %83, i32 %84)
  %86 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %81, %16
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @ks_pcie_app_readl(%struct.keystone_pcie*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @ks_pcie_app_writel(%struct.keystone_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
