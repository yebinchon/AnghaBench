; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_ip6_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_ip6_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.inet6_ifaddr = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.qeth_l3_ip_event_work = type { i32, %struct.TYPE_8__, %struct.qeth_card* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qeth_card = type { i32 }

@NETDEV_UP = common dso_local global i64 0, align 8
@NETDEV_DOWN = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ip6event\00", align 1
@IPA_IPV6 = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@qeth_l3_add_ip_worker = common dso_local global i32 0, align 4
@qeth_l3_delete_ip_worker = common dso_local global i32 0, align 4
@QETH_IP_TYPE_NORMAL = common dso_local global i32 0, align 4
@QETH_PROT_IPV6 = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @qeth_l3_ip6_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_ip6_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inet6_ifaddr*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.qeth_l3_ip_event_work*, align 8
  %11 = alloca %struct.qeth_card*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.inet6_ifaddr*
  store %struct.inet6_ifaddr* %13, %struct.inet6_ifaddr** %8, align 8
  %14 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %15 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @NETDEV_UP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @NETDEV_DOWN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %27, i32* %4, align 4
  br label %97

28:                                               ; preds = %22, %3
  %29 = load %struct.net_device*, %struct.net_device** %9, align 8
  %30 = call %struct.qeth_card* @qeth_l3_get_card_from_dev(%struct.net_device* %29)
  store %struct.qeth_card* %30, %struct.qeth_card** %11, align 8
  %31 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %32 = icmp ne %struct.qeth_card* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %34, i32* %4, align 4
  br label %97

35:                                               ; preds = %28
  %36 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %37 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %36, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %39 = load i32, i32* @IPA_IPV6, align 4
  %40 = call i32 @qeth_is_supported(%struct.qeth_card* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %43, i32* %4, align 4
  br label %97

44:                                               ; preds = %35
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call %struct.qeth_l3_ip_event_work* @kmalloc(i32 24, i32 %45)
  store %struct.qeth_l3_ip_event_work* %46, %struct.qeth_l3_ip_event_work** %10, align 8
  %47 = load %struct.qeth_l3_ip_event_work*, %struct.qeth_l3_ip_event_work** %10, align 8
  %48 = icmp ne %struct.qeth_l3_ip_event_work* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %50, i32* %4, align 4
  br label %97

51:                                               ; preds = %44
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @NETDEV_UP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.qeth_l3_ip_event_work*, %struct.qeth_l3_ip_event_work** %10, align 8
  %57 = getelementptr inbounds %struct.qeth_l3_ip_event_work, %struct.qeth_l3_ip_event_work* %56, i32 0, i32 0
  %58 = load i32, i32* @qeth_l3_add_ip_worker, align 4
  %59 = call i32 @INIT_WORK(i32* %57, i32 %58)
  br label %65

60:                                               ; preds = %51
  %61 = load %struct.qeth_l3_ip_event_work*, %struct.qeth_l3_ip_event_work** %10, align 8
  %62 = getelementptr inbounds %struct.qeth_l3_ip_event_work, %struct.qeth_l3_ip_event_work* %61, i32 0, i32 0
  %63 = load i32, i32* @qeth_l3_delete_ip_worker, align 4
  %64 = call i32 @INIT_WORK(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %67 = load %struct.qeth_l3_ip_event_work*, %struct.qeth_l3_ip_event_work** %10, align 8
  %68 = getelementptr inbounds %struct.qeth_l3_ip_event_work, %struct.qeth_l3_ip_event_work* %67, i32 0, i32 2
  store %struct.qeth_card* %66, %struct.qeth_card** %68, align 8
  %69 = load %struct.qeth_l3_ip_event_work*, %struct.qeth_l3_ip_event_work** %10, align 8
  %70 = getelementptr inbounds %struct.qeth_l3_ip_event_work, %struct.qeth_l3_ip_event_work* %69, i32 0, i32 1
  %71 = load i32, i32* @QETH_IP_TYPE_NORMAL, align 4
  %72 = load i32, i32* @QETH_PROT_IPV6, align 4
  %73 = call i32 @qeth_l3_init_ipaddr(%struct.TYPE_8__* %70, i32 %71, i32 %72)
  %74 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %75 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.qeth_l3_ip_event_work*, %struct.qeth_l3_ip_event_work** %10, align 8
  %78 = getelementptr inbounds %struct.qeth_l3_ip_event_work, %struct.qeth_l3_ip_event_work* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 %76, i32* %81, align 4
  %82 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %83 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.qeth_l3_ip_event_work*, %struct.qeth_l3_ip_event_work** %10, align 8
  %86 = getelementptr inbounds %struct.qeth_l3_ip_event_work, %struct.qeth_l3_ip_event_work* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 4
  %90 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %91 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.qeth_l3_ip_event_work*, %struct.qeth_l3_ip_event_work** %10, align 8
  %94 = getelementptr inbounds %struct.qeth_l3_ip_event_work, %struct.qeth_l3_ip_event_work* %93, i32 0, i32 0
  %95 = call i32 @queue_work(i32 %92, i32* %94)
  %96 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %65, %49, %42, %33, %26
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.qeth_card* @qeth_l3_get_card_from_dev(%struct.net_device*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local %struct.qeth_l3_ip_event_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @qeth_l3_init_ipaddr(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
