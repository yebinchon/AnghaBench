; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_pcistub_device_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_pcistub_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcistub_device = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"pcistub_device_alloc\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcistub_device* (%struct.pci_dev*)* @pcistub_device_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcistub_device* @pcistub_device_alloc(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pcistub_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pcistub_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = call i32 @dev_dbg(i32* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pcistub_device* @kzalloc(i32 12, i32 %8)
  store %struct.pcistub_device* %9, %struct.pcistub_device** %4, align 8
  %10 = load %struct.pcistub_device*, %struct.pcistub_device** %4, align 8
  %11 = icmp ne %struct.pcistub_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.pcistub_device* null, %struct.pcistub_device** %2, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = call i32 @pci_dev_get(%struct.pci_dev* %14)
  %16 = load %struct.pcistub_device*, %struct.pcistub_device** %4, align 8
  %17 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.pcistub_device*, %struct.pcistub_device** %4, align 8
  %19 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load %struct.pcistub_device*, %struct.pcistub_device** %4, align 8
  %24 = call i32 @kfree(%struct.pcistub_device* %23)
  store %struct.pcistub_device* null, %struct.pcistub_device** %2, align 8
  br label %33

25:                                               ; preds = %13
  %26 = load %struct.pcistub_device*, %struct.pcistub_device** %4, align 8
  %27 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %26, i32 0, i32 1
  %28 = call i32 @kref_init(i32* %27)
  %29 = load %struct.pcistub_device*, %struct.pcistub_device** %4, align 8
  %30 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.pcistub_device*, %struct.pcistub_device** %4, align 8
  store %struct.pcistub_device* %32, %struct.pcistub_device** %2, align 8
  br label %33

33:                                               ; preds = %25, %22, %12
  %34 = load %struct.pcistub_device*, %struct.pcistub_device** %2, align 8
  ret %struct.pcistub_device* %34
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.pcistub_device* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.pcistub_device*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
