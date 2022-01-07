; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_hw_reset_eps_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_hw_reset_eps_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@USB_CONF_CFGRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdns3_hw_reset_eps_config(%struct.cdns3_device* %0) #0 {
  %2 = alloca %struct.cdns3_device*, align 8
  store %struct.cdns3_device* %0, %struct.cdns3_device** %2, align 8
  %3 = load i32, i32* @USB_CONF_CFGRST, align 4
  %4 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %5 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %4, i32 0, i32 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @writel(i32 %3, i32* %7)
  %9 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %10 = call i32 @cdns3_allow_enable_l1(%struct.cdns3_device* %9, i32 0)
  %11 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %12 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %14 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %16 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %18 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  ret void
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @cdns3_allow_enable_l1(%struct.cdns3_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
