; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_cfg_atu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_cfg_atu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i32, i32, i64, i64, i64, %struct.device* }
%struct.device = type { i32 }

@AXI_WRAPPER_TYPE0_CFG = common dso_local global i32 0, align 4
@AXI_WRAPPER_MEM_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"program RC mem outbound ATU failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"program RC mem inbound ATU failed\0A\00", align 1
@AXI_WRAPPER_IO_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"program RC io outbound ATU failed\0A\00", align 1
@AXI_WRAPPER_NOR_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pcie*)* @rockchip_pcie_cfg_atu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_cfg_atu(%struct.rockchip_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %3, align 8
  %8 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %8, i32 0, i32 5
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %12 = load i32, i32* @AXI_WRAPPER_TYPE0_CFG, align 4
  %13 = call i32 @rockchip_pcie_cfg_configuration_accesses(%struct.rockchip_pcie* %11, i32 %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %41, %1
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %17 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 20
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %14
  %22 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* @AXI_WRAPPER_MEM_WRITE, align 4
  %26 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %27 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 20
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = call i32 @rockchip_pcie_prog_ob_atu(%struct.rockchip_pcie* %22, i32 %24, i32 %25, i32 19, i64 %32, i32 0)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %110

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %14

44:                                               ; preds = %14
  %45 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %46 = call i32 @rockchip_pcie_prog_ib_atu(%struct.rockchip_pcie* %45, i32 2, i32 31, i32 0, i32 0)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %110

53:                                               ; preds = %44
  %54 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %55 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = ashr i32 %56, 20
  store i32 %57, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %87, %53
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %61 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 20
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %58
  %66 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @AXI_WRAPPER_IO_WRITE, align 4
  %72 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %73 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 %75, 20
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %74, %77
  %79 = call i32 @rockchip_pcie_prog_ob_atu(%struct.rockchip_pcie* %66, i32 %70, i32 %71, i32 19, i64 %78, i32 0)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %65
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %110

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %58

90:                                               ; preds = %58
  %91 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* @AXI_WRAPPER_NOR_MSG, align 4
  %97 = call i32 @rockchip_pcie_prog_ob_atu(%struct.rockchip_pcie* %91, i32 %95, i32 %96, i32 19, i64 0, i32 0)
  %98 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %99 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %101, %102
  %104 = shl i32 %103, 20
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %100, %105
  %107 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %108 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %90, %82, %49, %36
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @rockchip_pcie_cfg_configuration_accesses(%struct.rockchip_pcie*, i32) #1

declare dso_local i32 @rockchip_pcie_prog_ob_atu(%struct.rockchip_pcie*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @rockchip_pcie_prog_ib_atu(%struct.rockchip_pcie*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
