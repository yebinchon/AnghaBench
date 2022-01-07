; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_hcd_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_hcd_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kref = type { i32 }
%struct.u132 = type { i32, %struct.platform_device*, i32 }
%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32 }

@u132_module_lock = common dso_local global i32 0, align 4
@u132_instances = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"FREEING the hcd=%p and thus the u132=%p going=%d pdev=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kref*)* @u132_hcd_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u132_hcd_delete(%struct.kref* %0) #0 {
  %2 = alloca %struct.kref*, align 8
  %3 = alloca %struct.u132*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  store %struct.kref* %0, %struct.kref** %2, align 8
  %6 = load %struct.kref*, %struct.kref** %2, align 8
  %7 = call %struct.u132* @kref_to_u132(%struct.kref* %6)
  store %struct.u132* %7, %struct.u132** %3, align 8
  %8 = load %struct.u132*, %struct.u132** %3, align 8
  %9 = getelementptr inbounds %struct.u132, %struct.u132* %8, i32 0, i32 1
  %10 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  store %struct.platform_device* %10, %struct.platform_device** %4, align 8
  %11 = load %struct.u132*, %struct.u132** %3, align 8
  %12 = call %struct.usb_hcd* @u132_to_hcd(%struct.u132* %11)
  store %struct.usb_hcd* %12, %struct.usb_hcd** %5, align 8
  %13 = load %struct.u132*, %struct.u132** %3, align 8
  %14 = getelementptr inbounds %struct.u132, %struct.u132* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = call i32 @mutex_lock(i32* @u132_module_lock)
  %18 = load %struct.u132*, %struct.u132** %3, align 8
  %19 = getelementptr inbounds %struct.u132, %struct.u132* %18, i32 0, i32 2
  %20 = call i32 @list_del_init(i32* %19)
  %21 = load i32, i32* @u132_instances, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* @u132_instances, align 4
  %23 = call i32 @mutex_unlock(i32* @u132_module_lock)
  %24 = load %struct.u132*, %struct.u132** %3, align 8
  %25 = getelementptr inbounds %struct.u132, %struct.u132* %24, i32 0, i32 1
  %26 = load %struct.platform_device*, %struct.platform_device** %25, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %29 = load %struct.u132*, %struct.u132** %3, align 8
  %30 = load %struct.u132*, %struct.u132** %3, align 8
  %31 = getelementptr inbounds %struct.u132, %struct.u132* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %34 = call i32 @dev_warn(i32* %27, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), %struct.usb_hcd* %28, %struct.u132* %29, i32 %32, %struct.platform_device* %33)
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %36 = call i32 @usb_put_hcd(%struct.usb_hcd* %35)
  ret void
}

declare dso_local %struct.u132* @kref_to_u132(%struct.kref*) #1

declare dso_local %struct.usb_hcd* @u132_to_hcd(%struct.u132*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, %struct.usb_hcd*, %struct.u132*, i32, %struct.platform_device*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
