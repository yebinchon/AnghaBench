; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_event_struct = type { %struct.TYPE_6__, %struct.ibmvscsi_host_data* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ibmvscsi_host_data = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Command timed out (%x). Resetting connection\0A\00", align 1
@evt_struct = common dso_local global %struct.srp_event_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ibmvscsi_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvscsi_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.srp_event_struct*, align 8
  %4 = alloca %struct.ibmvscsi_host_data*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.srp_event_struct*, %struct.srp_event_struct** %3, align 8
  %6 = ptrtoint %struct.srp_event_struct* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.srp_event_struct* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.srp_event_struct* %9, %struct.srp_event_struct** %3, align 8
  %10 = load %struct.srp_event_struct*, %struct.srp_event_struct** %3, align 8
  %11 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %10, i32 0, i32 1
  %12 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %11, align 8
  store %struct.ibmvscsi_host_data* %12, %struct.ibmvscsi_host_data** %4, align 8
  %13 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %14 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.srp_event_struct*, %struct.srp_event_struct** %3, align 8
  %17 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %24 = call i32 @ibmvscsi_reset_host(%struct.ibmvscsi_host_data* %23)
  ret void
}

declare dso_local %struct.srp_event_struct* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ibmvscsi_reset_host(%struct.ibmvscsi_host_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
