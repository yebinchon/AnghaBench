; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_mcast_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_mcast_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif = type { i64, i32, i32 }
%struct.xenvif_mcast_addr = type { i32, i32 }

@XEN_NETBK_MCAST_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Too many multicast addresses\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenvif*, i32*)* @xenvif_mcast_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenvif_mcast_add(%struct.xenvif* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenvif*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xenvif_mcast_addr*, align 8
  store %struct.xenvif* %0, %struct.xenvif** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %8 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @XEN_NETBK_MCAST_MAX, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = call i64 (...) @net_ratelimit()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %17 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @netdev_err(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %12
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %46

23:                                               ; preds = %2
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call %struct.xenvif_mcast_addr* @kzalloc(i32 8, i32 %24)
  store %struct.xenvif_mcast_addr* %25, %struct.xenvif_mcast_addr** %6, align 8
  %26 = load %struct.xenvif_mcast_addr*, %struct.xenvif_mcast_addr** %6, align 8
  %27 = icmp ne %struct.xenvif_mcast_addr* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %46

31:                                               ; preds = %23
  %32 = load %struct.xenvif_mcast_addr*, %struct.xenvif_mcast_addr** %6, align 8
  %33 = getelementptr inbounds %struct.xenvif_mcast_addr, %struct.xenvif_mcast_addr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @ether_addr_copy(i32 %34, i32* %35)
  %37 = load %struct.xenvif_mcast_addr*, %struct.xenvif_mcast_addr** %6, align 8
  %38 = getelementptr inbounds %struct.xenvif_mcast_addr, %struct.xenvif_mcast_addr* %37, i32 0, i32 0
  %39 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %40 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %39, i32 0, i32 1
  %41 = call i32 @list_add_tail_rcu(i32* %38, i32* %40)
  %42 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %43 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %31, %28, %20
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local %struct.xenvif_mcast_addr* @kzalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
