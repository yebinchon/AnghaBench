; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_set_req_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_set_req_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32 }

@VFIO_PCI_REQ_IRQ_INDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)* @vfio_pci_set_req_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_set_req_trigger(%struct.vfio_pci_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfio_pci_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @VFIO_PCI_REQ_IRQ_INDEX, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %11, align 4
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %17, %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %33

26:                                               ; preds = %20
  %27 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %28 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %27, i32 0, i32 0
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @vfio_pci_set_ctx_trigger_single(i32* %28, i32 %29, i32 %30, i8* %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %26, %23
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @vfio_pci_set_ctx_trigger_single(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
