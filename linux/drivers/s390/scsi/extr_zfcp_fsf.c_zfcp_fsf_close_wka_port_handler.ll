; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_close_wka_port_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_close_wka_port_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_4__*, %struct.zfcp_fc_wka_port* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.zfcp_fc_wka_port = type { i32, i32, i32 }

@FSF_PORT_HANDLE_NOT_VALID = common dso_local global i64 0, align 8
@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fscwph1\00", align 1
@ZFCP_FC_WKA_PORT_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_close_wka_port_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_close_wka_port_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_fc_wka_port*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %4 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %5 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %4, i32 0, i32 2
  %6 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %5, align 8
  store %struct.zfcp_fc_wka_port* %6, %struct.zfcp_fc_wka_port** %3, align 8
  %7 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FSF_PORT_HANDLE_NOT_VALID, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %17 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %18 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %3, align 8
  %22 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @zfcp_erp_adapter_reopen(i32 %23, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %15, %1
  %26 = load i32, i32* @ZFCP_FC_WKA_PORT_OFFLINE, align 4
  %27 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %3, align 8
  %28 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %3, align 8
  %30 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %29, i32 0, i32 0
  %31 = call i32 @wake_up(i32* %30)
  ret void
}

declare dso_local i32 @zfcp_erp_adapter_reopen(i32, i32, i8*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
