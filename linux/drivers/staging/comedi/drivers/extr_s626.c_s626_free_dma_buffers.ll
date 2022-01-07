; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_free_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_free_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.s626_private* }
%struct.s626_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.pci_dev = type { i32 }

@S626_DMABUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @s626_free_dma_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s626_free_dma_buffers(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.s626_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %5)
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.s626_private*, %struct.s626_private** %8, align 8
  store %struct.s626_private* %9, %struct.s626_private** %4, align 8
  %10 = load %struct.s626_private*, %struct.s626_private** %4, align 8
  %11 = icmp ne %struct.s626_private* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.s626_private*, %struct.s626_private** %4, align 8
  %15 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = load i32, i32* @S626_DMABUF_SIZE, align 4
  %22 = load %struct.s626_private*, %struct.s626_private** %4, align 8
  %23 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.s626_private*, %struct.s626_private** %4, align 8
  %27 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pci_free_consistent(%struct.pci_dev* %20, i32 %21, i64 %25, i32 %29)
  br label %31

31:                                               ; preds = %19, %13
  %32 = load %struct.s626_private*, %struct.s626_private** %4, align 8
  %33 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = load i32, i32* @S626_DMABUF_SIZE, align 4
  %40 = load %struct.s626_private*, %struct.s626_private** %4, align 8
  %41 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.s626_private*, %struct.s626_private** %4, align 8
  %45 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pci_free_consistent(%struct.pci_dev* %38, i32 %39, i64 %43, i32 %47)
  br label %49

49:                                               ; preds = %12, %37, %31
  ret void
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
