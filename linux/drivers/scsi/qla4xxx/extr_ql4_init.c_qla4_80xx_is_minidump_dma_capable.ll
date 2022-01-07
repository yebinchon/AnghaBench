; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_init.c_qla4_80xx_is_minidump_dma_capable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_init.c_qla4_80xx_is_minidump_dma_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.qla4_8xxx_minidump_template_hdr = type { i32 }

@QLA8022_TEMPLATE_CAP_OFFSET = common dso_local global i32 0, align 4
@QLA83XX_TEMPLATE_CAP_OFFSET = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PEX DMA Not supported %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.qla4_8xxx_minidump_template_hdr*)* @qla4_80xx_is_minidump_dma_capable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4_80xx_is_minidump_dma_capable(%struct.scsi_qla_host* %0, %struct.qla4_8xxx_minidump_template_hdr* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.qla4_8xxx_minidump_template_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.qla4_8xxx_minidump_template_hdr* %1, %struct.qla4_8xxx_minidump_template_hdr** %4, align 8
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %9 = call i64 @is_qla8022(%struct.scsi_qla_host* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @QLA8022_TEMPLATE_CAP_OFFSET, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @QLA83XX_TEMPLATE_CAP_OFFSET, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %17 = load %struct.qla4_8xxx_minidump_template_hdr*, %struct.qla4_8xxx_minidump_template_hdr** %4, align 8
  %18 = bitcast %struct.qla4_8xxx_minidump_template_hdr* %17 to i8*
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = load i32, i32* @BIT_0, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %15
  %30 = load i32, i32* @KERN_INFO, align 4
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ql4_printk(i32 %30, %struct.scsi_qla_host* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %29, %15
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i64 @is_qla8022(%struct.scsi_qla_host*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
