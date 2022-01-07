; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_clearsq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_clearsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }
%struct.qedi_ctx = type { i32, i32 }
%struct.qedi_conn = type { i32, i64, i64, %struct.qedi_endpoint* }
%struct.qedi_endpoint = type { i32 }
%struct.iscsi_task = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Cannot proceed, ep already disconnected, cid=0x%x\0A\00", align 1
@QEDI_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Clearing SQ for cid=0x%x, conn=%p, ep=%p\0A\00", align 1
@qedi_ops = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"fatal error, need hard reset, cid=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedi_clearsq(%struct.qedi_ctx* %0, %struct.qedi_conn* %1, %struct.iscsi_task* %2) #0 {
  %4 = alloca %struct.qedi_ctx*, align 8
  %5 = alloca %struct.qedi_conn*, align 8
  %6 = alloca %struct.iscsi_task*, align 8
  %7 = alloca %struct.qedi_endpoint*, align 8
  %8 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %4, align 8
  store %struct.qedi_conn* %1, %struct.qedi_conn** %5, align 8
  store %struct.iscsi_task* %2, %struct.iscsi_task** %6, align 8
  %9 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %10 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %9, i32 0, i32 3
  %11 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  store %struct.qedi_endpoint* %11, %struct.qedi_endpoint** %7, align 8
  %12 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %13 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %15 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %7, align 8
  %17 = icmp ne %struct.qedi_endpoint* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %19, i32 0, i32 0
  %21 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %22 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @QEDI_WARN(i32* %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %59

25:                                               ; preds = %3
  %26 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* @QEDI_LOG_INFO, align 4
  %29 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %30 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %33 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %7, align 8
  %34 = call i32 @QEDI_INFO(i32* %27, i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %31, %struct.qedi_conn* %32, %struct.qedi_endpoint* %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qedi_ops, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %7, align 8
  %42 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %37(i32 %40, i32 %43)
  %45 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %46 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %47 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %48 = call i32 @qedi_cleanup_all_io(%struct.qedi_ctx* %45, %struct.qedi_conn* %46, %struct.iscsi_task* %47, i32 1)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %25
  %52 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %52, i32 0, i32 0
  %54 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %55 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @QEDI_ERR(i32* %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = call i32 @WARN_ON(i32 1)
  br label %59

59:                                               ; preds = %18, %51, %25
  ret void
}

declare dso_local i32 @QEDI_WARN(i32*, i8*, i32) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32, %struct.qedi_conn*, %struct.qedi_endpoint*) #1

declare dso_local i32 @qedi_cleanup_all_io(%struct.qedi_ctx*, %struct.qedi_conn*, %struct.iscsi_task*, i32) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
