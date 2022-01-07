; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_hash.c_xenvif_set_hash_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_hash.c_xenvif_set_hash_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@XEN_NETIF_CTRL_HASH_TYPE_IPV4 = common dso_local global i32 0, align 4
@XEN_NETIF_CTRL_HASH_TYPE_IPV4_TCP = common dso_local global i32 0, align 4
@XEN_NETIF_CTRL_HASH_TYPE_IPV6 = common dso_local global i32 0, align 4
@XEN_NETIF_CTRL_HASH_TYPE_IPV6_TCP = common dso_local global i32 0, align 4
@XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@XEN_NETIF_CTRL_HASH_ALGORITHM_NONE = common dso_local global i64 0, align 8
@XEN_NETIF_CTRL_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenvif_set_hash_flags(%struct.xenvif* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenvif*, align 8
  %5 = alloca i32, align 4
  store %struct.xenvif* %0, %struct.xenvif** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @XEN_NETIF_CTRL_HASH_TYPE_IPV4, align 4
  %8 = load i32, i32* @XEN_NETIF_CTRL_HASH_TYPE_IPV4_TCP, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @XEN_NETIF_CTRL_HASH_TYPE_IPV6, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @XEN_NETIF_CTRL_HASH_TYPE_IPV6_TCP, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %6, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER, align 4
  store i32 %18, i32* %3, align 4
  br label %34

19:                                               ; preds = %2
  %20 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %21 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XEN_NETIF_CTRL_HASH_ALGORITHM_NONE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER, align 4
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %31 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @XEN_NETIF_CTRL_STATUS_SUCCESS, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %26, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
