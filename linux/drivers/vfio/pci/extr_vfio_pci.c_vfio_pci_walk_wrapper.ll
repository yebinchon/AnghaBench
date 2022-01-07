; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_walk_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_walk_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vfio_pci_walk_info = type { i32, i32 (%struct.pci_dev.0*, i32)*, i32, %struct.TYPE_2__*, i32 }
%struct.pci_dev.0 = type opaque
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @vfio_pci_walk_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_walk_wrapper(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vfio_pci_walk_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.vfio_pci_walk_info*
  store %struct.vfio_pci_walk_info* %7, %struct.vfio_pci_walk_info** %5, align 8
  %8 = load %struct.vfio_pci_walk_info*, %struct.vfio_pci_walk_info** %5, align 8
  %9 = getelementptr inbounds %struct.vfio_pci_walk_info, %struct.vfio_pci_walk_info* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = load %struct.vfio_pci_walk_info*, %struct.vfio_pci_walk_info** %5, align 8
  %15 = getelementptr inbounds %struct.vfio_pci_walk_info, %struct.vfio_pci_walk_info* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @vfio_pci_dev_below_slot(%struct.pci_dev* %13, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %12, %2
  %22 = load %struct.vfio_pci_walk_info*, %struct.vfio_pci_walk_info** %5, align 8
  %23 = getelementptr inbounds %struct.vfio_pci_walk_info, %struct.vfio_pci_walk_info* %22, i32 0, i32 1
  %24 = load i32 (%struct.pci_dev.0*, i32)*, i32 (%struct.pci_dev.0*, i32)** %23, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = bitcast %struct.pci_dev* %25 to %struct.pci_dev.0*
  %27 = load %struct.vfio_pci_walk_info*, %struct.vfio_pci_walk_info** %5, align 8
  %28 = getelementptr inbounds %struct.vfio_pci_walk_info, %struct.vfio_pci_walk_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %24(%struct.pci_dev.0* %26, i32 %29)
  %31 = load %struct.vfio_pci_walk_info*, %struct.vfio_pci_walk_info** %5, align 8
  %32 = getelementptr inbounds %struct.vfio_pci_walk_info, %struct.vfio_pci_walk_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %21, %12
  %34 = load %struct.vfio_pci_walk_info*, %struct.vfio_pci_walk_info** %5, align 8
  %35 = getelementptr inbounds %struct.vfio_pci_walk_info, %struct.vfio_pci_walk_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  ret i32 %36
}

declare dso_local i64 @vfio_pci_dev_below_slot(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
