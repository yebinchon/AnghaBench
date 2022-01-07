; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_set_irqs_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_set_irqs_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32 }

@VFIO_IRQ_SET_ACTION_TYPE_MASK = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfio_pci_set_irqs_ioctl(%struct.vfio_pci_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfio_pci_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)*, align 8
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)* null, i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)** %14, align 8
  %15 = load i32, i32* %10, align 4
  switch i32 %15, label %50 [
    i32 131, label %16
    i32 129, label %24
    i32 130, label %24
    i32 132, label %31
    i32 128, label %44
  ]

16:                                               ; preds = %6
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @VFIO_IRQ_SET_ACTION_TYPE_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %23 [
    i32 135, label %20
    i32 133, label %21
    i32 134, label %22
  ]

20:                                               ; preds = %16
  store i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)* @vfio_pci_set_intx_mask, i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)** %14, align 8
  br label %23

21:                                               ; preds = %16
  store i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)* @vfio_pci_set_intx_unmask, i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)** %14, align 8
  br label %23

22:                                               ; preds = %16
  store i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)* @vfio_pci_set_intx_trigger, i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)** %14, align 8
  br label %23

23:                                               ; preds = %16, %22, %21, %20
  br label %50

24:                                               ; preds = %6, %6
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @VFIO_IRQ_SET_ACTION_TYPE_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %30 [
    i32 135, label %28
    i32 133, label %28
    i32 134, label %29
  ]

28:                                               ; preds = %24, %24
  br label %30

29:                                               ; preds = %24
  store i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)* @vfio_pci_set_msi_trigger, i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)** %14, align 8
  br label %30

30:                                               ; preds = %24, %29, %28
  br label %50

31:                                               ; preds = %6
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @VFIO_IRQ_SET_ACTION_TYPE_MASK, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %43 [
    i32 134, label %35
  ]

35:                                               ; preds = %31
  %36 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %37 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pci_is_pcie(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)* @vfio_pci_set_err_trigger, i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)** %14, align 8
  br label %42

42:                                               ; preds = %41, %35
  br label %43

43:                                               ; preds = %31, %42
  br label %50

44:                                               ; preds = %6
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @VFIO_IRQ_SET_ACTION_TYPE_MASK, align 4
  %47 = and i32 %45, %46
  switch i32 %47, label %49 [
    i32 134, label %48
  ]

48:                                               ; preds = %44
  store i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)* @vfio_pci_set_req_trigger, i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)** %14, align 8
  br label %49

49:                                               ; preds = %44, %48
  br label %50

50:                                               ; preds = %6, %49, %43, %30, %23
  %51 = load i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)*, i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)** %14, align 8
  %52 = icmp ne i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @ENOTTY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %65

56:                                               ; preds = %50
  %57 = load i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)*, i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)** %14, align 8
  %58 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 %57(%struct.vfio_pci_device* %58, i32 %59, i32 %60, i32 %61, i32 %62, i8* %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %56, %53
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @vfio_pci_set_intx_mask(%struct.vfio_pci_device*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @vfio_pci_set_intx_unmask(%struct.vfio_pci_device*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @vfio_pci_set_intx_trigger(%struct.vfio_pci_device*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @vfio_pci_set_msi_trigger(%struct.vfio_pci_device*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @pci_is_pcie(i32) #1

declare dso_local i32 @vfio_pci_set_err_trigger(%struct.vfio_pci_device*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @vfio_pci_set_req_trigger(%struct.vfio_pci_device*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
