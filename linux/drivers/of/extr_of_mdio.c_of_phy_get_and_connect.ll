; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_of_mdio.c_of_phy_get_and_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_of_mdio.c_of_phy_get_and_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.net_device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"broken fixed-link specification\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_device* @of_phy_get_and_connect(%struct.net_device* %0, %struct.device_node* %1, void (%struct.net_device*)* %2) #0 {
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca void (%struct.net_device*)*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.phy_device*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store void (%struct.net_device*)* %2, void (%struct.net_device*)** %7, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = call i64 @of_get_phy_mode(%struct.device_node* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.phy_device* null, %struct.phy_device** %4, align 8
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = call i64 @of_phy_is_fixed_link(%struct.device_node* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = call i32 @of_phy_register_fixed_link(%struct.device_node* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call i32 @netdev_err(%struct.net_device* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.phy_device* null, %struct.phy_device** %4, align 8
  br label %49

30:                                               ; preds = %22
  %31 = load %struct.device_node*, %struct.device_node** %6, align 8
  %32 = call %struct.device_node* @of_node_get(%struct.device_node* %31)
  store %struct.device_node* %32, %struct.device_node** %9, align 8
  br label %40

33:                                               ; preds = %18
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %35, %struct.device_node** %9, align 8
  %36 = load %struct.device_node*, %struct.device_node** %9, align 8
  %37 = icmp ne %struct.device_node* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store %struct.phy_device* null, %struct.phy_device** %4, align 8
  br label %49

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %30
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = load %struct.device_node*, %struct.device_node** %9, align 8
  %43 = load void (%struct.net_device*)*, void (%struct.net_device*)** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %41, %struct.device_node* %42, void (%struct.net_device*)* %43, i32 0, i64 %44)
  store %struct.phy_device* %45, %struct.phy_device** %10, align 8
  %46 = load %struct.device_node*, %struct.device_node** %9, align 8
  %47 = call i32 @of_node_put(%struct.device_node* %46)
  %48 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %48, %struct.phy_device** %4, align 8
  br label %49

49:                                               ; preds = %40, %38, %27, %17
  %50 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  ret %struct.phy_device* %50
}

declare dso_local i64 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_phy_register_fixed_link(%struct.device_node*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local %struct.device_node* @of_node_get(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, %struct.device_node*, void (%struct.net_device*)*, i32, i64) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
