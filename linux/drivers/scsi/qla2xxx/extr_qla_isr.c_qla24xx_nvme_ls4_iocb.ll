; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_nvme_ls4_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_nvme_ls4_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.pt_ls4_request = type { i32 }
%struct.req_que = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32)* }

@__const.qla24xx_nvme_ls4_iocb.func = private unnamed_addr constant [9 x i8] c"LS4_IOCB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla24xx_nvme_ls4_iocb(%struct.scsi_qla_host* %0, %struct.pt_ls4_request* %1, %struct.req_que* %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.pt_ls4_request*, align 8
  %6 = alloca %struct.req_que*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca [9 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.pt_ls4_request* %1, %struct.pt_ls4_request** %5, align 8
  store %struct.req_que* %2, %struct.req_que** %6, align 8
  %10 = bitcast [9 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.qla24xx_nvme_ls4_iocb.func, i32 0, i32 0), i64 9, i1 false)
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %12 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %13 = load %struct.req_que*, %struct.req_que** %6, align 8
  %14 = load %struct.pt_ls4_request*, %struct.pt_ls4_request** %5, align 8
  %15 = call %struct.TYPE_4__* @qla2x00_get_sp_from_handle(%struct.scsi_qla_host* %11, i8* %12, %struct.req_que* %13, %struct.pt_ls4_request* %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %30

19:                                               ; preds = %3
  %20 = load %struct.pt_ls4_request*, %struct.pt_ls4_request** %5, align 8
  %21 = getelementptr inbounds %struct.pt_ls4_request, %struct.pt_ls4_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 %26(%struct.TYPE_4__* %27, i32 %28)
  br label %30

30:                                               ; preds = %19, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_4__* @qla2x00_get_sp_from_handle(%struct.scsi_qla_host*, i8*, %struct.req_que*, %struct.pt_ls4_request*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
