; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_reflck_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_reflck_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_reflck = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfio_pci_reflck* ()* @vfio_pci_reflck_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfio_pci_reflck* @vfio_pci_reflck_alloc() #0 {
  %1 = alloca %struct.vfio_pci_reflck*, align 8
  %2 = alloca %struct.vfio_pci_reflck*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.vfio_pci_reflck* @kzalloc(i32 8, i32 %3)
  store %struct.vfio_pci_reflck* %4, %struct.vfio_pci_reflck** %2, align 8
  %5 = load %struct.vfio_pci_reflck*, %struct.vfio_pci_reflck** %2, align 8
  %6 = icmp ne %struct.vfio_pci_reflck* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.vfio_pci_reflck* @ERR_PTR(i32 %9)
  store %struct.vfio_pci_reflck* %10, %struct.vfio_pci_reflck** %1, align 8
  br label %19

11:                                               ; preds = %0
  %12 = load %struct.vfio_pci_reflck*, %struct.vfio_pci_reflck** %2, align 8
  %13 = getelementptr inbounds %struct.vfio_pci_reflck, %struct.vfio_pci_reflck* %12, i32 0, i32 1
  %14 = call i32 @kref_init(i32* %13)
  %15 = load %struct.vfio_pci_reflck*, %struct.vfio_pci_reflck** %2, align 8
  %16 = getelementptr inbounds %struct.vfio_pci_reflck, %struct.vfio_pci_reflck* %15, i32 0, i32 0
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.vfio_pci_reflck*, %struct.vfio_pci_reflck** %2, align 8
  store %struct.vfio_pci_reflck* %18, %struct.vfio_pci_reflck** %1, align 8
  br label %19

19:                                               ; preds = %11, %7
  %20 = load %struct.vfio_pci_reflck*, %struct.vfio_pci_reflck** %1, align 8
  ret %struct.vfio_pci_reflck* %20
}

declare dso_local %struct.vfio_pci_reflck* @kzalloc(i32, i32) #1

declare dso_local %struct.vfio_pci_reflck* @ERR_PTR(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
