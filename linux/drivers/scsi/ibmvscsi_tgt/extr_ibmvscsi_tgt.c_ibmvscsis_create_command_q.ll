; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_create_command_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_create_command_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { %struct.TYPE_2__, %struct.vio_dev* }
%struct.TYPE_2__ = type { i32, i32, %struct.viosrp_crq*, i32 }
%struct.viosrp_crq = type { i32 }
%struct.vio_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@CRQ_PER_PAGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*, i32)* @ibmvscsis_create_command_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_create_command_q(%struct.scsi_info* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.scsi_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vio_dev*, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %8, i32 0, i32 1
  %10 = load %struct.vio_dev*, %struct.vio_dev** %9, align 8
  store %struct.vio_dev* %10, %struct.vio_dev** %7, align 8
  store i32 1, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i64 @get_zeroed_page(i32 %15)
  %17 = inttoptr i64 %16 to %struct.viosrp_crq*
  %18 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store %struct.viosrp_crq* %17, %struct.viosrp_crq** %20, align 8
  %21 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load %struct.viosrp_crq*, %struct.viosrp_crq** %23, align 8
  %25 = icmp ne %struct.viosrp_crq* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i64, i64* @ENOMEM, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %3, align 8
  br label %67

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CRQ_PER_PAGE, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %35 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %38 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %37, i32 0, i32 0
  %39 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %40 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load %struct.viosrp_crq*, %struct.viosrp_crq** %41, align 8
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %45 = call i32 @dma_map_single(i32* %38, %struct.viosrp_crq* %42, i32 %43, i32 %44)
  %46 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %47 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 8
  %49 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %50 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %49, i32 0, i32 0
  %51 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %52 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @dma_mapping_error(i32* %50, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %29
  %58 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %59 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load %struct.viosrp_crq*, %struct.viosrp_crq** %60, align 8
  %62 = ptrtoint %struct.viosrp_crq* %61 to i64
  %63 = call i32 @free_page(i64 %62)
  %64 = load i64, i64* @ENOMEM, align 8
  %65 = sub nsw i64 0, %64
  store i64 %65, i64* %3, align 8
  br label %67

66:                                               ; preds = %29
  store i64 0, i64* %3, align 8
  br label %67

67:                                               ; preds = %66, %57, %26
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @dma_map_single(i32*, %struct.viosrp_crq*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
