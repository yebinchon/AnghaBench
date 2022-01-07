; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { %struct.zfcp_erp_action* }
%struct.zfcp_erp_action = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@ZFCP_STATUS_ERP_TIMEDOUT = common dso_local global i32 0, align 4
@fsf_req = common dso_local global %struct.zfcp_fsf_req* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_erp_timeout_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.zfcp_fsf_req*, align 8
  %4 = alloca %struct.zfcp_erp_action*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %6 = ptrtoint %struct.zfcp_fsf_req* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.zfcp_fsf_req* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.zfcp_fsf_req* %9, %struct.zfcp_fsf_req** %3, align 8
  %10 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %11 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %10, i32 0, i32 0
  %12 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %11, align 8
  store %struct.zfcp_erp_action* %12, %struct.zfcp_erp_action** %4, align 8
  %13 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %14 = load i32, i32* @ZFCP_STATUS_ERP_TIMEDOUT, align 4
  %15 = call i32 @zfcp_erp_notify(%struct.zfcp_erp_action* %13, i32 %14)
  ret void
}

declare dso_local %struct.zfcp_fsf_req* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @zfcp_erp_notify(%struct.zfcp_erp_action*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
