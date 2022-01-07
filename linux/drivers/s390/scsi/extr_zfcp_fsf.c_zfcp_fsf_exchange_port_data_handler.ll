; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_exchange_port_data_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_exchange_port_data_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.fsf_qtcb* }
%struct.fsf_qtcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_exchange_port_data_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_exchange_port_data_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.fsf_qtcb*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %4 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %5 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %4, i32 0, i32 1
  %6 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %5, align 8
  store %struct.fsf_qtcb* %6, %struct.fsf_qtcb** %3, align 8
  %7 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %3, align 8
  %16 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %31 [
    i32 128, label %19
    i32 129, label %22
  ]

19:                                               ; preds = %14
  %20 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %21 = call i32 @zfcp_fsf_exchange_port_evaluate(%struct.zfcp_fsf_req* %20)
  br label %31

22:                                               ; preds = %14
  %23 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %24 = call i32 @zfcp_fsf_exchange_port_evaluate(%struct.zfcp_fsf_req* %23)
  %25 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %26 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %3, align 8
  %27 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @zfcp_fsf_link_down_info_eval(%struct.zfcp_fsf_req* %25, i32* %29)
  br label %31

31:                                               ; preds = %13, %14, %22, %19
  ret void
}

declare dso_local i32 @zfcp_fsf_exchange_port_evaluate(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_link_down_info_eval(%struct.zfcp_fsf_req*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
