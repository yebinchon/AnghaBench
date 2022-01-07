; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_get_ata_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_get_ata_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_to_dev_fis = type { i32, i32 }

@HISI_SAS_SATA_PROTOCOL_FPDMA = common dso_local global i32 0, align 4
@HISI_SAS_SATA_PROTOCOL_PIO = common dso_local global i32 0, align 4
@HISI_SAS_SATA_PROTOCOL_DMA = common dso_local global i32 0, align 4
@HISI_SAS_SATA_PROTOCOL_NONDATA = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_sas_get_ata_protocol(%struct.host_to_dev_fis* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.host_to_dev_fis*, align 8
  %5 = alloca i32, align 4
  store %struct.host_to_dev_fis* %0, %struct.host_to_dev_fis** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %4, align 8
  %7 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %27 [
    i32 164, label %9
    i32 167, label %9
    i32 166, label %9
    i32 165, label %9
    i32 162, label %9
    i32 173, label %11
    i32 163, label %11
    i32 157, label %11
    i32 150, label %11
    i32 161, label %11
    i32 160, label %11
    i32 155, label %11
    i32 136, label %11
    i32 159, label %11
    i32 158, label %11
    i32 171, label %13
    i32 172, label %13
    i32 156, label %13
    i32 154, label %13
    i32 153, label %13
    i32 152, label %13
    i32 151, label %13
    i32 149, label %13
    i32 144, label %13
    i32 143, label %13
    i32 140, label %13
    i32 139, label %13
    i32 138, label %13
    i32 135, label %13
    i32 137, label %13
    i32 134, label %13
    i32 133, label %13
    i32 175, label %15
    i32 174, label %15
    i32 170, label %15
    i32 169, label %15
    i32 168, label %15
    i32 142, label %15
    i32 141, label %15
    i32 148, label %15
    i32 146, label %15
    i32 145, label %15
    i32 132, label %15
    i32 147, label %17
  ]

9:                                                ; preds = %2, %2, %2, %2, %2
  %10 = load i32, i32* @HISI_SAS_SATA_PROTOCOL_FPDMA, align 4
  store i32 %10, i32* %3, align 4
  br label %35

11:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %12 = load i32, i32* @HISI_SAS_SATA_PROTOCOL_PIO, align 4
  store i32 %12, i32* %3, align 4
  br label %35

13:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %14 = load i32, i32* @HISI_SAS_SATA_PROTOCOL_DMA, align 4
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %16 = load i32, i32* @HISI_SAS_SATA_PROTOCOL_NONDATA, align 4
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %4, align 8
  %19 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %25 [
    i32 130, label %21
    i32 131, label %21
    i32 129, label %23
    i32 128, label %23
  ]

21:                                               ; preds = %17, %17
  %22 = load i32, i32* @HISI_SAS_SATA_PROTOCOL_PIO, align 4
  store i32 %22, i32* %3, align 4
  br label %35

23:                                               ; preds = %17, %17
  %24 = load i32, i32* @HISI_SAS_SATA_PROTOCOL_DMA, align 4
  store i32 %24, i32* %3, align 4
  br label %35

25:                                               ; preds = %17
  %26 = load i32, i32* @HISI_SAS_SATA_PROTOCOL_NONDATA, align 4
  store i32 %26, i32* %3, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @DMA_NONE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @HISI_SAS_SATA_PROTOCOL_NONDATA, align 4
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @HISI_SAS_SATA_PROTOCOL_PIO, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %31, %25, %23, %21, %15, %13, %11, %9
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
