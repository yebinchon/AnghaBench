; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_upload_cxn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_upload_cxn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { i32 }
%struct.beiscsi_endpoint = type { i64, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_tcp_upload_params_in = type { i32, i32, i32 }

@CMD_COMMON_TCP_UPLOAD = common dso_local global i32 0, align 4
@OPCODE_COMMON_TCP_UPLOAD = common dso_local global i32 0, align 4
@BE_UPLOAD_TYPE_GRACEFUL = common dso_local global i32 0, align 4
@BE_UPLOAD_TYPE_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_upload_cxn(%struct.beiscsi_hba* %0, %struct.beiscsi_endpoint* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.beiscsi_endpoint*, align 8
  %6 = alloca %struct.be_ctrl_info*, align 8
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca %struct.be_tcp_upload_params_in*, align 8
  %9 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store %struct.beiscsi_endpoint* %1, %struct.beiscsi_endpoint** %5, align 8
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %11 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %10, i32 0, i32 0
  store %struct.be_ctrl_info* %11, %struct.be_ctrl_info** %6, align 8
  %12 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %13 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %16 = call %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba* %15, i32* %9)
  store %struct.be_mcc_wrb* %16, %struct.be_mcc_wrb** %7, align 8
  %17 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %18 = icmp ne %struct.be_mcc_wrb* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %21 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  store i32 0, i32* %3, align 4
  br label %58

23:                                               ; preds = %2
  %24 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %25 = call %struct.be_tcp_upload_params_in* @embedded_payload(%struct.be_mcc_wrb* %24)
  store %struct.be_tcp_upload_params_in* %25, %struct.be_tcp_upload_params_in** %8, align 8
  %26 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %27 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %26, i32 4, i32 1, i32 0)
  %28 = load %struct.be_tcp_upload_params_in*, %struct.be_tcp_upload_params_in** %8, align 8
  %29 = getelementptr inbounds %struct.be_tcp_upload_params_in, %struct.be_tcp_upload_params_in* %28, i32 0, i32 2
  %30 = load i32, i32* @CMD_COMMON_TCP_UPLOAD, align 4
  %31 = load i32, i32* @OPCODE_COMMON_TCP_UPLOAD, align 4
  %32 = call i32 @be_cmd_hdr_prepare(i32* %29, i32 %30, i32 %31, i32 12)
  %33 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %5, align 8
  %34 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.be_tcp_upload_params_in*, %struct.be_tcp_upload_params_in** %8, align 8
  %37 = getelementptr inbounds %struct.be_tcp_upload_params_in, %struct.be_tcp_upload_params_in* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %5, align 8
  %39 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %23
  %43 = load i32, i32* @BE_UPLOAD_TYPE_GRACEFUL, align 4
  %44 = load %struct.be_tcp_upload_params_in*, %struct.be_tcp_upload_params_in** %8, align 8
  %45 = getelementptr inbounds %struct.be_tcp_upload_params_in, %struct.be_tcp_upload_params_in* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %50

46:                                               ; preds = %23
  %47 = load i32, i32* @BE_UPLOAD_TYPE_ABORT, align 4
  %48 = load %struct.be_tcp_upload_params_in*, %struct.be_tcp_upload_params_in** %8, align 8
  %49 = getelementptr inbounds %struct.be_tcp_upload_params_in, %struct.be_tcp_upload_params_in* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %51, i32 %52)
  %54 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %55 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %50, %19
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.be_tcp_upload_params_in* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
