; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridgeport_an_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridgeport_an_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ccw_device = type { i32 }
%struct.subchannel_id = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@anev_reset = common dso_local global i32 0, align 4
@qeth_bridgeport_an_set_cb = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_bridgeport_an_set(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccw_device*, align 8
  %9 = alloca %struct.subchannel_id, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %11 = icmp ne %struct.qeth_card* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %17 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %15
  %26 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %27 = call %struct.ccw_device* @CARD_DDEV(%struct.qeth_card* %26)
  store %struct.ccw_device* %27, %struct.ccw_device** %8, align 8
  %28 = load %struct.ccw_device*, %struct.ccw_device** %8, align 8
  %29 = call i32 @ccw_device_get_schid(%struct.ccw_device* %28, %struct.subchannel_id* %9)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %34 = load i32, i32* @anev_reset, align 4
  %35 = call i32 @qeth_bridge_emit_host_event(%struct.qeth_card* %33, i32 %34, i32 0, i32* null, i32* null)
  %36 = load i32*, i32** @qeth_bridgeport_an_set_cb, align 8
  %37 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %38 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @qdio_pnso_brinfo(i32 %39, i32 1, i32* %7, i32* %36, %struct.qeth_card* %37)
  store i32 %40, i32* %6, align 4
  br label %45

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @qdio_pnso_brinfo(i32 %43, i32 0, i32* %7, i32* null, %struct.qeth_card* null)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %32
  %46 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @qeth_anset_makerc(%struct.qeth_card* %46, i32 %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %22, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.ccw_device* @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @ccw_device_get_schid(%struct.ccw_device*, %struct.subchannel_id*) #1

declare dso_local i32 @qeth_bridge_emit_host_event(%struct.qeth_card*, i32, i32, i32*, i32*) #1

declare dso_local i32 @qdio_pnso_brinfo(i32, i32, i32*, i32*, %struct.qeth_card*) #1

declare dso_local i32 @qeth_anset_makerc(%struct.qeth_card*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
