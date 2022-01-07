; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_riva_get_arch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_riva_get_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@NV_ARCH_10 = common dso_local global i32 0, align 4
@NV_ARCH_20 = common dso_local global i32 0, align 4
@NV_ARCH_30 = common dso_local global i32 0, align 4
@NV_ARCH_04 = common dso_local global i32 0, align 4
@NV_ARCH_03 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @riva_get_arch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riva_get_arch(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 4080
  switch i32 %7, label %18 [
    i32 256, label %8
    i32 272, label %8
    i32 336, label %8
    i32 368, label %8
    i32 384, label %8
    i32 416, label %8
    i32 496, label %8
    i32 512, label %10
    i32 592, label %10
    i32 640, label %10
    i32 768, label %12
    i32 784, label %12
    i32 800, label %12
    i32 816, label %12
    i32 832, label %12
    i32 32, label %14
    i32 16, label %16
  ]

8:                                                ; preds = %1, %1, %1, %1, %1, %1, %1
  %9 = load i32, i32* @NV_ARCH_10, align 4
  store i32 %9, i32* %3, align 4
  br label %19

10:                                               ; preds = %1, %1, %1
  %11 = load i32, i32* @NV_ARCH_20, align 4
  store i32 %11, i32* %3, align 4
  br label %19

12:                                               ; preds = %1, %1, %1, %1, %1
  %13 = load i32, i32* @NV_ARCH_30, align 4
  store i32 %13, i32* %3, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @NV_ARCH_04, align 4
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @NV_ARCH_03, align 4
  store i32 %17, i32* %3, align 4
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %16, %14, %12, %10, %8
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
