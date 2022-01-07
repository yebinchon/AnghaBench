; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c___qeth_l2_set_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c___qeth_l2_set_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.qeth_card = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"setoffl\00", align 1
@QETH_DIAGS_TRAP_DISARM = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*, i32)* @__qeth_l2_set_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qeth_l2_set_offline(%struct.ccwgroup_device* %0, i32 %1) #0 {
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
  %11 = call %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_8__* %10)
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
  %24 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %28, %22
  %35 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %36 = load i32, i32* @QETH_DIAGS_TRAP_DISARM, align 4
  %37 = call i32 @qeth_hw_trap(%struct.qeth_card* %35, i32 %36)
  %38 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %39 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %34, %28
  %42 = call i32 (...) @rtnl_lock()
  %43 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %44 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFF_UP, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %51 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %54 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = call i32 @dev_close(%struct.TYPE_7__* %55)
  %57 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %58 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = call i32 @netif_device_detach(%struct.TYPE_7__* %59)
  %61 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %62 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = call i32 @netif_carrier_off(%struct.TYPE_7__* %63)
  %65 = call i32 (...) @rtnl_unlock()
  %66 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %67 = call i32 @qeth_l2_stop_card(%struct.qeth_card* %66)
  %68 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %69 = call i32 @CARD_DDEV(%struct.qeth_card* %68)
  %70 = call i32 @ccw_device_set_offline(i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %72 = call i32 @CARD_WDEV(%struct.qeth_card* %71)
  %73 = call i32 @ccw_device_set_offline(i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %75 = call i32 @CARD_RDEV(%struct.qeth_card* %74)
  %76 = call i32 @ccw_device_set_offline(i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %41
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %41
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %92, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %97 = call i32 @CARD_DDEV(%struct.qeth_card* %96)
  %98 = call i32 @qdio_free(i32 %97)
  %99 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %100 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* @KOBJ_CHANGE, align 4
  %103 = call i32 @kobject_uevent(i32* %101, i32 %102)
  %104 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %105 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %108 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %107, i32 0, i32 0
  %109 = call i32 @mutex_unlock(i32* %108)
  ret i32 0
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_hw_trap(%struct.qeth_card*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_close(%struct.TYPE_7__*) #1

declare dso_local i32 @netif_device_detach(%struct.TYPE_7__*) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_7__*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @qeth_l2_stop_card(%struct.qeth_card*) #1

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
