; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_intx_unmask_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_intx_unmask_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32, %struct.TYPE_2__*, i64, i32, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @vfio_pci_intx_unmask_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_intx_unmask_handler(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vfio_pci_device*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.vfio_pci_device*
  store %struct.vfio_pci_device* %10, %struct.vfio_pci_device** %5, align 8
  %11 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %12 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %11, i32 0, i32 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %15 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %19 = call i32 @is_intx(%struct.vfio_pci_device* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %27 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %32 = call i32 @pci_intx(%struct.pci_dev* %31, i32 1)
  br label %33

33:                                               ; preds = %30, %25
  br label %73

34:                                               ; preds = %2
  %35 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %36 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %34
  %43 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %44 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %72, label %47

47:                                               ; preds = %42
  %48 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %49 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %54 = call i32 @pci_check_and_unmask_intx(%struct.pci_dev* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %52
  br label %63

58:                                               ; preds = %47
  %59 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @enable_irq(i32 %61)
  br label %63

63:                                               ; preds = %58, %57
  %64 = load i32, i32* %8, align 4
  %65 = icmp sgt i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %68 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 4
  br label %72

72:                                               ; preds = %63, %42, %34
  br label %73

73:                                               ; preds = %72, %33
  %74 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %75 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %74, i32 0, i32 0
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_intx(%struct.vfio_pci_device*) #1

declare dso_local i32 @pci_intx(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_check_and_unmask_intx(%struct.pci_dev*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
