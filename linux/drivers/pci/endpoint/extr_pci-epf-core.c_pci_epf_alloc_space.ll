; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c_pci_epf_alloc_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c_pci_epf_alloc_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epf = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to allocate mem space\0A\00", align 1
@PCI_BASE_ADDRESS_MEM_TYPE_64 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pci_epf_alloc_space(%struct.pci_epf* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_epf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  store %struct.pci_epf* %0, %struct.pci_epf** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.pci_epf*, %struct.pci_epf** %6, align 8
  %14 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %11, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %19, 128
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i64 128, i64* %7, align 8
  br label %22

22:                                               ; preds = %21, %4
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @ALIGN(i64 %26, i64 %27)
  store i64 %28, i64* %7, align 8
  br label %32

29:                                               ; preds = %22
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @roundup_pow_of_two(i64 %30)
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.device*, %struct.device** %11, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @dma_alloc_coherent(%struct.device* %33, i64 %34, i32* %12, i32 %35)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load %struct.device*, %struct.device** %11, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %86

42:                                               ; preds = %32
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.pci_epf*, %struct.pci_epf** %6, align 8
  %45 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  store i32 %43, i32* %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.pci_epf*, %struct.pci_epf** %6, align 8
  %53 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 %51, i64* %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.pci_epf*, %struct.pci_epf** %6, align 8
  %61 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32 %59, i32* %66, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @upper_32_bits(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %42
  %71 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  br label %74

72:                                               ; preds = %42
  %73 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_32, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = load %struct.pci_epf*, %struct.pci_epf** %6, align 8
  %77 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %75
  store i32 %84, i32* %82, align 4
  %85 = load i8*, i8** %10, align 8
  store i8* %85, i8** %5, align 8
  br label %86

86:                                               ; preds = %74, %39
  %87 = load i8*, i8** %5, align 8
  ret i8* %87
}

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i64 @roundup_pow_of_two(i64) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
