; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_netdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_netdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { i32 }
%struct.pwrctrl_priv = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"+871x_drv - drv_open, bInSuspend =%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.pwrctrl_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i64 @rtw_netdev_priv(%struct.net_device* %7)
  %9 = inttoptr i64 %8 to %struct.adapter*
  store %struct.adapter* %9, %struct.adapter** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %5, align 8
  %11 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %10)
  store %struct.pwrctrl_priv* %11, %struct.pwrctrl_priv** %6, align 8
  %12 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %13 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %18 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DBG_871X(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load %struct.adapter*, %struct.adapter** %5, align 8
  %23 = call %struct.TYPE_2__* @adapter_to_dvobj(%struct.adapter* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i64 @mutex_lock_interruptible(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %36

28:                                               ; preds = %21
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @_netdev_open(%struct.net_device* %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.adapter*, %struct.adapter** %5, align 8
  %32 = call %struct.TYPE_2__* @adapter_to_dvobj(%struct.adapter* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %28, %27, %16
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.TYPE_2__* @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local i32 @_netdev_open(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
