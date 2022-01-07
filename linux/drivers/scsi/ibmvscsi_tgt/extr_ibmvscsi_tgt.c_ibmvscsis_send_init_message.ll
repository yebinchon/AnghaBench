; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_send_init_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_send_init_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.viosrp_crq = type { i32, i32 }

@VALID_INIT_MSG = common dso_local global i32 0, align 4
@MSG_HI = common dso_local global i64 0, align 8
@MSG_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*, i32)* @ibmvscsis_send_init_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_send_init_message(%struct.scsi_info* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.viosrp_crq*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = bitcast [2 x i32]* %6 to %struct.viosrp_crq*
  store %struct.viosrp_crq* %9, %struct.viosrp_crq** %5, align 8
  %10 = load i32, i32* @VALID_INIT_MSG, align 4
  %11 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %12 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %15 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* @MSG_HI, align 8
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cpu_to_be64(i32 %22)
  %24 = load i64, i64* @MSG_LOW, align 8
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpu_to_be64(i32 %26)
  %28 = call i64 @h_send_crq(i32 %19, i32 %23, i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  ret i64 %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @h_send_crq(i32, i32, i32) #2

declare dso_local i32 @cpu_to_be64(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
