; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_sl811-hcd.c_sl811h_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_sl811-hcd.c_sl811h_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.sl811 = type { i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sl811h_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sl811h_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.sl811*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.usb_hcd* %7, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.sl811* @hcd_to_sl811(%struct.usb_hcd* %8)
  store %struct.sl811* %9, %struct.sl811** %4, align 8
  %10 = load %struct.sl811*, %struct.sl811** %4, align 8
  %11 = call i32 @remove_debug_file(%struct.sl811* %10)
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = call i32 @usb_remove_hcd(%struct.usb_hcd* %12)
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @platform_get_resource(%struct.platform_device* %14, i32 %15, i32 1)
  store %struct.resource* %16, %struct.resource** %5, align 8
  %17 = load %struct.resource*, %struct.resource** %5, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.sl811*, %struct.sl811** %4, align 8
  %21 = getelementptr inbounds %struct.sl811, %struct.sl811* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iounmap(i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %5, align 8
  %28 = load %struct.resource*, %struct.resource** %5, align 8
  %29 = icmp ne %struct.resource* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.sl811*, %struct.sl811** %4, align 8
  %32 = getelementptr inbounds %struct.sl811, %struct.sl811* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @iounmap(i32 %33)
  br label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %37 = call i32 @usb_put_hcd(%struct.usb_hcd* %36)
  ret i32 0
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.sl811* @hcd_to_sl811(%struct.usb_hcd*) #1

declare dso_local i32 @remove_debug_file(%struct.sl811*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
