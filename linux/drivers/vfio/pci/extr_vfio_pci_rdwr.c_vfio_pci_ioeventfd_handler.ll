; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_rdwr.c_vfio_pci_ioeventfd_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_rdwr.c_vfio_pci_ioeventfd_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_ioeventfd = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @vfio_pci_ioeventfd_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_ioeventfd_handler(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vfio_pci_ioeventfd*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.vfio_pci_ioeventfd*
  store %struct.vfio_pci_ioeventfd* %7, %struct.vfio_pci_ioeventfd** %5, align 8
  %8 = load %struct.vfio_pci_ioeventfd*, %struct.vfio_pci_ioeventfd** %5, align 8
  %9 = getelementptr inbounds %struct.vfio_pci_ioeventfd, %struct.vfio_pci_ioeventfd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %35 [
    i32 1, label %11
    i32 2, label %19
    i32 4, label %27
  ]

11:                                               ; preds = %2
  %12 = load %struct.vfio_pci_ioeventfd*, %struct.vfio_pci_ioeventfd** %5, align 8
  %13 = getelementptr inbounds %struct.vfio_pci_ioeventfd, %struct.vfio_pci_ioeventfd* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vfio_pci_ioeventfd*, %struct.vfio_pci_ioeventfd** %5, align 8
  %16 = getelementptr inbounds %struct.vfio_pci_ioeventfd, %struct.vfio_pci_ioeventfd* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @vfio_iowrite8(i32 %14, i32 %17)
  br label %35

19:                                               ; preds = %2
  %20 = load %struct.vfio_pci_ioeventfd*, %struct.vfio_pci_ioeventfd** %5, align 8
  %21 = getelementptr inbounds %struct.vfio_pci_ioeventfd, %struct.vfio_pci_ioeventfd* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vfio_pci_ioeventfd*, %struct.vfio_pci_ioeventfd** %5, align 8
  %24 = getelementptr inbounds %struct.vfio_pci_ioeventfd, %struct.vfio_pci_ioeventfd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @vfio_iowrite16(i32 %22, i32 %25)
  br label %35

27:                                               ; preds = %2
  %28 = load %struct.vfio_pci_ioeventfd*, %struct.vfio_pci_ioeventfd** %5, align 8
  %29 = getelementptr inbounds %struct.vfio_pci_ioeventfd, %struct.vfio_pci_ioeventfd* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vfio_pci_ioeventfd*, %struct.vfio_pci_ioeventfd** %5, align 8
  %32 = getelementptr inbounds %struct.vfio_pci_ioeventfd, %struct.vfio_pci_ioeventfd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vfio_iowrite32(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %2, %27, %19, %11
  ret i32 0
}

declare dso_local i32 @vfio_iowrite8(i32, i32) #1

declare dso_local i32 @vfio_iowrite16(i32, i32) #1

declare dso_local i32 @vfio_iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
