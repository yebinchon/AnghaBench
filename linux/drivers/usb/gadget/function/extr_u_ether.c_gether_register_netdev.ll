; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_ether.c_gether_register_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_ether.c_gether_register_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.eth_dev = type { i32, i32, %struct.usb_gadget* }
%struct.usb_gadget = type { i32 }
%struct.sockaddr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"register_netdev failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"HOST MAC %pM\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"cannot set self ethernet address: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"MAC %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gether_register_netdev(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.eth_dev*, align 8
  %5 = alloca %struct.usb_gadget*, align 8
  %6 = alloca %struct.sockaddr, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %69

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call %struct.eth_dev* @netdev_priv(%struct.net_device* %17)
  store %struct.eth_dev* %18, %struct.eth_dev** %4, align 8
  %19 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %20 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %19, i32 0, i32 2
  %21 = load %struct.usb_gadget*, %struct.usb_gadget** %20, align 8
  store %struct.usb_gadget* %21, %struct.usb_gadget** %5, align 8
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @register_netdev(%struct.net_device* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %28 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %69

32:                                               ; preds = %16
  %33 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %34 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %35 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @INFO(%struct.eth_dev* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @netif_carrier_off(%struct.net_device* %38)
  br label %40

40:                                               ; preds = %32
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %6, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %48 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = call i32 @memcpy(i32 %46, i32 %49, i32 %50)
  %52 = call i32 (...) @rtnl_lock()
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @dev_set_mac_address(%struct.net_device* %53, %struct.sockaddr* %6, i32* null)
  store i32 %54, i32* %7, align 4
  %55 = call i32 (...) @rtnl_unlock()
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %40
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %67

61:                                               ; preds = %40
  %62 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %63 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %64 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @INFO(%struct.eth_dev* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %26, %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.eth_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @INFO(%struct.eth_dev*, i8*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_set_mac_address(%struct.net_device*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
