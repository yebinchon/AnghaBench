; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_multicast_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_multicast_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.inet6_dev = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"chkmcv6\00", align 1
@IPA_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*)* @qeth_l3_add_multicast_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_add_multicast_ipv6(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca %struct.inet6_dev*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %4 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %5 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %4, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %7 = load i32, i32* @IPA_IPV6, align 4
  %8 = call i32 @qeth_is_supported(%struct.qeth_card* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.inet6_dev* @in6_dev_get(i32 %14)
  store %struct.inet6_dev* %15, %struct.inet6_dev** %3, align 8
  %16 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %17 = icmp ne %struct.inet6_dev* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %35

19:                                               ; preds = %11
  %20 = call i32 (...) @rcu_read_lock()
  %21 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %22 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %21, i32 0, i32 0
  %23 = call i32 @read_lock_bh(i32* %22)
  %24 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %25 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %26 = call i32 @qeth_l3_add_mc6_to_hash(%struct.qeth_card* %24, %struct.inet6_dev* %25)
  %27 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %28 = call i32 @qeth_l3_add_vlan_mc6(%struct.qeth_card* %27)
  %29 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %30 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %29, i32 0, i32 0
  %31 = call i32 @read_unlock_bh(i32* %30)
  %32 = call i32 (...) @rcu_read_unlock()
  %33 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %34 = call i32 @in6_dev_put(%struct.inet6_dev* %33)
  br label %35

35:                                               ; preds = %19, %18, %10
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @qeth_l3_add_mc6_to_hash(%struct.qeth_card*, %struct.inet6_dev*) #1

declare dso_local i32 @qeth_l3_add_vlan_mc6(%struct.qeth_card*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
