; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_mf624.c_mf624_setup_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_mf624.c_mf624_setup_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.uio_mem = type { i8*, i32, i32, i32, i32, i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@UIO_MEM_PHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, %struct.uio_mem*, i8*)* @mf624_setup_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mf624_setup_mem(%struct.pci_dev* %0, i32 %1, %struct.uio_mem* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uio_mem*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.uio_mem* %2, %struct.uio_mem** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @pci_resource_start(%struct.pci_dev* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @pci_resource_len(%struct.pci_dev* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.uio_mem*, %struct.uio_mem** %8, align 8
  %20 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @PAGE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.uio_mem*, %struct.uio_mem** %8, align 8
  %25 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @PAGE_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load %struct.uio_mem*, %struct.uio_mem** %8, align 8
  %31 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.uio_mem*, %struct.uio_mem** %8, align 8
  %33 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %69

39:                                               ; preds = %4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @PAGE_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = add nsw i32 %45, %46
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* @PAGE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.uio_mem*, %struct.uio_mem** %8, align 8
  %52 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @UIO_MEM_PHYS, align 4
  %54 = load %struct.uio_mem*, %struct.uio_mem** %8, align 8
  %55 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @pci_ioremap_bar(%struct.pci_dev* %56, i32 %57)
  %59 = load %struct.uio_mem*, %struct.uio_mem** %8, align 8
  %60 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.uio_mem*, %struct.uio_mem** %8, align 8
  %62 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %39
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %69

68:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %65, %36
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
