; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_fdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_fdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndmsg = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i32, i32, %struct.netlink_ext_ack*)* @port_fdb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_fdb_add(%struct.ndmsg* %0, %struct.nlattr** %1, %struct.net_device* %2, i8* %3, i32 %4, i32 %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ndmsg*, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.ndmsg* %0, %struct.ndmsg** %9, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %10, align 8
  store %struct.net_device* %2, %struct.net_device** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = call i64 @is_unicast_ether_addr(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %7
  %20 = load %struct.net_device*, %struct.net_device** %11, align 8
  %21 = call i32 @netdev_priv(%struct.net_device* %20)
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @ethsw_port_fdb_add_uc(i32 %21, i8* %22)
  store i32 %23, i32* %8, align 4
  br label %29

24:                                               ; preds = %7
  %25 = load %struct.net_device*, %struct.net_device** %11, align 8
  %26 = call i32 @netdev_priv(%struct.net_device* %25)
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @ethsw_port_fdb_add_mc(i32 %26, i8* %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local i64 @is_unicast_ether_addr(i8*) #1

declare dso_local i32 @ethsw_port_fdb_add_uc(i32, i8*) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethsw_port_fdb_add_mc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
