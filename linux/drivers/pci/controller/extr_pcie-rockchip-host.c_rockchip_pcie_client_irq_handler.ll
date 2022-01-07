; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_client_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_client_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { %struct.device* }
%struct.device = type { i32 }

@PCIE_CLIENT_INT_STATUS = common dso_local global i32 0, align 4
@PCIE_CLIENT_INT_LEGACY_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"legacy done interrupt received\0A\00", align 1
@PCIE_CLIENT_INT_MSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"message done interrupt received\0A\00", align 1
@PCIE_CLIENT_INT_HOT_RST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"hot reset interrupt received\0A\00", align 1
@PCIE_CLIENT_INT_DPA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"dpa interrupt received\0A\00", align 1
@PCIE_CLIENT_INT_FATAL_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"fatal error interrupt received\0A\00", align 1
@PCIE_CLIENT_INT_NFATAL_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"no fatal error interrupt received\0A\00", align 1
@PCIE_CLIENT_INT_CORR_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"correctable error interrupt received\0A\00", align 1
@PCIE_CLIENT_INT_PHY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"phy interrupt received\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rockchip_pcie_client_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_client_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rockchip_pcie*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.rockchip_pcie*
  store %struct.rockchip_pcie* %9, %struct.rockchip_pcie** %5, align 8
  %10 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %5, align 8
  %11 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %5, align 8
  %14 = load i32, i32* @PCIE_CLIENT_INT_STATUS, align 4
  %15 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PCIE_CLIENT_INT_LEGACY_DONE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PCIE_CLIENT_INT_MSG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PCIE_CLIENT_INT_HOT_RST, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i32 @dev_dbg(%struct.device* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @PCIE_CLIENT_INT_DPA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 @dev_dbg(%struct.device* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @PCIE_CLIENT_INT_FATAL_ERR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = call i32 @dev_dbg(%struct.device* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @PCIE_CLIENT_INT_NFATAL_ERR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i32 @dev_dbg(%struct.device* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @PCIE_CLIENT_INT_CORR_ERR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = call i32 @dev_dbg(%struct.device* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @PCIE_CLIENT_INT_PHY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = call i32 @dev_dbg(%struct.device* %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @PCIE_CLIENT_INT_LEGACY_DONE, align 4
  %83 = load i32, i32* @PCIE_CLIENT_INT_MSG, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @PCIE_CLIENT_INT_HOT_RST, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @PCIE_CLIENT_INT_DPA, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @PCIE_CLIENT_INT_FATAL_ERR, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @PCIE_CLIENT_INT_NFATAL_ERR, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @PCIE_CLIENT_INT_CORR_ERR, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @PCIE_CLIENT_INT_PHY, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %81, %96
  %98 = load i32, i32* @PCIE_CLIENT_INT_STATUS, align 4
  %99 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %80, i32 %97, i32 %98)
  %100 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %100
}

declare dso_local i32 @rockchip_pcie_read(%struct.rockchip_pcie*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @rockchip_pcie_write(%struct.rockchip_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
