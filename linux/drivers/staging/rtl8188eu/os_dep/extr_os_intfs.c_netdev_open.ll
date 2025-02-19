; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c_netdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c_netdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call i64 @rtw_netdev_priv(%struct.net_device* %6)
  %8 = inttoptr i64 %7 to %struct.adapter*
  store %struct.adapter* %8, %struct.adapter** %5, align 8
  %9 = load %struct.adapter*, %struct.adapter** %5, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = call i64 @mutex_lock_interruptible(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ERESTARTSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @_netdev_open(%struct.net_device* %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.adapter*, %struct.adapter** %5, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %16, %13
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @_netdev_open(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
