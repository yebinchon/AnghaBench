; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_do_pci_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_do_pci_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.xen_pci_op }
%struct.xen_pci_op = type { i32 }

@_XEN_PCIF_active = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"pciback not responding!!!\0A\00", align 1
@XEN_PCI_ERR_dev_not_found = common dso_local global i32 0, align 4
@_XEN_PCIB_active = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"schedule aer pcifront service\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcifront_device*, %struct.xen_pci_op*)* @do_pci_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pci_op(%struct.pcifront_device* %0, %struct.xen_pci_op* %1) #0 {
  %3 = alloca %struct.pcifront_device*, align 8
  %4 = alloca %struct.xen_pci_op*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xen_pci_op*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcifront_device* %0, %struct.pcifront_device** %3, align 8
  store %struct.xen_pci_op* %1, %struct.xen_pci_op** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %13 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store %struct.xen_pci_op* %15, %struct.xen_pci_op** %6, align 8
  %16 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %17 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %23 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %22, i32 0, i32 1
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.xen_pci_op*, %struct.xen_pci_op** %6, align 8
  %27 = load %struct.xen_pci_op*, %struct.xen_pci_op** %4, align 8
  %28 = call i32 @memcpy(%struct.xen_pci_op* %26, %struct.xen_pci_op* %27, i32 4)
  %29 = call i32 (...) @wmb()
  %30 = load i32, i32* @_XEN_PCIF_active, align 4
  %31 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %32 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to i64*
  %36 = call i32 @set_bit(i32 %30, i64* %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @notify_remote_via_evtchn(i32 %37)
  %39 = call i32 (...) @ktime_get_ns()
  %40 = load i64, i64* @NSEC_PER_SEC, align 8
  %41 = trunc i64 %40 to i32
  %42 = mul nsw i32 2, %41
  %43 = add nsw i32 %39, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @xen_clear_irq_pending(i32 %44)
  br label %46

46:                                               ; preds = %83, %2
  %47 = load i32, i32* @_XEN_PCIF_active, align 4
  %48 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %49 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = bitcast i32* %51 to i64*
  %53 = call i64 @test_bit(i32 %47, i64* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %46
  %56 = load i32, i32* %9, align 4
  %57 = load i64, i64* @jiffies, align 8
  %58 = load i32, i32* @HZ, align 4
  %59 = mul nsw i32 3, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = call i32 @xen_poll_irq_timeout(i32 %56, i64 %61)
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @xen_clear_irq_pending(i32 %63)
  %65 = call i32 (...) @ktime_get_ns()
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %55
  %70 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %71 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @_XEN_PCIF_active, align 4
  %76 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %77 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %76, i32 0, i32 3
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = bitcast i32* %79 to i64*
  %81 = call i32 @clear_bit(i32 %75, i64* %80)
  %82 = load i32, i32* @XEN_PCI_ERR_dev_not_found, align 4
  store i32 %82, i32* %5, align 4
  br label %108

83:                                               ; preds = %55
  br label %46

84:                                               ; preds = %46
  %85 = load i32, i32* @_XEN_PCIB_active, align 4
  %86 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %87 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %86, i32 0, i32 3
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = bitcast i32* %89 to i64*
  %91 = call i64 @test_bit(i32 %85, i64* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %84
  %94 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %95 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %100 = call i32 @schedule_pcifront_aer_op(%struct.pcifront_device* %99)
  br label %101

101:                                              ; preds = %93, %84
  %102 = load %struct.xen_pci_op*, %struct.xen_pci_op** %4, align 8
  %103 = load %struct.xen_pci_op*, %struct.xen_pci_op** %6, align 8
  %104 = call i32 @memcpy(%struct.xen_pci_op* %102, %struct.xen_pci_op* %103, i32 4)
  %105 = load %struct.xen_pci_op*, %struct.xen_pci_op** %4, align 8
  %106 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %101, %69
  %109 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %110 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %109, i32 0, i32 1
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(%struct.xen_pci_op*, %struct.xen_pci_op*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @notify_remote_via_evtchn(i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @xen_clear_irq_pending(i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @xen_poll_irq_timeout(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @schedule_pcifront_aer_op(%struct.pcifront_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
