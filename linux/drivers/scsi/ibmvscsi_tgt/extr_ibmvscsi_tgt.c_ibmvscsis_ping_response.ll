; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_ping_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_ping_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.viosrp_crq = type { i32, i64, i32 }

@VALID_CMD_RESP_EL = common dso_local global i32 0, align 4
@MESSAGE_IN_CRQ = common dso_local global i64 0, align 8
@PING_RESPONSE = common dso_local global i32 0, align 4
@MSG_HI = common dso_local global i64 0, align 8
@MSG_LOW = common dso_local global i64 0, align 8
@CLIENT_FAILED = common dso_local global i32 0, align 4
@RESPONSE_Q_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ping_response: h_send_crq failed, rc %ld\0A\00", align 1
@ERR_DISCONNECT_RECONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"ping_response: h_send_crq returned unknown rc %ld\0A\00", align 1
@ERR_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*)* @ibmvscsis_ping_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_ping_response(%struct.scsi_info* %0) #0 {
  %2 = alloca %struct.scsi_info*, align 8
  %3 = alloca %struct.viosrp_crq*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %2, align 8
  %6 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = bitcast [2 x i32]* %4 to %struct.viosrp_crq*
  store %struct.viosrp_crq* %7, %struct.viosrp_crq** %3, align 8
  %8 = load i32, i32* @VALID_CMD_RESP_EL, align 4
  %9 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %10 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load i64, i64* @MESSAGE_IN_CRQ, align 8
  %12 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %13 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = load i32, i32* @PING_RESPONSE, align 4
  %15 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %16 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @MSG_HI, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cpu_to_be64(i32 %23)
  %25 = load i64, i64* @MSG_LOW, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cpu_to_be64(i32 %27)
  %29 = call i64 @h_send_crq(i32 %20, i32 %24, i32 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  switch i64 %30, label %52 [
    i64 128, label %31
    i64 131, label %32
    i64 130, label %38
    i64 129, label %44
  ]

31:                                               ; preds = %1
  br label %60

32:                                               ; preds = %1
  %33 = load i32, i32* @CLIENT_FAILED, align 4
  %34 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %35 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %1, %32
  %39 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %40 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %41 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %1, %38
  %45 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %46 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %45, i32 0, i32 0
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %50 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %51 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %49, i32 %50, i32 0)
  br label %60

52:                                               ; preds = %1
  %53 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %54 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %53, i32 0, i32 0
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %58 = load i32, i32* @ERR_DISCONNECT, align 4
  %59 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %52, %44, %31
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @h_send_crq(i32, i32, i32) #2

declare dso_local i32 @cpu_to_be64(i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i64) #2

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
