; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_connection_broken.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_connection_broken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.viosrp_crq = type { i32, i32, i32 }

@VALID_CMD_RESP_EL = common dso_local global i32 0, align 4
@MESSAGE_IN_CRQ = common dso_local global i32 0, align 4
@PING = common dso_local global i32 0, align 4
@MSG_HI = common dso_local global i64 0, align 8
@MSG_LOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Connection_broken: rc %ld\0A\00", align 1
@H_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_info*)* @connection_broken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connection_broken(%struct.scsi_info* %0) #0 {
  %2 = alloca %struct.scsi_info*, align 8
  %3 = alloca %struct.viosrp_crq*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_info* %0, %struct.scsi_info** %2, align 8
  %7 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  store i32 0, i32* %6, align 4
  %8 = bitcast [2 x i32]* %4 to %struct.viosrp_crq*
  store %struct.viosrp_crq* %8, %struct.viosrp_crq** %3, align 8
  %9 = load i32, i32* @VALID_CMD_RESP_EL, align 4
  %10 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %11 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @MESSAGE_IN_CRQ, align 4
  %13 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %14 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @PING, align 4
  %16 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %17 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %19 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* @MSG_HI, align 8
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cpu_to_be64(i32 %24)
  %26 = load i64, i64* @MSG_LOW, align 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cpu_to_be64(i32 %28)
  %30 = call i64 @h_send_crq(i32 %21, i32 %25, i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %32 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @H_CLOSED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @h_send_crq(i32, i32, i32) #2

declare dso_local i32 @cpu_to_be64(i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
