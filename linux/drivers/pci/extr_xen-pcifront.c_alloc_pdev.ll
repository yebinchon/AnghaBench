; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_alloc_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_alloc_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { i32, %struct.xen_pci_sharedinfo*, i32, i32, i32, i32, i32, %struct.xenbus_device* }
%struct.xen_pci_sharedinfo = type { i64 }
%struct.xenbus_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@_XEN_PCIB_AERHANDLER = common dso_local global i32 0, align 4
@INVALID_EVTCHN = common dso_local global i32 0, align 4
@INVALID_GRANT_REF = common dso_local global i32 0, align 4
@pcifront_do_aer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Allocated pdev @ 0x%p pdev->sh_info @ 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcifront_device* (%struct.xenbus_device*)* @alloc_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcifront_device* @alloc_pdev(%struct.xenbus_device* %0) #0 {
  %2 = alloca %struct.xenbus_device*, align 8
  %3 = alloca %struct.pcifront_device*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.pcifront_device* @kzalloc(i32 48, i32 %4)
  store %struct.pcifront_device* %5, %struct.pcifront_device** %3, align 8
  %6 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %7 = icmp eq %struct.pcifront_device* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %66

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @__get_free_page(i32 %10)
  %12 = inttoptr i64 %11 to %struct.xen_pci_sharedinfo*
  %13 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %14 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %13, i32 0, i32 1
  store %struct.xen_pci_sharedinfo* %12, %struct.xen_pci_sharedinfo** %14, align 8
  %15 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %16 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %15, i32 0, i32 1
  %17 = load %struct.xen_pci_sharedinfo*, %struct.xen_pci_sharedinfo** %16, align 8
  %18 = icmp eq %struct.xen_pci_sharedinfo* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %21 = call i32 @kfree(%struct.pcifront_device* %20)
  store %struct.pcifront_device* null, %struct.pcifront_device** %3, align 8
  br label %66

22:                                               ; preds = %9
  %23 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %24 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %23, i32 0, i32 1
  %25 = load %struct.xen_pci_sharedinfo*, %struct.xen_pci_sharedinfo** %24, align 8
  %26 = getelementptr inbounds %struct.xen_pci_sharedinfo, %struct.xen_pci_sharedinfo* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @_XEN_PCIB_AERHANDLER, align 4
  %28 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %29 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %28, i32 0, i32 1
  %30 = load %struct.xen_pci_sharedinfo*, %struct.xen_pci_sharedinfo** %29, align 8
  %31 = getelementptr inbounds %struct.xen_pci_sharedinfo, %struct.xen_pci_sharedinfo* %30, i32 0, i32 0
  %32 = bitcast i64* %31 to i8*
  %33 = call i32 @set_bit(i32 %27, i8* %32)
  %34 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %35 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %34, i32 0, i32 0
  %36 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %37 = call i32 @dev_set_drvdata(i32* %35, %struct.pcifront_device* %36)
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %39 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %40 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %39, i32 0, i32 7
  store %struct.xenbus_device* %38, %struct.xenbus_device** %40, align 8
  %41 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %42 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %41, i32 0, i32 6
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %45 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %44, i32 0, i32 5
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load i32, i32* @INVALID_EVTCHN, align 4
  %48 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %49 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @INVALID_GRANT_REF, align 4
  %51 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %52 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %54 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 8
  %55 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %56 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %55, i32 0, i32 2
  %57 = load i32, i32* @pcifront_do_aer, align 4
  %58 = call i32 @INIT_WORK(i32* %56, i32 %57)
  %59 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %60 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %59, i32 0, i32 0
  %61 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %62 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %63 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %62, i32 0, i32 1
  %64 = load %struct.xen_pci_sharedinfo*, %struct.xen_pci_sharedinfo** %63, align 8
  %65 = call i32 @dev_dbg(i32* %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.pcifront_device* %61, %struct.xen_pci_sharedinfo* %64)
  br label %66

66:                                               ; preds = %22, %19, %8
  %67 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  ret %struct.pcifront_device* %67
}

declare dso_local %struct.pcifront_device* @kzalloc(i32, i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @kfree(%struct.pcifront_device*) #1

declare dso_local i32 @set_bit(i32, i8*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.pcifront_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.pcifront_device*, %struct.xen_pci_sharedinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
