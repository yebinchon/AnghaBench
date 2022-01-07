; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_vp_find_vqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_vp_find_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtqueue = type { i32 }
%struct.irq_affinity = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vp_find_vqs(%struct.virtio_device* %0, i32 %1, %struct.virtqueue** %2, i32** %3, i8** %4, i32* %5, %struct.irq_affinity* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtio_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.virtqueue**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.irq_affinity*, align 8
  %16 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.virtqueue** %2, %struct.virtqueue*** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.irq_affinity* %6, %struct.irq_affinity** %15, align 8
  %17 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %20 = load i32**, i32*** %12, align 8
  %21 = load i8**, i8*** %13, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = load %struct.irq_affinity*, %struct.irq_affinity** %15, align 8
  %24 = call i32 @vp_find_vqs_msix(%struct.virtio_device* %17, i32 %18, %struct.virtqueue** %19, i32** %20, i8** %21, i32 1, i32* %22, %struct.irq_affinity* %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %48

28:                                               ; preds = %7
  %29 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %32 = load i32**, i32*** %12, align 8
  %33 = load i8**, i8*** %13, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = load %struct.irq_affinity*, %struct.irq_affinity** %15, align 8
  %36 = call i32 @vp_find_vqs_msix(%struct.virtio_device* %29, i32 %30, %struct.virtqueue** %31, i32** %32, i8** %33, i32 0, i32* %34, %struct.irq_affinity* %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %48

40:                                               ; preds = %28
  %41 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %44 = load i32**, i32*** %12, align 8
  %45 = load i8**, i8*** %13, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = call i32 @vp_find_vqs_intx(%struct.virtio_device* %41, i32 %42, %struct.virtqueue** %43, i32** %44, i8** %45, i32* %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %40, %39, %27
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @vp_find_vqs_msix(%struct.virtio_device*, i32, %struct.virtqueue**, i32**, i8**, i32, i32*, %struct.irq_affinity*) #1

declare dso_local i32 @vp_find_vqs_intx(%struct.virtio_device*, i32, %struct.virtqueue**, i32**, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
