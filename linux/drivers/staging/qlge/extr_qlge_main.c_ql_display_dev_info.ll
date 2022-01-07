; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_display_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_display_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ql_adapter = type { i32, i32, i32, i32 }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Function #%d, Port %d, NIC Roll %d, NIC Rev = %d, XG Roll = %d, XG Rev = %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"MAC address %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ql_display_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_display_dev_info(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ql_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %4)
  store %struct.ql_adapter* %5, %struct.ql_adapter** %3, align 8
  %6 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %7 = load i32, i32* @probe, align 4
  %8 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 15
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 4
  %25 = and i32 %24, 15
  %26 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 15
  %31 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 12
  %35 = and i32 %34, 15
  %36 = call i32 (%struct.ql_adapter*, i32, i32, i8*, i32, ...) @netif_info(%struct.ql_adapter* %6, i32 %7, i32 %10, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %20, i32 %25, i32 %30, i32 %35)
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %38 = load i32, i32* @probe, align 4
  %39 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.ql_adapter*, i32, i32, i8*, i32, ...) @netif_info(%struct.ql_adapter* %37, i32 %38, i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  ret void
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.ql_adapter*, i32, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
