; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_send_srp_login.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_send_srp_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvscsi_host_data = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.srp_login_req = type { i32, i32, i32 }
%struct.srp_event_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.srp_login_req }

@login_rsp = common dso_local global i32 0, align 4
@VIOSRP_SRP_FORMAT = common dso_local global i32 0, align 4
@login_timeout = common dso_local global i32 0, align 4
@SRP_LOGIN_REQ = common dso_local global i32 0, align 4
@SRP_BUF_FORMAT_DIRECT = common dso_local global i32 0, align 4
@SRP_BUF_FORMAT_INDIRECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sent SRP login\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvscsi_host_data*)* @send_srp_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_srp_login(%struct.ibmvscsi_host_data* %0) #0 {
  %2 = alloca %struct.ibmvscsi_host_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.srp_login_req*, align 8
  %6 = alloca %struct.srp_event_struct*, align 8
  store %struct.ibmvscsi_host_data* %0, %struct.ibmvscsi_host_data** %2, align 8
  %7 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %8 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %7, i32 0, i32 3
  %9 = call %struct.srp_event_struct* @get_event_struct(i32* %8)
  store %struct.srp_event_struct* %9, %struct.srp_event_struct** %6, align 8
  %10 = load %struct.srp_event_struct*, %struct.srp_event_struct** %6, align 8
  %11 = icmp ne %struct.srp_event_struct* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.srp_event_struct*, %struct.srp_event_struct** %6, align 8
  %16 = load i32, i32* @login_rsp, align 4
  %17 = load i32, i32* @VIOSRP_SRP_FORMAT, align 4
  %18 = load i32, i32* @login_timeout, align 4
  %19 = call i32 @init_event_struct(%struct.srp_event_struct* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.srp_event_struct*, %struct.srp_event_struct** %6, align 8
  %21 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.srp_login_req* %23, %struct.srp_login_req** %5, align 8
  %24 = load %struct.srp_login_req*, %struct.srp_login_req** %5, align 8
  %25 = call i32 @memset(%struct.srp_login_req* %24, i32 0, i32 12)
  %26 = load i32, i32* @SRP_LOGIN_REQ, align 4
  %27 = load %struct.srp_login_req*, %struct.srp_login_req** %5, align 8
  %28 = getelementptr inbounds %struct.srp_login_req, %struct.srp_login_req* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = call i32 @cpu_to_be32(i32 4)
  %30 = load %struct.srp_login_req*, %struct.srp_login_req** %5, align 8
  %31 = getelementptr inbounds %struct.srp_login_req, %struct.srp_login_req* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @SRP_BUF_FORMAT_DIRECT, align 4
  %33 = load i32, i32* @SRP_BUF_FORMAT_INDIRECT, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @cpu_to_be16(i32 %34)
  %36 = load %struct.srp_login_req*, %struct.srp_login_req** %5, align 8
  %37 = getelementptr inbounds %struct.srp_login_req, %struct.srp_login_req* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %39 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_lock_irqsave(i32 %42, i64 %43)
  %45 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %46 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %45, i32 0, i32 2
  %47 = call i32 @atomic_set(i32* %46, i32 0)
  %48 = load %struct.srp_event_struct*, %struct.srp_event_struct** %6, align 8
  %49 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %50 = load i32, i32* @login_timeout, align 4
  %51 = mul nsw i32 %50, 2
  %52 = call i32 @ibmvscsi_send_srp_event(%struct.srp_event_struct* %48, %struct.ibmvscsi_host_data* %49, i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %54 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32 %57, i64 %58)
  %60 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %61 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_info(i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.srp_event_struct* @get_event_struct(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @init_event_struct(%struct.srp_event_struct*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.srp_login_req*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ibmvscsi_send_srp_event(%struct.srp_event_struct*, %struct.ibmvscsi_host_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
