; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_map_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_map_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pqi_sg_descriptor = type { i32, i32, i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CISS_SG_LAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pqi_sg_descriptor*, i8*, i64, i32)* @pqi_map_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_map_single(%struct.pci_dev* %0, %struct.pqi_sg_descriptor* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.pqi_sg_descriptor*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store %struct.pqi_sg_descriptor* %1, %struct.pqi_sg_descriptor** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = load i64, i64* %10, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @DMA_NONE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %15, %5
  store i32 0, i32* %6, align 4
  br label %52

23:                                               ; preds = %18
  %24 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @dma_map_single(i32* %25, i8* %26, i64 %27, i32 %28)
  store i64 %29, i64* %12, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %12, align 8
  %33 = call i64 @dma_mapping_error(i32* %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %52

38:                                               ; preds = %23
  %39 = load i64, i64* %12, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.pqi_sg_descriptor*, %struct.pqi_sg_descriptor** %8, align 8
  %42 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %41, i32 0, i32 2
  %43 = call i32 @put_unaligned_le64(i32 %40, i32* %42)
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.pqi_sg_descriptor*, %struct.pqi_sg_descriptor** %8, align 8
  %46 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %45, i32 0, i32 1
  %47 = call i32 @put_unaligned_le32(i64 %44, i32* %46)
  %48 = load i64, i64* @CISS_SG_LAST, align 8
  %49 = load %struct.pqi_sg_descriptor*, %struct.pqi_sg_descriptor** %8, align 8
  %50 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %49, i32 0, i32 0
  %51 = call i32 @put_unaligned_le32(i64 %48, i32* %50)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %38, %35, %22
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i64 @dma_map_single(i32*, i8*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

declare dso_local i32 @put_unaligned_le32(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
