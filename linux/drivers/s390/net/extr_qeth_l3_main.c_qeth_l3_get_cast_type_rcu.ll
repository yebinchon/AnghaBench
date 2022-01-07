; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_get_cast_type_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_get_cast_type_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dst_entry = type { i32 }
%struct.neighbour = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@RTN_BROADCAST = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@RTN_ANYCAST = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.dst_entry*, i32)* @qeth_l3_get_cast_type_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_get_cast_type_rcu(%struct.sk_buff* %0, %struct.dst_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.neighbour*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.neighbour* null, %struct.neighbour** %8, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %11 = icmp ne %struct.dst_entry* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.neighbour* @dst_neigh_lookup_skb(%struct.dst_entry* %13, %struct.sk_buff* %14)
  store %struct.neighbour* %15, %struct.neighbour** %8, align 8
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %18 = icmp ne %struct.neighbour* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %21 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %24 = call i32 @neigh_release(%struct.neighbour* %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @RTN_BROADCAST, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @RTN_MULTICAST, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @RTN_ANYCAST, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28, %19
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %79

38:                                               ; preds = %32
  %39 = load i32, i32* @RTN_UNICAST, align 4
  store i32 %39, i32* %4, align 4
  br label %79

40:                                               ; preds = %16
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %76 [
    i32 4, label %42
    i32 6, label %64
  ]

42:                                               ; preds = %40
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ipv4_is_lbcast(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @RTN_BROADCAST, align 4
  store i32 %50, i32* %4, align 4
  br label %79

51:                                               ; preds = %42
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ipv4_is_multicast(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @RTN_MULTICAST, align 4
  br label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @RTN_UNICAST, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %4, align 4
  br label %79

64:                                               ; preds = %40
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @ipv6_addr_is_multicast(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @RTN_MULTICAST, align 4
  br label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @RTN_UNICAST, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %4, align 4
  br label %79

76:                                               ; preds = %40
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call i32 @qeth_get_ether_cast_type(%struct.sk_buff* %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %74, %62, %49, %38, %36
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.neighbour* @dst_neigh_lookup_skb(%struct.dst_entry*, %struct.sk_buff*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @ipv4_is_lbcast(i32) #1

declare dso_local %struct.TYPE_4__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv4_is_multicast(i32) #1

declare dso_local i32 @ipv6_addr_is_multicast(i32*) #1

declare dso_local %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @qeth_get_ether_cast_type(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
