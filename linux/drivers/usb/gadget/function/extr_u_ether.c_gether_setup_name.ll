; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_ether.c_gether_setup_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_ether.c_gether_setup_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eth_dev = type { i32, i32, %struct.usb_gadget*, %struct.net_device*, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32, i32, i32, i32*, i32*, i32 }
%struct.usb_gadget = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@eth_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s%%d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"using random %s ethernet address\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@eth_netdev_ops = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@GETHER_MAX_ETH_FRAME_LEN = common dso_local global i32 0, align 4
@gadget_type = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"register_netdev failed, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"MAC %pM\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"HOST MAC %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eth_dev* @gether_setup_name(%struct.usb_gadget* %0, i8* %1, i8* %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.eth_dev*, align 8
  %8 = alloca %struct.usb_gadget*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.eth_dev*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call %struct.net_device* @alloc_etherdev(i32 48)
  store %struct.net_device* %19, %struct.net_device** %15, align 8
  %20 = load %struct.net_device*, %struct.net_device** %15, align 8
  %21 = icmp ne %struct.net_device* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.eth_dev* @ERR_PTR(i32 %24)
  store %struct.eth_dev* %25, %struct.eth_dev** %7, align 8
  br label %138

26:                                               ; preds = %6
  %27 = load %struct.net_device*, %struct.net_device** %15, align 8
  %28 = call %struct.eth_dev* @netdev_priv(%struct.net_device* %27)
  store %struct.eth_dev* %28, %struct.eth_dev** %14, align 8
  %29 = load %struct.eth_dev*, %struct.eth_dev** %14, align 8
  %30 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %29, i32 0, i32 9
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.eth_dev*, %struct.eth_dev** %14, align 8
  %33 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %32, i32 0, i32 8
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.eth_dev*, %struct.eth_dev** %14, align 8
  %36 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %35, i32 0, i32 7
  %37 = load i32, i32* @eth_work, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.eth_dev*, %struct.eth_dev** %14, align 8
  %40 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %39, i32 0, i32 6
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.eth_dev*, %struct.eth_dev** %14, align 8
  %43 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %42, i32 0, i32 5
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.eth_dev*, %struct.eth_dev** %14, align 8
  %46 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %45, i32 0, i32 4
  %47 = call i32 @skb_queue_head_init(i32* %46)
  %48 = load %struct.net_device*, %struct.net_device** %15, align 8
  %49 = load %struct.eth_dev*, %struct.eth_dev** %14, align 8
  %50 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %49, i32 0, i32 3
  store %struct.net_device* %48, %struct.net_device** %50, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.eth_dev*, %struct.eth_dev** %14, align 8
  %53 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %15, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = call i32 @snprintf(i32 %56, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %9, align 8
  %60 = load %struct.net_device*, %struct.net_device** %15, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @get_ether_addr(i8* %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %26
  %66 = load %struct.usb_gadget*, %struct.usb_gadget** %8, align 8
  %67 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %66, i32 0, i32 0
  %68 = call i32 @dev_warn(i32* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %26
  %70 = load i8*, i8** %10, align 8
  %71 = load %struct.eth_dev*, %struct.eth_dev** %14, align 8
  %72 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @get_ether_addr(i8* %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load %struct.usb_gadget*, %struct.usb_gadget** %8, align 8
  %78 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %77, i32 0, i32 0
  %79 = call i32 @dev_warn(i32* %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %69
  %81 = load i32*, i32** %11, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32*, i32** %11, align 8
  %85 = load %struct.eth_dev*, %struct.eth_dev** %14, align 8
  %86 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i32 @memcpy(i32* %84, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %80
  %91 = load %struct.net_device*, %struct.net_device** %15, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 4
  store i32* @eth_netdev_ops, i32** %92, align 8
  %93 = load %struct.net_device*, %struct.net_device** %15, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 3
  store i32* @ops, i32** %94, align 8
  %95 = load i32, i32* @ETH_HLEN, align 4
  %96 = load %struct.net_device*, %struct.net_device** %15, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @GETHER_MAX_ETH_FRAME_LEN, align 4
  %99 = load %struct.net_device*, %struct.net_device** %15, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.usb_gadget*, %struct.usb_gadget** %8, align 8
  %102 = load %struct.eth_dev*, %struct.eth_dev** %14, align 8
  %103 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %102, i32 0, i32 2
  store %struct.usb_gadget* %101, %struct.usb_gadget** %103, align 8
  %104 = load %struct.net_device*, %struct.net_device** %15, align 8
  %105 = load %struct.usb_gadget*, %struct.usb_gadget** %8, align 8
  %106 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %105, i32 0, i32 0
  %107 = call i32 @SET_NETDEV_DEV(%struct.net_device* %104, i32* %106)
  %108 = load %struct.net_device*, %struct.net_device** %15, align 8
  %109 = call i32 @SET_NETDEV_DEVTYPE(%struct.net_device* %108, i32* @gadget_type)
  %110 = load %struct.net_device*, %struct.net_device** %15, align 8
  %111 = call i32 @register_netdev(%struct.net_device* %110)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %90
  %115 = load %struct.usb_gadget*, %struct.usb_gadget** %8, align 8
  %116 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %115, i32 0, i32 0
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @dev_dbg(i32* %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load %struct.net_device*, %struct.net_device** %15, align 8
  %120 = call i32 @free_netdev(%struct.net_device* %119)
  %121 = load i32, i32* %16, align 4
  %122 = call %struct.eth_dev* @ERR_PTR(i32 %121)
  store %struct.eth_dev* %122, %struct.eth_dev** %14, align 8
  br label %136

123:                                              ; preds = %90
  %124 = load %struct.eth_dev*, %struct.eth_dev** %14, align 8
  %125 = load %struct.net_device*, %struct.net_device** %15, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @INFO(%struct.eth_dev* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  %129 = load %struct.eth_dev*, %struct.eth_dev** %14, align 8
  %130 = load %struct.eth_dev*, %struct.eth_dev** %14, align 8
  %131 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @INFO(%struct.eth_dev* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  %134 = load %struct.net_device*, %struct.net_device** %15, align 8
  %135 = call i32 @netif_carrier_off(%struct.net_device* %134)
  br label %136

136:                                              ; preds = %123, %114
  %137 = load %struct.eth_dev*, %struct.eth_dev** %14, align 8
  store %struct.eth_dev* %137, %struct.eth_dev** %7, align 8
  br label %138

138:                                              ; preds = %136, %22
  %139 = load %struct.eth_dev*, %struct.eth_dev** %7, align 8
  ret %struct.eth_dev* %139
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.eth_dev* @ERR_PTR(i32) #1

declare dso_local %struct.eth_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i64 @get_ether_addr(i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @SET_NETDEV_DEVTYPE(%struct.net_device*, i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @INFO(%struct.eth_dev*, i8*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
