; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_nvm_iscsi_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_nvm_iscsi_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not allocate NVM BUF.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QEDI_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"NVM BUF addr=0x%p dma=0x%llx.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*)* @qedi_alloc_nvm_iscsi_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_alloc_nvm_iscsi_cfg(%struct.qedi_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedi_ctx*, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %3, align 8
  %4 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %5 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32 @dma_alloc_coherent(i32* %7, i32 4, i32* %9, i32 %10)
  %12 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %19, i32 0, i32 2
  %21 = call i32 @QEDI_ERR(i32* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %25, i32 0, i32 2
  %27 = load i32, i32* @QEDI_LOG_INFO, align 4
  %28 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @QEDI_INFO(i32* %26, i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %24, %18
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
