; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_intx_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_intx_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32, %struct.TYPE_2__*, i64, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfio_pci_intx_mask(%struct.vfio_pci_device* %0) #0 {
  %2 = alloca %struct.vfio_pci_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %2, align 8
  %5 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %6 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %5, i32 0, i32 3
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %9 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %13 = call i32 @is_intx(%struct.vfio_pci_device* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %21 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = call i32 @pci_intx(%struct.pci_dev* %25, i32 0)
  br label %27

27:                                               ; preds = %24, %19
  br label %56

28:                                               ; preds = %1
  %29 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %30 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %28
  %37 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %38 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = call i32 @pci_intx(%struct.pci_dev* %42, i32 0)
  br label %49

44:                                               ; preds = %36
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @disable_irq_nosync(i32 %47)
  br label %49

49:                                               ; preds = %44, %41
  %50 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %51 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %28
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %58 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %57, i32 0, i32 0
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_intx(%struct.vfio_pci_device*) #1

declare dso_local i32 @pci_intx(%struct.pci_dev*, i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
