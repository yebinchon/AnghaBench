; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mac_esp.c_esp_mac_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mac_esp.c_esp_mac_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i64 }
%struct.mac_esp_priv = type { %struct.esp* }
%struct.esp = type { %struct.TYPE_2__*, %struct.mac_esp_priv* }
%struct.TYPE_2__ = type { i32 }

@esp_chips_lock = common dso_local global i32 0, align 4
@esp_chips = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @esp_mac_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_mac_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mac_esp_priv*, align 8
  %4 = alloca %struct.esp*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.mac_esp_priv* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.mac_esp_priv* %7, %struct.mac_esp_priv** %3, align 8
  %8 = load %struct.mac_esp_priv*, %struct.mac_esp_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mac_esp_priv, %struct.mac_esp_priv* %8, i32 0, i32 0
  %10 = load %struct.esp*, %struct.esp** %9, align 8
  store %struct.esp* %10, %struct.esp** %4, align 8
  %11 = load %struct.esp*, %struct.esp** %4, align 8
  %12 = getelementptr inbounds %struct.esp, %struct.esp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.esp*, %struct.esp** %4, align 8
  %17 = call i32 @scsi_esp_unregister(%struct.esp* %16)
  %18 = call i32 @spin_lock(i32* @esp_chips_lock)
  %19 = load i32**, i32*** @esp_chips, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32*, i32** %19, i64 %22
  store i32* null, i32** %23, align 8
  %24 = load i32**, i32*** @esp_chips, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %24, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = call i32 @spin_unlock(i32* @esp_chips_lock)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @free_irq(i32 %37, i32* null)
  br label %41

39:                                               ; preds = %1
  %40 = call i32 @spin_unlock(i32* @esp_chips_lock)
  br label %41

41:                                               ; preds = %39, %35
  %42 = load %struct.mac_esp_priv*, %struct.mac_esp_priv** %3, align 8
  %43 = call i32 @kfree(%struct.mac_esp_priv* %42)
  %44 = load %struct.esp*, %struct.esp** %4, align 8
  %45 = getelementptr inbounds %struct.esp, %struct.esp* %44, i32 0, i32 1
  %46 = load %struct.mac_esp_priv*, %struct.mac_esp_priv** %45, align 8
  %47 = call i32 @kfree(%struct.mac_esp_priv* %46)
  %48 = load %struct.esp*, %struct.esp** %4, align 8
  %49 = getelementptr inbounds %struct.esp, %struct.esp* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @scsi_host_put(%struct.TYPE_2__* %50)
  ret i32 0
}

declare dso_local %struct.mac_esp_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @scsi_esp_unregister(%struct.esp*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @kfree(%struct.mac_esp_priv*) #1

declare dso_local i32 @scsi_host_put(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
