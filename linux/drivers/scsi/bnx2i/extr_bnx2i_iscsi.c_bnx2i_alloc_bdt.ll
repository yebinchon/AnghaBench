; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_alloc_bdt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_alloc_bdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_session = type { i32 }
%struct.bnx2i_cmd = type { %struct.io_bdt }
%struct.io_bdt = type { i64, i32, i32 }
%struct.iscsi_bd = type { i32 }

@ISCSI_MAX_BDS_PER_CMD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Could not allocate bdt.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2i_hba*, %struct.iscsi_session*, %struct.bnx2i_cmd*)* @bnx2i_alloc_bdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_alloc_bdt(%struct.bnx2i_hba* %0, %struct.iscsi_session* %1, %struct.bnx2i_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2i_hba*, align 8
  %6 = alloca %struct.iscsi_session*, align 8
  %7 = alloca %struct.bnx2i_cmd*, align 8
  %8 = alloca %struct.io_bdt*, align 8
  %9 = alloca %struct.iscsi_bd*, align 8
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %5, align 8
  store %struct.iscsi_session* %1, %struct.iscsi_session** %6, align 8
  store %struct.bnx2i_cmd* %2, %struct.bnx2i_cmd** %7, align 8
  %10 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %7, align 8
  %11 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %10, i32 0, i32 0
  store %struct.io_bdt* %11, %struct.io_bdt** %8, align 8
  %12 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* @ISCSI_MAX_BDS_PER_CMD, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = load %struct.io_bdt*, %struct.io_bdt** %8, align 8
  %21 = getelementptr inbounds %struct.io_bdt, %struct.io_bdt* %20, i32 0, i32 2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @dma_alloc_coherent(i32* %15, i32 %19, i32* %21, i32 %22)
  %24 = load %struct.io_bdt*, %struct.io_bdt** %8, align 8
  %25 = getelementptr inbounds %struct.io_bdt, %struct.io_bdt* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.io_bdt*, %struct.io_bdt** %8, align 8
  %27 = getelementptr inbounds %struct.io_bdt, %struct.io_bdt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %33 = call i32 @iscsi_session_printk(i32 %31, %struct.iscsi_session* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %39

36:                                               ; preds = %3
  %37 = load %struct.io_bdt*, %struct.io_bdt** %8, align 8
  %38 = getelementptr inbounds %struct.io_bdt, %struct.io_bdt* %37, i32 0, i32 0
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
