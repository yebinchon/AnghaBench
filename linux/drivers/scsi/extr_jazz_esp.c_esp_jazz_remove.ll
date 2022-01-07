; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_jazz_esp.c_esp_jazz_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_jazz_esp.c_esp_jazz_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.esp = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @esp_jazz_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_jazz_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.esp*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.esp* @dev_get_drvdata(i32* %6)
  store %struct.esp* %7, %struct.esp** %3, align 8
  %8 = load %struct.esp*, %struct.esp** %3, align 8
  %9 = getelementptr inbounds %struct.esp, %struct.esp* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.esp*, %struct.esp** %3, align 8
  %14 = call i32 @scsi_esp_unregister(%struct.esp* %13)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.esp*, %struct.esp** %3, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.esp* %16)
  %18 = load %struct.esp*, %struct.esp** %3, align 8
  %19 = getelementptr inbounds %struct.esp, %struct.esp* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.esp*, %struct.esp** %3, align 8
  %22 = getelementptr inbounds %struct.esp, %struct.esp* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.esp*, %struct.esp** %3, align 8
  %25 = getelementptr inbounds %struct.esp, %struct.esp* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dma_free_coherent(i32 %20, i32 16, i32 %23, i32 %26)
  %28 = load %struct.esp*, %struct.esp** %3, align 8
  %29 = getelementptr inbounds %struct.esp, %struct.esp* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32 @scsi_host_put(%struct.TYPE_2__* %30)
  ret i32 0
}

declare dso_local %struct.esp* @dev_get_drvdata(i32*) #1

declare dso_local i32 @scsi_esp_unregister(%struct.esp*) #1

declare dso_local i32 @free_irq(i32, %struct.esp*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @scsi_host_put(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
