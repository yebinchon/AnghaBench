; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ql_adapter = type { i32, i32, i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Changing to jumbo MTU.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Changing to normal MTU.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Changing MTU failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @qlge_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlge_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ql_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ql_adapter* %9, %struct.ql_adapter** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1500
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 9000
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %19 = load i32, i32* @ifup, align 4
  %20 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @netif_err(%struct.ql_adapter* %18, i32 %19, i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %43

24:                                               ; preds = %14, %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 9000
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 1500
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %34 = load i32, i32* @ifup, align 4
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netif_err(%struct.ql_adapter* %33, i32 %34, i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %42

39:                                               ; preds = %29, %24
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %75

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %17
  %44 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %45 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %48 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %47, i32 0, i32 1
  %49 = load i32, i32* @HZ, align 4
  %50 = mul nsw i32 3, %49
  %51 = call i32 @queue_delayed_work(i32 %46, i32* %48, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %56 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @netif_running(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %75

61:                                               ; preds = %43
  %62 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %63 = call i32 @ql_change_rx_buffers(%struct.ql_adapter* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %68 = load i32, i32* @ifup, align 4
  %69 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %70 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @netif_err(%struct.ql_adapter* %67, i32 %68, i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %60, %39
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @ql_change_rx_buffers(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
