; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_of_mdio.c_of_phy_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_of_mdio.c_of_phy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.device_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_device* @of_phy_connect(%struct.net_device* %0, %struct.device_node* %1, void (%struct.net_device*)* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca void (%struct.net_device*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.phy_device*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store void (%struct.net_device*)* %2, void (%struct.net_device*)** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.device_node*, %struct.device_node** %8, align 8
  %15 = call %struct.phy_device* @of_phy_find_device(%struct.device_node* %14)
  store %struct.phy_device* %15, %struct.phy_device** %12, align 8
  %16 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %17 = icmp ne %struct.phy_device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.phy_device* null, %struct.phy_device** %6, align 8
  br label %39

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %25 = load void (%struct.net_device*)*, void (%struct.net_device*)** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @phy_connect_direct(%struct.net_device* %23, %struct.phy_device* %24, void (%struct.net_device*)* %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @put_device(i32* %30)
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %37

35:                                               ; preds = %19
  %36 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi %struct.phy_device* [ null, %34 ], [ %36, %35 ]
  store %struct.phy_device* %38, %struct.phy_device** %6, align 8
  br label %39

39:                                               ; preds = %37, %18
  %40 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  ret %struct.phy_device* %40
}

declare dso_local %struct.phy_device* @of_phy_find_device(%struct.device_node*) #1

declare dso_local i32 @phy_connect_direct(%struct.net_device*, %struct.phy_device*, void (%struct.net_device*)*, i32) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
