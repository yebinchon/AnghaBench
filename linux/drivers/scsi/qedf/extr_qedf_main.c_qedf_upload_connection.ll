; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_upload_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_upload_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32, i32)*, i32 (i32, i32, i32)* }
%struct.qedf_ctx = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.qedf_rport = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@QEDF_TERM_BUFF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@QEDF_LOG_CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Uploading connection port_id=%06x.\0A\00", align 1
@qed_ops = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_ctx*, %struct.qedf_rport*)* @qedf_upload_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_upload_connection(%struct.qedf_ctx* %0, %struct.qedf_rport* %1) #0 {
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca %struct.qedf_rport*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  store %struct.qedf_rport* %1, %struct.qedf_rport** %4, align 8
  %7 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* @QEDF_TERM_BUFF_SIZE, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @dma_alloc_coherent(i32* %10, i32 %11, i32* %6, i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %14, i32 0, i32 2
  %16 = load i32, i32* @QEDF_LOG_CONN, align 4
  %17 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %18 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @QEDF_INFO(i32* %15, i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @qed_ops, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %25, align 8
  %27 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %31 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 %26(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @qed_ops, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %42 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %37(i32 %40, i32 %43)
  %45 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* @QEDF_TERM_BUFF_SIZE, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @dma_free_coherent(i32* %48, i32 %49, i8* %50, i32 %51)
  ret void
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
