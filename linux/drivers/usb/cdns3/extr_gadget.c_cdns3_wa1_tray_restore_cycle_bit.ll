; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa1_tray_restore_cycle_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa1_tray_restore_cycle_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cdns3_endpoint = type { i32 }

@EP_CMD_DRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns3_device*, %struct.cdns3_endpoint*)* @cdns3_wa1_tray_restore_cycle_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns3_wa1_tray_restore_cycle_bit(%struct.cdns3_device* %0, %struct.cdns3_endpoint* %1) #0 {
  %3 = alloca %struct.cdns3_device*, align 8
  %4 = alloca %struct.cdns3_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cdns3_device* %0, %struct.cdns3_device** %3, align 8
  store %struct.cdns3_endpoint* %1, %struct.cdns3_endpoint** %4, align 8
  %7 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %8 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @readl(i32* %10)
  %12 = load i32, i32* @EP_CMD_DRDY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %19 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %20 = call i32 @cdns3_get_dma_pos(%struct.cdns3_device* %18, %struct.cdns3_endpoint* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %26 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %2
  %30 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %31 = call i32 @cdns3_wa1_restore_cycle_bit(%struct.cdns3_endpoint* %30)
  br label %32

32:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @cdns3_get_dma_pos(%struct.cdns3_device*, %struct.cdns3_endpoint*) #1

declare dso_local i32 @cdns3_wa1_restore_cycle_bit(%struct.cdns3_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
