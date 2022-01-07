; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_conn_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_conn_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.beiscsi_conn* }
%struct.beiscsi_conn = type { i64, %struct.beiscsi_hba*, %struct.beiscsi_endpoint* }
%struct.beiscsi_hba = type { i32 }
%struct.beiscsi_endpoint = type { i32 }
%struct.beiscsi_offload_params = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BS_%d : HBA in error 0x%lx\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"BS_%d : In beiscsi_conn_start\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"BS_%d : In beiscsi_conn_start , no beiscsi_ep\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_conn_start(%struct.iscsi_cls_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.beiscsi_conn*, align 8
  %6 = alloca %struct.beiscsi_endpoint*, align 8
  %7 = alloca %struct.beiscsi_offload_params, align 4
  %8 = alloca %struct.beiscsi_hba*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %3, align 8
  %9 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %9, i32 0, i32 0
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  store %struct.iscsi_conn* %11, %struct.iscsi_conn** %4, align 8
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %12, i32 0, i32 0
  %14 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %13, align 8
  store %struct.beiscsi_conn* %14, %struct.beiscsi_conn** %5, align 8
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %16 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %15, i32 0, i32 0
  %17 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %16, align 8
  %18 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %17, i32 0, i32 1
  %19 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %18, align 8
  store %struct.beiscsi_hba* %19, %struct.beiscsi_hba** %8, align 8
  %20 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %21 = call i32 @beiscsi_hba_is_online(%struct.beiscsi_hba* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %1
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %25 = load i32, i32* @KERN_INFO, align 4
  %26 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %28 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %62

33:                                               ; preds = %1
  %34 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %35 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %34, i32 0, i32 1
  %36 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %35, align 8
  %37 = load i32, i32* @KERN_INFO, align 4
  %38 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %39 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @memset(%struct.beiscsi_offload_params* %7, i32 0, i32 4)
  %41 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %42 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %41, i32 0, i32 2
  %43 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %42, align 8
  store %struct.beiscsi_endpoint* %43, %struct.beiscsi_endpoint** %6, align 8
  %44 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %6, align 8
  %45 = icmp ne %struct.beiscsi_endpoint* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %33
  %47 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %48 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %47, i32 0, i32 1
  %49 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %48, align 8
  %50 = load i32, i32* @KERN_ERR, align 4
  %51 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %52 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %46, %33
  %54 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %55 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %57 = call i32 @beiscsi_set_params_for_offld(%struct.beiscsi_conn* %56, %struct.beiscsi_offload_params* %7)
  %58 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %59 = call i32 @beiscsi_offload_connection(%struct.beiscsi_conn* %58, %struct.beiscsi_offload_params* %7)
  %60 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %61 = call i32 @iscsi_conn_start(%struct.iscsi_cls_conn* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %53, %23
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @beiscsi_hba_is_online(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.beiscsi_offload_params*, i32, i32) #1

declare dso_local i32 @beiscsi_set_params_for_offld(%struct.beiscsi_conn*, %struct.beiscsi_offload_params*) #1

declare dso_local i32 @beiscsi_offload_connection(%struct.beiscsi_conn*, %struct.beiscsi_offload_params*) #1

declare dso_local i32 @iscsi_conn_start(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
