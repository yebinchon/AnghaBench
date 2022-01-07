; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_ether.c_gether_setup_name_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_ether.c_gether_setup_name_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32*, i32*, i32 }
%struct.eth_dev = type { i32, i32, i32, %struct.net_device*, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@eth_work = common dso_local global i32 0, align 4
@QMULT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s%%d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"using random %s ethernet address\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@eth_netdev_ops = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@gadget_type = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@GETHER_MAX_ETH_FRAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @gether_setup_name_default(i8* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.eth_dev*, align 8
  store i8* %0, i8** %3, align 8
  %6 = call %struct.net_device* @alloc_etherdev(i32 48)
  store %struct.net_device* %6, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.net_device* @ERR_PTR(i32 %11)
  store %struct.net_device* %12, %struct.net_device** %2, align 8
  br label %69

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.eth_dev* @netdev_priv(%struct.net_device* %14)
  store %struct.eth_dev* %15, %struct.eth_dev** %5, align 8
  %16 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %17 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %16, i32 0, i32 9
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %20 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %19, i32 0, i32 8
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %23 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %22, i32 0, i32 7
  %24 = load i32, i32* @eth_work, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %27 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %26, i32 0, i32 6
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %30 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %29, i32 0, i32 5
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %33 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %32, i32 0, i32 4
  %34 = call i32 @skb_queue_head_init(i32* %33)
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %37 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %36, i32 0, i32 3
  store %struct.net_device* %35, %struct.net_device** %37, align 8
  %38 = load i32, i32* @QMULT_DEFAULT, align 4
  %39 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %40 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @snprintf(i32 %43, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %47 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @eth_random_addr(i32 %48)
  %50 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.eth_dev*, %struct.eth_dev** %5, align 8
  %52 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @eth_random_addr(i32 %53)
  %55 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 3
  store i32* @eth_netdev_ops, i32** %57, align 8
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 2
  store i32* @ops, i32** %59, align 8
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = call i32 @SET_NETDEV_DEVTYPE(%struct.net_device* %60, i32* @gadget_type)
  %62 = load i32, i32* @ETH_HLEN, align 4
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @GETHER_MAX_ETH_FRAME_LEN, align 4
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %68, %struct.net_device** %2, align 8
  br label %69

69:                                               ; preds = %13, %9
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %70
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

declare dso_local %struct.eth_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @eth_random_addr(i32) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i32 @SET_NETDEV_DEVTYPE(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
