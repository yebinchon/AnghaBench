; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_set_power_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_set_power_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i32, i32 }

@PCIE_RC_CONFIG_DCR_CSPL_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid power supply\0A\00", align 1
@PCIE_RC_CONFIG_DCR = common dso_local global i32 0, align 4
@PCIE_RC_CONFIG_DCR_CSPL_SHIFT = common dso_local global i32 0, align 4
@PCIE_RC_CONFIG_DCR_CPLS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_pcie*)* @rockchip_pcie_set_power_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_pcie_set_power_limit(%struct.rockchip_pcie* %0) #0 {
  %2 = alloca %struct.rockchip_pcie*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %2, align 8
  %7 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %2, align 8
  %8 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @IS_ERR(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %61

13:                                               ; preds = %1
  %14 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %2, align 8
  %15 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regulator_get_current_limit(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %61

21:                                               ; preds = %13
  store i32 3, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sdiv i32 %22, 1000
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = mul nsw i32 %24, 3300
  %26 = sdiv i32 %25, 1000
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %39, %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PCIE_RC_CONFIG_DCR_CSPL_LIMIT, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %2, align 8
  %36 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %61

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sdiv i32 %42, 10
  store i32 %43, i32* %6, align 4
  br label %27

44:                                               ; preds = %27
  %45 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %2, align 8
  %46 = load i32, i32* @PCIE_RC_CONFIG_DCR, align 4
  %47 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @PCIE_RC_CONFIG_DCR_CSPL_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @PCIE_RC_CONFIG_DCR_CPLS_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %50, %53
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %2, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @PCIE_RC_CONFIG_DCR, align 4
  %60 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %44, %34, %20, %12
  ret void
}

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @regulator_get_current_limit(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @rockchip_pcie_read(%struct.rockchip_pcie*, i32) #1

declare dso_local i32 @rockchip_pcie_write(%struct.rockchip_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
