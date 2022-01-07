; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_alloc_sget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_alloc_sget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_session = type { i32 }
%struct.qedi_cmd = type { %struct.qedi_io_bdt }
%struct.qedi_io_bdt = type { i64, i32, i32 }
%struct.scsi_sge = type { i32 }

@QEDI_ISCSI_MAX_BDS_PER_CMD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not allocate BD table.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*, %struct.iscsi_session*, %struct.qedi_cmd*)* @qedi_alloc_sget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_alloc_sget(%struct.qedi_ctx* %0, %struct.iscsi_session* %1, %struct.qedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedi_ctx*, align 8
  %6 = alloca %struct.iscsi_session*, align 8
  %7 = alloca %struct.qedi_cmd*, align 8
  %8 = alloca %struct.qedi_io_bdt*, align 8
  %9 = alloca %struct.scsi_sge*, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %5, align 8
  store %struct.iscsi_session* %1, %struct.iscsi_session** %6, align 8
  store %struct.qedi_cmd* %2, %struct.qedi_cmd** %7, align 8
  %10 = load %struct.qedi_cmd*, %struct.qedi_cmd** %7, align 8
  %11 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %10, i32 0, i32 0
  store %struct.qedi_io_bdt* %11, %struct.qedi_io_bdt** %8, align 8
  %12 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* @QEDI_ISCSI_MAX_BDS_PER_CMD, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = load %struct.qedi_io_bdt*, %struct.qedi_io_bdt** %8, align 8
  %21 = getelementptr inbounds %struct.qedi_io_bdt, %struct.qedi_io_bdt* %20, i32 0, i32 2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @dma_alloc_coherent(i32* %15, i32 %19, i32* %21, i32 %22)
  %24 = load %struct.qedi_io_bdt*, %struct.qedi_io_bdt** %8, align 8
  %25 = getelementptr inbounds %struct.qedi_io_bdt, %struct.qedi_io_bdt* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.qedi_io_bdt*, %struct.qedi_io_bdt** %8, align 8
  %27 = getelementptr inbounds %struct.qedi_io_bdt, %struct.qedi_io_bdt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %33 = call i32 @iscsi_session_printk(i32 %31, %struct.iscsi_session* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %39

36:                                               ; preds = %3
  %37 = load %struct.qedi_io_bdt*, %struct.qedi_io_bdt** %8, align 8
  %38 = getelementptr inbounds %struct.qedi_io_bdt, %struct.qedi_io_bdt* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @iscsi_session_printk(i32, %struct.iscsi_session*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
