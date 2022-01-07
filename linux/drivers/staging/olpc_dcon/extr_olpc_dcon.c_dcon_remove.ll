; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.dcon_priv = type { i32, i32, i32 }

@panic_notifier_list = common dso_local global i32 0, align 4
@dcon_panic_nb = common dso_local global i32 0, align 4
@DCON_IRQ = common dso_local global i32 0, align 4
@dcon_device = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @dcon_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcon_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.dcon_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.dcon_priv* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.dcon_priv* %5, %struct.dcon_priv** %3, align 8
  %6 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %7 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %6, i32 0, i32 2
  %8 = call i32 @unregister_reboot_notifier(i32* %7)
  %9 = call i32 @atomic_notifier_chain_unregister(i32* @panic_notifier_list, i32* @dcon_panic_nb)
  %10 = load i32, i32* @DCON_IRQ, align 4
  %11 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %12 = call i32 @free_irq(i32 %10, %struct.dcon_priv* %11)
  %13 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %14 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @backlight_device_unregister(i32 %15)
  %17 = load i64, i64* @dcon_device, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i64, i64* @dcon_device, align 8
  %21 = call i32 @platform_device_unregister(i64 %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %24 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %23, i32 0, i32 0
  %25 = call i32 @cancel_work_sync(i32* %24)
  %26 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %27 = call i32 @kfree(%struct.dcon_priv* %26)
  ret i32 0
}

declare dso_local %struct.dcon_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i32 @atomic_notifier_chain_unregister(i32*, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.dcon_priv*) #1

declare dso_local i32 @backlight_device_unregister(i32) #1

declare dso_local i32 @platform_device_unregister(i64) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @kfree(%struct.dcon_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
