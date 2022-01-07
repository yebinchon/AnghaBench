; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_switchdev_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_switchdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.ethsw_switchdev_event_work = type { i64, i32, %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i8* }
%struct.switchdev_notifier_fdb_info = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@SWITCHDEV_PORT_ATTR_SET = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@ethsw_switchdev_event_work = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ethsw_owq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @port_switchdev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_switchdev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ethsw_switchdev_event_work*, align 8
  %10 = alloca %struct.switchdev_notifier_fdb_info*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call %struct.net_device* @switchdev_notifier_info_to_dev(i8* %11)
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.switchdev_notifier_fdb_info*
  store %struct.switchdev_notifier_fdb_info* %14, %struct.switchdev_notifier_fdb_info** %10, align 8
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = call i32 @ethsw_port_dev_check(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %19, i32* %4, align 4
  br label %91

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @SWITCHDEV_PORT_ATTR_SET, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.net_device*, %struct.net_device** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @ethsw_switchdev_port_attr_set_event(%struct.net_device* %25, i8* %26)
  store i32 %27, i32* %4, align 4
  br label %91

28:                                               ; preds = %20
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call i8* @kzalloc(i32 32, i32 %29)
  %31 = bitcast i8* %30 to %struct.ethsw_switchdev_event_work*
  store %struct.ethsw_switchdev_event_work* %31, %struct.ethsw_switchdev_event_work** %9, align 8
  %32 = load %struct.ethsw_switchdev_event_work*, %struct.ethsw_switchdev_event_work** %9, align 8
  %33 = icmp ne %struct.ethsw_switchdev_event_work* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %35, i32* %4, align 4
  br label %91

36:                                               ; preds = %28
  %37 = load %struct.ethsw_switchdev_event_work*, %struct.ethsw_switchdev_event_work** %9, align 8
  %38 = getelementptr inbounds %struct.ethsw_switchdev_event_work, %struct.ethsw_switchdev_event_work* %37, i32 0, i32 1
  %39 = load i32, i32* @ethsw_switchdev_event_work, align 4
  %40 = call i32 @INIT_WORK(i32* %38, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = load %struct.ethsw_switchdev_event_work*, %struct.ethsw_switchdev_event_work** %9, align 8
  %43 = getelementptr inbounds %struct.ethsw_switchdev_event_work, %struct.ethsw_switchdev_event_work* %42, i32 0, i32 3
  store %struct.net_device* %41, %struct.net_device** %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.ethsw_switchdev_event_work*, %struct.ethsw_switchdev_event_work** %9, align 8
  %46 = getelementptr inbounds %struct.ethsw_switchdev_event_work, %struct.ethsw_switchdev_event_work* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %6, align 8
  switch i64 %47, label %77 [
    i64 129, label %48
    i64 128, label %48
  ]

48:                                               ; preds = %36, %36
  %49 = load %struct.ethsw_switchdev_event_work*, %struct.ethsw_switchdev_event_work** %9, align 8
  %50 = getelementptr inbounds %struct.ethsw_switchdev_event_work, %struct.ethsw_switchdev_event_work* %49, i32 0, i32 2
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @memcpy(%struct.TYPE_2__* %50, i8* %51, i32 8)
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call i8* @kzalloc(i32 %53, i32 %54)
  %56 = load %struct.ethsw_switchdev_event_work*, %struct.ethsw_switchdev_event_work** %9, align 8
  %57 = getelementptr inbounds %struct.ethsw_switchdev_event_work, %struct.ethsw_switchdev_event_work* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load %struct.ethsw_switchdev_event_work*, %struct.ethsw_switchdev_event_work** %9, align 8
  %60 = getelementptr inbounds %struct.ethsw_switchdev_event_work, %struct.ethsw_switchdev_event_work* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %48
  br label %87

65:                                               ; preds = %48
  %66 = load %struct.ethsw_switchdev_event_work*, %struct.ethsw_switchdev_event_work** %9, align 8
  %67 = getelementptr inbounds %struct.ethsw_switchdev_event_work, %struct.ethsw_switchdev_event_work* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %10, align 8
  %72 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ether_addr_copy(i32* %70, i32 %73)
  %75 = load %struct.net_device*, %struct.net_device** %8, align 8
  %76 = call i32 @dev_hold(%struct.net_device* %75)
  br label %81

77:                                               ; preds = %36
  %78 = load %struct.ethsw_switchdev_event_work*, %struct.ethsw_switchdev_event_work** %9, align 8
  %79 = call i32 @kfree(%struct.ethsw_switchdev_event_work* %78)
  %80 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %80, i32* %4, align 4
  br label %91

81:                                               ; preds = %65
  %82 = load i32, i32* @ethsw_owq, align 4
  %83 = load %struct.ethsw_switchdev_event_work*, %struct.ethsw_switchdev_event_work** %9, align 8
  %84 = getelementptr inbounds %struct.ethsw_switchdev_event_work, %struct.ethsw_switchdev_event_work* %83, i32 0, i32 1
  %85 = call i32 @queue_work(i32 %82, i32* %84)
  %86 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %86, i32* %4, align 4
  br label %91

87:                                               ; preds = %64
  %88 = load %struct.ethsw_switchdev_event_work*, %struct.ethsw_switchdev_event_work** %9, align 8
  %89 = call i32 @kfree(%struct.ethsw_switchdev_event_work* %88)
  %90 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %81, %77, %34, %24, %18
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.net_device* @switchdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @ethsw_port_dev_check(%struct.net_device*) #1

declare dso_local i32 @ethsw_switchdev_port_attr_set_event(%struct.net_device*, i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.ethsw_switchdev_event_work*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
