; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_sercos3.c_sercos3_setup_iomem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_sercos3.c_sercos3_setup_iomem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.uio_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@UIO_MEM_PHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.uio_info*, i32, i32)* @sercos3_setup_iomem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sercos3_setup_iomem(%struct.pci_dev* %0, %struct.uio_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.uio_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store %struct.uio_info* %1, %struct.uio_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @pci_resource_start(%struct.pci_dev* %10, i32 %11)
  %13 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %14 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i32 %12, i32* %19, align 4
  %20 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %21 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %74

30:                                               ; preds = %4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @pci_resource_start(%struct.pci_dev* %31, i32 %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @pci_resource_len(%struct.pci_dev* %34, i32 %35)
  %37 = call i32 @ioremap(i32 %33, i32 %36)
  %38 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %39 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %37, i32* %44, align 4
  %45 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %46 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %30
  store i32 -1, i32* %5, align 4
  br label %74

55:                                               ; preds = %30
  %56 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @pci_resource_len(%struct.pci_dev* %56, i32 %57)
  %59 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %60 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %58, i32* %65, align 4
  %66 = load i32, i32* @UIO_MEM_PHYS, align 4
  %67 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %68 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %66, i32* %73, align 4
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %55, %54, %29
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
