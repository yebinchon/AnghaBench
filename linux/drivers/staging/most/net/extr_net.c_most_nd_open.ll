; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_most_nd_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_most_nd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_dev_context = type { %struct.TYPE_7__, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32, i32)* }
%struct.TYPE_6__ = type { i32 }

@probe_disc_mt = common dso_local global i32 0, align 4
@comp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"most_start_channel() failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@on_netinfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @most_nd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @most_nd_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_dev_context*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.net_dev_context* @netdev_priv(%struct.net_device* %5)
  store %struct.net_dev_context* %6, %struct.net_dev_context** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = call i32 @mutex_lock(i32* @probe_disc_mt)
  %8 = load %struct.net_dev_context*, %struct.net_dev_context** %3, align 8
  %9 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = load %struct.net_dev_context*, %struct.net_dev_context** %3, align 8
  %12 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @most_start_channel(%struct.TYPE_8__* %10, i32 %14, i32* @comp)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @netdev_err(%struct.net_device* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %84

22:                                               ; preds = %1
  %23 = load %struct.net_dev_context*, %struct.net_dev_context** %3, align 8
  %24 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load %struct.net_dev_context*, %struct.net_dev_context** %3, align 8
  %27 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @most_start_channel(%struct.TYPE_8__* %25, i32 %29, i32* @comp)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %22
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @netdev_err(%struct.net_device* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.net_dev_context*, %struct.net_dev_context** %3, align 8
  %36 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load %struct.net_dev_context*, %struct.net_dev_context** %3, align 8
  %39 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @most_stop_channel(%struct.TYPE_8__* %37, i32 %41, i32* @comp)
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %84

45:                                               ; preds = %22
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 @netif_carrier_off(%struct.net_device* %46)
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @is_valid_ether_addr(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = call i32 @netif_dormant_off(%struct.net_device* %54)
  br label %59

56:                                               ; preds = %45
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = call i32 @netif_dormant_on(%struct.net_device* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = call i32 @netif_wake_queue(%struct.net_device* %60)
  %62 = load %struct.net_dev_context*, %struct.net_dev_context** %3, align 8
  %63 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32)** %65, align 8
  %67 = icmp ne i32 (%struct.TYPE_8__*, i32, i32)* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %59
  %69 = load %struct.net_dev_context*, %struct.net_dev_context** %3, align 8
  %70 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32)** %72, align 8
  %74 = load %struct.net_dev_context*, %struct.net_dev_context** %3, align 8
  %75 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = load %struct.net_dev_context*, %struct.net_dev_context** %3, align 8
  %78 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @on_netinfo, align 4
  %82 = call i32 %73(%struct.TYPE_8__* %76, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %68, %59
  br label %84

84:                                               ; preds = %83, %32, %17
  %85 = call i32 @mutex_unlock(i32* @probe_disc_mt)
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.net_dev_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @most_start_channel(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @most_stop_channel(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @netif_dormant_off(%struct.net_device*) #1

declare dso_local i32 @netif_dormant_on(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
