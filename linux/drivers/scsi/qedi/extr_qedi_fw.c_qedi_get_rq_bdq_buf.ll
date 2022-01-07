; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_get_rq_bdq_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_get_rq_bdq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.iscsi_cqe_unsolicited = type { i32, i32 }

@QEDI_LOG_CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pld_len [%d], bdq_prod_idx [%d], idx [%d]\0A\00", align 1
@QEDI_BDQ_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"wrong idx %d returned by FW, dropping the unsolicited pkt\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"rqe_opaque [0x%p], idx [%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unsol_cqe_type = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_ctx*, %struct.iscsi_cqe_unsolicited*, i8*, i32)* @qedi_get_rq_bdq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_get_rq_bdq_buf(%struct.qedi_ctx* %0, %struct.iscsi_cqe_unsolicited* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.qedi_ctx*, align 8
  %6 = alloca %struct.iscsi_cqe_unsolicited*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %5, align 8
  store %struct.iscsi_cqe_unsolicited* %1, %struct.iscsi_cqe_unsolicited** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %10, i32 0, i32 3
  %12 = load i32, i32* @QEDI_LOG_CONN, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %19, %22
  %24 = call i32 (i32*, i32, i8*, i32, ...) @QEDI_INFO(i32* %11, i32 %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %23)
  %25 = load %struct.iscsi_cqe_unsolicited*, %struct.iscsi_cqe_unsolicited** %6, align 8
  %26 = getelementptr inbounds %struct.iscsi_cqe_unsolicited, %struct.iscsi_cqe_unsolicited* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @QEDI_BDQ_NUM, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %33, i32 0, i32 3
  %35 = load i32, i32* @QEDI_LOG_CONN, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 (i32*, i32, i8*, i32, ...) @QEDI_INFO(i32* %34, i32 %35, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %76

38:                                               ; preds = %4
  %39 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %39, i32 0, i32 3
  %41 = load i32, i32* @QEDI_LOG_CONN, align 4
  %42 = load %struct.iscsi_cqe_unsolicited*, %struct.iscsi_cqe_unsolicited** %6, align 8
  %43 = getelementptr inbounds %struct.iscsi_cqe_unsolicited, %struct.iscsi_cqe_unsolicited* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i32*, i32, i8*, i32, ...) @QEDI_INFO(i32* %40, i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %47, i32 0, i32 3
  %49 = load i32, i32* @QEDI_LOG_CONN, align 4
  %50 = load %struct.iscsi_cqe_unsolicited*, %struct.iscsi_cqe_unsolicited** %6, align 8
  %51 = getelementptr inbounds %struct.iscsi_cqe_unsolicited, %struct.iscsi_cqe_unsolicited* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32*, i32, i8*, i32, ...) @QEDI_INFO(i32* %48, i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load %struct.iscsi_cqe_unsolicited*, %struct.iscsi_cqe_unsolicited** %6, align 8
  %55 = getelementptr inbounds %struct.iscsi_cqe_unsolicited, %struct.iscsi_cqe_unsolicited* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %75 [
    i32 128, label %57
    i32 131, label %57
    i32 129, label %74
    i32 130, label %74
  ]

57:                                               ; preds = %38, %38
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @memcpy(i8* %61, i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %60, %57
  br label %76

74:                                               ; preds = %38, %38
  br label %76

75:                                               ; preds = %38
  br label %76

76:                                               ; preds = %32, %75, %74, %73
  ret void
}

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
