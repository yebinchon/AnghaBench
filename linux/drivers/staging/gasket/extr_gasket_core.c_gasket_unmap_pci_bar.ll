; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_unmap_pci_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_unmap_pci_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i32, i32, %struct.TYPE_4__*, %struct.gasket_internal_desc* }
%struct.TYPE_4__ = type { i32* }
%struct.gasket_internal_desc = type { %struct.gasket_driver_desc* }
%struct.gasket_driver_desc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@PCI_BAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"cannot get PCI BAR%u base address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gasket_dev*, i32)* @gasket_unmap_pci_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gasket_unmap_pci_bar(%struct.gasket_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gasket_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gasket_internal_desc*, align 8
  %8 = alloca %struct.gasket_driver_desc*, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %10 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %9, i32 0, i32 3
  %11 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %10, align 8
  store %struct.gasket_internal_desc* %11, %struct.gasket_internal_desc** %7, align 8
  %12 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %7, align 8
  %13 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %12, i32 0, i32 0
  %14 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %13, align 8
  store %struct.gasket_driver_desc* %14, %struct.gasket_driver_desc** %8, align 8
  %15 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %8, align 8
  %16 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %2
  %25 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %26 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %24, %2
  br label %86

35:                                               ; preds = %24
  %36 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %8, align 8
  %37 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PCI_BAR, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %86

47:                                               ; preds = %35
  %48 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %49 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @iounmap(i32* %55)
  %57 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %58 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %65 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @pci_resource_start(i32 %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %47
  %72 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %73 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %86

77:                                               ; preds = %47
  %78 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %79 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @pci_resource_len(i32 %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @release_mem_region(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %77, %71, %46, %34
  ret void
}

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
