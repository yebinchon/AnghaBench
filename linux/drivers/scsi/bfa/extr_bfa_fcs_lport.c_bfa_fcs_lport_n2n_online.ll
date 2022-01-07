; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_n2n_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_n2n_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { i64, i32, %struct.TYPE_4__*, i32, %struct.bfa_lport_cfg_s, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.bfa_lport_cfg_s = type { i32 }
%struct.TYPE_3__ = type { %struct.bfa_fcs_lport_n2n_s }
%struct.bfa_fcs_lport_n2n_s = type { i32 }
%struct.bfa_fcs_rport_s = type { i32, i32 }

@N2N_LOCAL_PID = common dso_local global i32 0, align 4
@N2N_REMOTE_PID = common dso_local global i32 0, align 4
@RPSM_EVENT_PLOGI_SEND = common dso_local global i32 0, align 4
@RPSM_EVENT_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_s*)* @bfa_fcs_lport_n2n_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_n2n_online(%struct.bfa_fcs_lport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_lport_s*, align 8
  %3 = alloca %struct.bfa_fcs_lport_n2n_s*, align 8
  %4 = alloca %struct.bfa_lport_cfg_s*, align 8
  %5 = alloca %struct.bfa_fcs_rport_s*, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %2, align 8
  %6 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.bfa_fcs_lport_n2n_s* %8, %struct.bfa_fcs_lport_n2n_s** %3, align 8
  %9 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %10 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %9, i32 0, i32 4
  store %struct.bfa_lport_cfg_s* %10, %struct.bfa_lport_cfg_s** %4, align 8
  %11 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.bfa_lport_cfg_s*, %struct.bfa_lport_cfg_s** %4, align 8
  %15 = getelementptr inbounds %struct.bfa_lport_cfg_s, %struct.bfa_lport_cfg_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bfa_trc(i32 %13, i32 %16)
  %18 = load %struct.bfa_lport_cfg_s*, %struct.bfa_lport_cfg_s** %4, align 8
  %19 = getelementptr inbounds %struct.bfa_lport_cfg_s, %struct.bfa_lport_cfg_s* %18, i32 0, i32 0
  %20 = bitcast i32* %19 to i8*
  %21 = load %struct.bfa_fcs_lport_n2n_s*, %struct.bfa_fcs_lport_n2n_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_lport_n2n_s, %struct.bfa_fcs_lport_n2n_s* %21, i32 0, i32 0
  %23 = bitcast i32* %22 to i8*
  %24 = call i64 @memcmp(i8* %20, i8* %23, i32 4)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %95

26:                                               ; preds = %1
  %27 = load i32, i32* @N2N_LOCAL_PID, align 4
  %28 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %29 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %31 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @N2N_LOCAL_PID, align 4
  %36 = call i32 @bfa_lps_set_n2n_pid(i32 %34, i32 %35)
  %37 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %38 = load %struct.bfa_fcs_lport_n2n_s*, %struct.bfa_fcs_lport_n2n_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_fcs_lport_n2n_s, %struct.bfa_fcs_lport_n2n_s* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.bfa_fcs_rport_s* @bfa_fcs_lport_get_rport_by_pwwn(%struct.bfa_fcs_lport_s* %37, i32 %40)
  store %struct.bfa_fcs_rport_s* %41, %struct.bfa_fcs_rport_s** %5, align 8
  %42 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %43 = icmp ne %struct.bfa_fcs_rport_s* %42, null
  br i1 %43, label %44, label %65

44:                                               ; preds = %26
  %45 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %46 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %49 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bfa_trc(i32 %47, i32 %50)
  %52 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %53 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %56 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bfa_trc(i32 %54, i32 %57)
  %59 = load i32, i32* @N2N_REMOTE_PID, align 4
  %60 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %61 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %63 = load i32, i32* @RPSM_EVENT_PLOGI_SEND, align 4
  %64 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s* %62, i32 %63)
  br label %95

65:                                               ; preds = %26
  %66 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %67 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %65
  %71 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %72 = call %struct.bfa_fcs_rport_s* @bfa_fcs_lport_get_rport_by_pid(%struct.bfa_fcs_lport_s* %71, i32 0)
  store %struct.bfa_fcs_rport_s* %72, %struct.bfa_fcs_rport_s** %5, align 8
  %73 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %74 = icmp eq %struct.bfa_fcs_rport_s* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @WARN_ON(i32 %75)
  %77 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %78 = icmp ne %struct.bfa_fcs_rport_s* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %70
  %80 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %81 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %84 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @bfa_trc(i32 %82, i32 %85)
  %87 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %88 = load i32, i32* @RPSM_EVENT_DELETE, align 4
  %89 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s* %87, i32 %88)
  br label %90

90:                                               ; preds = %79, %70
  br label %91

91:                                               ; preds = %90, %65
  %92 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %93 = load i32, i32* @N2N_REMOTE_PID, align 4
  %94 = call i32 @bfa_fcs_rport_create(%struct.bfa_fcs_lport_s* %92, i32 %93)
  br label %95

95:                                               ; preds = %44, %91, %1
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @bfa_lps_set_n2n_pid(i32, i32) #1

declare dso_local %struct.bfa_fcs_rport_s* @bfa_fcs_lport_get_rport_by_pwwn(%struct.bfa_fcs_lport_s*, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s*, i32) #1

declare dso_local %struct.bfa_fcs_rport_s* @bfa_fcs_lport_get_rport_by_pid(%struct.bfa_fcs_lport_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_fcs_rport_create(%struct.bfa_fcs_lport_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
