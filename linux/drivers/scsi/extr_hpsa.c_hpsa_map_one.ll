; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_map_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_map_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.CommandList = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i8*, i8*, i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@HPSA_SG_LAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.CommandList*, i8*, i64, i32)* @hpsa_map_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_map_one(%struct.pci_dev* %0, %struct.CommandList* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.CommandList*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store %struct.CommandList* %1, %struct.CommandList** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* %10, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @DMA_NONE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15, %5
  %20 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %21 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = call i8* @cpu_to_le16(i32 0)
  %24 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %25 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  store i32 0, i32* %6, align 4
  br label %76

27:                                               ; preds = %15
  %28 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @dma_map_single(i32* %29, i8* %30, i64 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @dma_mapping_error(i32* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %41 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = call i8* @cpu_to_le16(i32 0)
  %44 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %45 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  store i32 -1, i32* %6, align 4
  br label %76

47:                                               ; preds = %27
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @cpu_to_le64(i32 %48)
  %50 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %51 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32 %49, i32* %54, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i8* @cpu_to_le32(i64 %55)
  %57 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %58 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i8* %56, i8** %61, align 8
  %62 = load i64, i64* @HPSA_SG_LAST, align 8
  %63 = call i8* @cpu_to_le32(i64 %62)
  %64 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %65 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i8* %63, i8** %68, align 8
  %69 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %70 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = call i8* @cpu_to_le16(i32 1)
  %73 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %74 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i8* %72, i8** %75, align 8
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %47, %39, %19
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
