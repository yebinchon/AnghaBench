; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_incoming_logo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_incoming_logo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i64 }
%struct.fsf_status_read_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.fc_els_logo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fc_incoming_logo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_incoming_logo(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.fsf_status_read_buffer*, align 8
  %4 = alloca %struct.fc_els_logo*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %5 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.fsf_status_read_buffer*
  store %struct.fsf_status_read_buffer* %8, %struct.fsf_status_read_buffer** %3, align 8
  %9 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.fc_els_logo*
  store %struct.fc_els_logo* %13, %struct.fc_els_logo** %4, align 8
  %14 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %15 = load %struct.fc_els_logo*, %struct.fc_els_logo** %4, align 8
  %16 = getelementptr inbounds %struct.fc_els_logo, %struct.fc_els_logo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be64_to_cpu(i32 %17)
  %19 = call i32 @zfcp_fc_incoming_wwpn(%struct.zfcp_fsf_req* %14, i32 %18)
  ret void
}

declare dso_local i32 @zfcp_fc_incoming_wwpn(%struct.zfcp_fsf_req*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
