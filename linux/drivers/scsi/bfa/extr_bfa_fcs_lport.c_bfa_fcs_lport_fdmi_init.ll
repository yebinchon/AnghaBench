; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_fdmi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_fdmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_ms_s = type { %struct.TYPE_4__*, %struct.bfa_fcs_lport_fdmi_s }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.bfa_fcs_lport_fdmi_s = type { %struct.bfa_fcs_lport_ms_s* }

@bfa_fcs_lport_fdmi_sm_offline = common dso_local global i32 0, align 4
@bfa_fcs_lport_fdmi_sm_disabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_lport_fdmi_init(%struct.bfa_fcs_lport_ms_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_lport_ms_s*, align 8
  %3 = alloca %struct.bfa_fcs_lport_fdmi_s*, align 8
  store %struct.bfa_fcs_lport_ms_s* %0, %struct.bfa_fcs_lport_ms_s** %2, align 8
  %4 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %4, i32 0, i32 1
  store %struct.bfa_fcs_lport_fdmi_s* %5, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  %6 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %2, align 8
  %7 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_fcs_lport_fdmi_s, %struct.bfa_fcs_lport_fdmi_s* %7, i32 0, i32 0
  store %struct.bfa_fcs_lport_ms_s* %6, %struct.bfa_fcs_lport_ms_s** %8, align 8
  %9 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %2, align 8
  %10 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  %19 = load i32, i32* @bfa_fcs_lport_fdmi_sm_offline, align 4
  %20 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_fdmi_s* %18, i32 %19)
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  %23 = load i32, i32* @bfa_fcs_lport_fdmi_sm_disabled, align 4
  %24 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_fdmi_s* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  ret void
}

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_fdmi_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
