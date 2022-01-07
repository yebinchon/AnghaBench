; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_process_iscsi_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_process_iscsi_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_endpoint = type { %struct.qedi_ctx*, %struct.qedi_conn* }
%struct.qedi_ctx = type { i32 }
%struct.qedi_conn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_eqe_data = type { i32 }

@__const.qedi_process_iscsi_error.warn_notice = private unnamed_addr constant [14 x i8] c"iscsi_warning\00", align 1
@__const.qedi_process_iscsi_error.error_notice = private unnamed_addr constant [12 x i8] c"iscsi_error\00", align 1
@__const.qedi_process_iscsi_error.unknown_msg = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@.str = private unnamed_addr constant [30 x i8] c"async event iscsi error:0x%x\0A\00", align 1
@KERN_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"qedi: %s - %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedi_process_iscsi_error(%struct.qedi_endpoint* %0, %struct.iscsi_eqe_data* %1) #0 {
  %3 = alloca %struct.qedi_endpoint*, align 8
  %4 = alloca %struct.iscsi_eqe_data*, align 8
  %5 = alloca %struct.qedi_conn*, align 8
  %6 = alloca %struct.qedi_ctx*, align 8
  %7 = alloca [14 x i8], align 1
  %8 = alloca [12 x i8], align 1
  %9 = alloca [14 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.qedi_endpoint* %0, %struct.qedi_endpoint** %3, align 8
  store %struct.iscsi_eqe_data* %1, %struct.iscsi_eqe_data** %4, align 8
  %14 = bitcast [14 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.qedi_process_iscsi_error.warn_notice, i32 0, i32 0), i64 14, i1 false)
  %15 = bitcast [12 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.qedi_process_iscsi_error.error_notice, i32 0, i32 0), i64 12, i1 false)
  %16 = bitcast [14 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.qedi_process_iscsi_error.unknown_msg, i32 0, i32 0), i64 14, i1 false)
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %17 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %18 = icmp ne %struct.qedi_endpoint* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %22 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %21, i32 0, i32 1
  %23 = load %struct.qedi_conn*, %struct.qedi_conn** %22, align 8
  store %struct.qedi_conn* %23, %struct.qedi_conn** %5, align 8
  %24 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %25 = icmp ne %struct.qedi_conn* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %70

27:                                               ; preds = %20
  %28 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %29 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %28, i32 0, i32 0
  %30 = load %struct.qedi_ctx*, %struct.qedi_ctx** %29, align 8
  store %struct.qedi_ctx* %30, %struct.qedi_ctx** %6, align 8
  %31 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %31, i32 0, i32 0
  %33 = load %struct.iscsi_eqe_data*, %struct.iscsi_eqe_data** %4, align 8
  %34 = getelementptr inbounds %struct.iscsi_eqe_data, %struct.iscsi_eqe_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @QEDI_ERR(i32* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* %12, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  %40 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  store i8* %40, i8** %10, align 8
  br label %43

41:                                               ; preds = %27
  store i32 1, i32* %11, align 4
  %42 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  store i8* %42, i8** %10, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = load %struct.iscsi_eqe_data*, %struct.iscsi_eqe_data** %4, align 8
  %45 = getelementptr inbounds %struct.iscsi_eqe_data, %struct.iscsi_eqe_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @qedi_get_iscsi_error(i32 %46)
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  %51 = getelementptr inbounds [14 x i8], [14 x i8]* %9, i64 0, i64 0
  store i8* %51, i8** %13, align 8
  br label %52

52:                                               ; preds = %50, %43
  %53 = load i32, i32* @KERN_ALERT, align 4
  %54 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %55 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @iscsi_conn_printk(i32 %53, i32 %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %59, i8* %60)
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %52
  %65 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %66 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %69 = call i32 @qedi_start_conn_recovery(i32 %67, %struct.qedi_conn* %68)
  br label %70

70:                                               ; preds = %19, %26, %64, %52
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*, i32) #2

declare dso_local i8* @qedi_get_iscsi_error(i32) #2

declare dso_local i32 @iscsi_conn_printk(i32, i32, i8*, i8*, i8*) #2

declare dso_local i32 @qedi_start_conn_recovery(i32, %struct.qedi_conn*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
