; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-mdio.c_cvm_oct_phy_setup_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-mdio.c_cvm_oct_phy_setup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_ethernet = type { i64, i32, i32 }
%struct.device_node = type { i32 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@cvm_oct_adjust_link = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_phy_setup_device(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.octeon_ethernet*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %8)
  store %struct.octeon_ethernet* %9, %struct.octeon_ethernet** %4, align 8
  store %struct.phy_device* null, %struct.phy_device** %6, align 8
  %10 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %11 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %66

15:                                               ; preds = %1
  %16 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %17 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.device_node* @of_parse_phandle(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %19, %struct.device_node** %5, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %15
  %23 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %24 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @of_phy_is_fixed_link(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %30 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @of_phy_register_fixed_link(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %69

37:                                               ; preds = %28
  %38 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %39 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.device_node* @of_node_get(i32 %40)
  store %struct.device_node* %41, %struct.device_node** %5, align 8
  br label %42

42:                                               ; preds = %37, %22, %15
  %43 = load %struct.device_node*, %struct.device_node** %5, align 8
  %44 = icmp ne %struct.device_node* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %66

46:                                               ; preds = %42
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = load %struct.device_node*, %struct.device_node** %5, align 8
  %49 = load i32, i32* @cvm_oct_adjust_link, align 4
  %50 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %51 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %47, %struct.device_node* %48, i32 %49, i32 0, i32 %52)
  store %struct.phy_device* %53, %struct.phy_device** %6, align 8
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = call i32 @of_node_put(%struct.device_node* %54)
  %56 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %57 = icmp ne %struct.phy_device* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %46
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %69

61:                                               ; preds = %46
  %62 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %63 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %65 = call i32 @phy_start(%struct.phy_device* %64)
  store i32 0, i32* %2, align 4
  br label %69

66:                                               ; preds = %45, %14
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = call i32 @netif_carrier_on(%struct.net_device* %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %66, %61, %58, %35
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i64 @of_phy_is_fixed_link(i32) #1

declare dso_local i32 @of_phy_register_fixed_link(i32) #1

declare dso_local %struct.device_node* @of_node_get(i32) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, %struct.device_node*, i32, i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @phy_start(%struct.phy_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
