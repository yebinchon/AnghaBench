; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-ep.c_rockchip_pcie_parse_ep_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-ep.c_rockchip_pcie_parse_ep_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { %struct.device* }
%struct.device = type { i32 }
%struct.rockchip_pcie_ep = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"rockchip,max-outbound-regions\00", align 1
@MAX_REGION_LIMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"max-functions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pcie*, %struct.rockchip_pcie_ep*)* @rockchip_pcie_parse_ep_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_parse_ep_dt(%struct.rockchip_pcie* %0, %struct.rockchip_pcie_ep* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rockchip_pcie*, align 8
  %5 = alloca %struct.rockchip_pcie_ep*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %4, align 8
  store %struct.rockchip_pcie_ep* %1, %struct.rockchip_pcie_ep** %5, align 8
  %8 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %4, align 8
  %9 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %4, align 8
  %12 = call i32 @rockchip_pcie_parse_dt(%struct.rockchip_pcie* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %4, align 8
  %19 = call i32 @rockchip_pcie_get_phys(%struct.rockchip_pcie* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %17
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %5, align 8
  %29 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %28, i32 0, i32 1
  %30 = call i32 @of_property_read_u32(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %24
  %34 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %5, align 8
  %35 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MAX_REGION_LIMIT, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33, %24
  %40 = load i32, i32* @MAX_REGION_LIMIT, align 4
  %41 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %5, align 8
  %42 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %5, align 8
  %48 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @of_property_read_u8(i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %5, align 8
  %56 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %43
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %22, %15
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @rockchip_pcie_parse_dt(%struct.rockchip_pcie*) #1

declare dso_local i32 @rockchip_pcie_get_phys(%struct.rockchip_pcie*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @of_property_read_u8(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
