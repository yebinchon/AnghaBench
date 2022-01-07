; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c___qeth_l3_set_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c___qeth_l3_set_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.qeth_card = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"setoffl\00", align 1
@QETH_DIAGS_TRAP_DISARM = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@NETDEV_REBOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*, i32)* @__qeth_l3_set_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qeth_l3_set_offline(%struct.ccwgroup_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %10 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %9, i32 0, i32 0
  %11 = call %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_11__* %10)
  store %struct.qeth_card* %11, %struct.qeth_card** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %16 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %19 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %18, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %24 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %28, %22
  %35 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %36 = load i32, i32* @QETH_DIAGS_TRAP_DISARM, align 4
  %37 = call i32 @qeth_hw_trap(%struct.qeth_card* %35, i32 %36)
  %38 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %39 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %34, %28
  %42 = call i32 (...) @rtnl_lock()
  %43 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %44 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %43, i32 0, i32 2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFF_UP, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %51 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %54 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %53, i32 0, i32 2
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = call i32 @dev_close(%struct.TYPE_10__* %55)
  %57 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %58 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %57, i32 0, i32 2
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = call i32 @netif_device_detach(%struct.TYPE_10__* %59)
  %61 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %62 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = call i32 @netif_carrier_off(%struct.TYPE_10__* %63)
  %65 = call i32 (...) @rtnl_unlock()
  %66 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %67 = call i32 @qeth_l3_stop_card(%struct.qeth_card* %66)
  %68 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %69 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %41
  %75 = call i32 (...) @rtnl_lock()
  %76 = load i32, i32* @NETDEV_REBOOT, align 4
  %77 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %78 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %77, i32 0, i32 2
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = call i32 @call_netdevice_notifiers(i32 %76, %struct.TYPE_10__* %79)
  %81 = call i32 (...) @rtnl_unlock()
  br label %82

82:                                               ; preds = %74, %41
  %83 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %84 = call i32 @CARD_DDEV(%struct.qeth_card* %83)
  %85 = call i32 @ccw_device_set_offline(i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %87 = call i32 @CARD_WDEV(%struct.qeth_card* %86)
  %88 = call i32 @ccw_device_set_offline(i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %90 = call i32 @CARD_RDEV(%struct.qeth_card* %89)
  %91 = call i32 @ccw_device_set_offline(i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %8, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %82
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %107, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %112 = call i32 @CARD_DDEV(%struct.qeth_card* %111)
  %113 = call i32 @qdio_free(i32 %112)
  %114 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %115 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* @KOBJ_CHANGE, align 4
  %118 = call i32 @kobject_uevent(i32* %116, i32 %117)
  %119 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %120 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %119, i32 0, i32 1
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %123 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  ret i32 0
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_11__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_hw_trap(%struct.qeth_card*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_close(%struct.TYPE_10__*) #1

declare dso_local i32 @netif_device_detach(%struct.TYPE_10__*) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_10__*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @qeth_l3_stop_card(%struct.qeth_card*) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ccw_device_set_offline(i32) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @CARD_WDEV(%struct.qeth_card*) #1

declare dso_local i32 @CARD_RDEV(%struct.qeth_card*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @qdio_free(i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
