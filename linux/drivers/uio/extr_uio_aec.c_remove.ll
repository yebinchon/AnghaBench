; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_aec.c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_aec.c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.uio_info = type { i64 }

@INT_DISABLE = common dso_local global i32 0, align 4
@INT_MASK_ADDR = common dso_local global i64 0, align 8
@INT_ENABLE_ADDR = common dso_local global i64 0, align 8
@MAILBOX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.uio_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.uio_info* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.uio_info* %5, %struct.uio_info** %3, align 8
  %6 = load i32, i32* @INT_DISABLE, align 4
  %7 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %8 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @INT_MASK_ADDR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @iowrite8(i32 %6, i64 %11)
  %13 = load i32, i32* @INT_DISABLE, align 4
  %14 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %15 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INT_ENABLE_ADDR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @iowrite32(i32 %13, i64 %18)
  %20 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %21 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MAILBOX, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @ioread8(i64 %24)
  %26 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %27 = call i32 @uio_unregister_device(%struct.uio_info* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = call i32 @pci_release_regions(%struct.pci_dev* %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = call i32 @pci_disable_device(%struct.pci_dev* %30)
  %32 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %33 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @iounmap(i64 %34)
  %36 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %37 = call i32 @kfree(%struct.uio_info* %36)
  ret void
}

declare dso_local %struct.uio_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @uio_unregister_device(%struct.uio_info*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.uio_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
