; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_phonet.c_gphonet_setup_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_phonet.c_gphonet_setup_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.phonet_port = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"upnlink%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@pn_net_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @gphonet_setup_default() #0 {
  %1 = alloca %struct.net_device*, align 8
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.phonet_port*, align 8
  %4 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %5 = load i32, i32* @pn_net_setup, align 4
  %6 = call %struct.net_device* @alloc_netdev(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5)
  store %struct.net_device* %6, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.net_device* @ERR_PTR(i32 %11)
  store %struct.net_device* %12, %struct.net_device** %1, align 8
  br label %22

13:                                               ; preds = %0
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call %struct.phonet_port* @netdev_priv(%struct.net_device* %14)
  store %struct.phonet_port* %15, %struct.phonet_port** %3, align 8
  %16 = load %struct.phonet_port*, %struct.phonet_port** %3, align 8
  %17 = getelementptr inbounds %struct.phonet_port, %struct.phonet_port* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @netif_carrier_off(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  store %struct.net_device* %21, %struct.net_device** %1, align 8
  br label %22

22:                                               ; preds = %13, %9
  %23 = load %struct.net_device*, %struct.net_device** %1, align 8
  ret %struct.net_device* %23
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

declare dso_local %struct.phonet_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
