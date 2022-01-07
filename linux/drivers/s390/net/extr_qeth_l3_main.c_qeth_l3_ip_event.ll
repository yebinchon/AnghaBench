; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_ip_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_ip_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.in_ifaddr = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.qeth_ipaddr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.qeth_card = type { i32 }

@init_net = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ipevent\00", align 1
@QETH_IP_TYPE_NORMAL = common dso_local global i32 0, align 4
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @qeth_l3_ip_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_ip_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.in_ifaddr*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.qeth_ipaddr, align 8
  %11 = alloca %struct.qeth_card*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.in_ifaddr*
  store %struct.in_ifaddr* %13, %struct.in_ifaddr** %8, align 8
  %14 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %15 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %9, align 8
  %19 = load %struct.net_device*, %struct.net_device** %9, align 8
  %20 = call i32* @dev_net(%struct.net_device* %19)
  %21 = icmp ne i32* %20, @init_net
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %23, i32* %4, align 4
  br label %54

24:                                               ; preds = %3
  %25 = load %struct.net_device*, %struct.net_device** %9, align 8
  %26 = call %struct.qeth_card* @qeth_l3_get_card_from_dev(%struct.net_device* %25)
  store %struct.qeth_card* %26, %struct.qeth_card** %11, align 8
  %27 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %28 = icmp ne %struct.qeth_card* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %30, i32* %4, align 4
  br label %54

31:                                               ; preds = %24
  %32 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %33 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %32, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @QETH_IP_TYPE_NORMAL, align 4
  %35 = load i32, i32* @QETH_PROT_IPV4, align 4
  %36 = call i32 @qeth_l3_init_ipaddr(%struct.qeth_ipaddr* %10, i32 %34, i32 %35)
  %37 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %38 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @be32_to_cpu(i32 %39)
  %41 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %10, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %45 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @be32_to_cpu(i32 %46)
  %48 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %10, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @qeth_l3_handle_ip_event(%struct.qeth_card* %51, %struct.qeth_ipaddr* %10, i64 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %31, %29, %22
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32* @dev_net(%struct.net_device*) #1

declare dso_local %struct.qeth_card* @qeth_l3_get_card_from_dev(%struct.net_device*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_l3_init_ipaddr(%struct.qeth_ipaddr*, i32, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @qeth_l3_handle_ip_event(%struct.qeth_card*, %struct.qeth_ipaddr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
