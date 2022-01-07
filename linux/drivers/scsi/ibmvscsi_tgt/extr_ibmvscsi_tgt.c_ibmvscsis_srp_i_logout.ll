; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_srp_i_logout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_srp_i_logout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i64, i32, i32, i32 }
%struct.ibmvscsis_cmd = type { i32, %struct.TYPE_5__, %struct.iu_entry* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.iu_entry = type { i32 }
%struct.viosrp_crq = type { i32 }
%struct.srp_i_logout = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.srp_i_logout }

@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"i_logout: outstanding work\0A\00", align 1
@ERR_DISCONNECT = common dso_local global i32 0, align 4
@SRP_FORMAT = common dso_local global i32 0, align 4
@WAIT_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*, %struct.ibmvscsis_cmd*, %struct.viosrp_crq*)* @ibmvscsis_srp_i_logout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_srp_i_logout(%struct.scsi_info* %0, %struct.ibmvscsis_cmd* %1, %struct.viosrp_crq* %2) #0 {
  %4 = alloca %struct.scsi_info*, align 8
  %5 = alloca %struct.ibmvscsis_cmd*, align 8
  %6 = alloca %struct.viosrp_crq*, align 8
  %7 = alloca %struct.iu_entry*, align 8
  %8 = alloca %struct.srp_i_logout*, align 8
  %9 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %4, align 8
  store %struct.ibmvscsis_cmd* %1, %struct.ibmvscsis_cmd** %5, align 8
  store %struct.viosrp_crq* %2, %struct.viosrp_crq** %6, align 8
  %10 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %10, i32 0, i32 2
  %12 = load %struct.iu_entry*, %struct.iu_entry** %11, align 8
  store %struct.iu_entry* %12, %struct.iu_entry** %7, align 8
  %13 = load %struct.iu_entry*, %struct.iu_entry** %7, align 8
  %14 = call %struct.TYPE_6__* @vio_iu(%struct.iu_entry* %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.srp_i_logout* %16, %struct.srp_i_logout** %8, align 8
  %17 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %3
  %23 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %23, i32 0, i32 3
  %25 = call i32 @list_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %28, i32 0, i32 1
  %30 = call i32 @list_empty(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27, %22, %3
  %33 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %34 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %33, i32 0, i32 2
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %37 = load i32, i32* @ERR_DISCONNECT, align 4
  %38 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %36, i32 %37, i32 0)
  br label %63

39:                                               ; preds = %27
  %40 = load i32, i32* @SRP_FORMAT, align 4
  %41 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load %struct.srp_i_logout*, %struct.srp_i_logout** %8, align 8
  %45 = getelementptr inbounds %struct.srp_i_logout, %struct.srp_i_logout* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %48 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %51 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 4, i32* %52, align 4
  %53 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %53, i32 0, i32 0
  %55 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %56 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %55, i32 0, i32 1
  %57 = call i32 @list_add_tail(i32* %54, i32* %56)
  %58 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %59 = call i32 @ibmvscsis_send_messages(%struct.scsi_info* %58)
  %60 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %61 = load i32, i32* @WAIT_IDLE, align 4
  %62 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %39, %32
  %64 = load i64, i64* %9, align 8
  ret i64 %64
}

declare dso_local %struct.TYPE_6__* @vio_iu(%struct.iu_entry*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ibmvscsis_send_messages(%struct.scsi_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
