; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_update_hw_vlan_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_update_hw_vlan_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ql_adapter = type { i32 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to bring down the adapter\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to bring up the adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @qlge_update_hw_vlan_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlge_update_hw_vlan_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ql_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ql_adapter* %10, %struct.ql_adapter** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @netif_running(%struct.net_device* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %17 = call i32 @ql_adapter_down(%struct.ql_adapter* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %22 = load i32, i32* @link, align 4
  %23 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %24 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_err(%struct.ql_adapter* %21, i32 %22, i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %37 = call i32 @ql_adapter_up(%struct.ql_adapter* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %42 = load i32, i32* @link, align 4
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @netif_err(%struct.ql_adapter* %41, i32 %42, i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %51

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %40, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ql_adapter_down(%struct.ql_adapter*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ql_adapter_up(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
