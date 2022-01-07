; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_send_flogi_acc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_send_flogi_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_fabric_s = type { %struct.TYPE_7__*, i32, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.bfa_s* }
%struct.bfa_s = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.bfa_lport_cfg_s }
%struct.TYPE_5__ = type { %struct.bfa_fcs_lport_n2n_s }
%struct.bfa_fcs_lport_n2n_s = type { i32 }
%struct.bfa_lport_cfg_s = type { i32, i32 }
%struct.bfa_fcxp_s = type { i32 }
%struct.fchs_s = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@FC_FABRIC_PORT = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@bfa_fcs_fabric_flogiacc_comp = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_fabric_s*)* @bfa_fcs_fabric_send_flogi_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_fabric_send_flogi_acc(%struct.bfa_fcs_fabric_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_fabric_s*, align 8
  %3 = alloca %struct.bfa_lport_cfg_s*, align 8
  %4 = alloca %struct.bfa_fcs_lport_n2n_s*, align 8
  %5 = alloca %struct.bfa_s*, align 8
  %6 = alloca %struct.bfa_fcxp_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fchs_s, align 4
  store %struct.bfa_fcs_fabric_s* %0, %struct.bfa_fcs_fabric_s** %2, align 8
  %9 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %2, align 8
  %10 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store %struct.bfa_lport_cfg_s* %11, %struct.bfa_lport_cfg_s** %3, align 8
  %12 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %2, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.bfa_fcs_lport_n2n_s* %15, %struct.bfa_fcs_lport_n2n_s** %4, align 8
  %16 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.bfa_s*, %struct.bfa_s** %19, align 8
  store %struct.bfa_s* %20, %struct.bfa_s** %5, align 8
  %21 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %2, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load i32, i32* @BFA_FALSE, align 4
  %25 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_8__* %23, i32 %24)
  store %struct.bfa_fcxp_s* %25, %struct.bfa_fcxp_s** %6, align 8
  %26 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %27 = icmp ne %struct.bfa_fcxp_s* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %64

29:                                               ; preds = %1
  %30 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %31 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %30)
  %32 = load i32, i32* @FC_FABRIC_PORT, align 4
  %33 = call i32 @bfa_hton3b(i32 %32)
  %34 = load %struct.bfa_fcs_lport_n2n_s*, %struct.bfa_fcs_lport_n2n_s** %4, align 8
  %35 = getelementptr inbounds %struct.bfa_fcs_lport_n2n_s, %struct.bfa_fcs_lport_n2n_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bfa_lport_cfg_s*, %struct.bfa_lport_cfg_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_lport_cfg_s, %struct.bfa_lport_cfg_s* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bfa_lport_cfg_s*, %struct.bfa_lport_cfg_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_lport_cfg_s, %struct.bfa_lport_cfg_s* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %44 = call i32 @bfa_fcport_get_maxfrsize(%struct.bfa_s* %43)
  %45 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %46 = call i32 @bfa_fcport_get_rx_bbcredit(%struct.bfa_s* %45)
  %47 = call i32 @fc_flogi_acc_build(%struct.fchs_s* %8, i32 %31, i32 %33, i32 %36, i32 %39, i32 %42, i32 %44, i32 %46, i32 0)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %49 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %2, align 8
  %50 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %2, align 8
  %53 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BFA_FALSE, align 4
  %58 = load i32, i32* @FC_CLASS_3, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @bfa_fcs_fabric_flogiacc_comp, align 4
  %61 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %2, align 8
  %62 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %63 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %48, i32* null, i32 %51, i32 %56, i32 %57, i32 %58, i32 %59, %struct.fchs_s* %8, i32 %60, %struct.bfa_fcs_fabric_s* %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %29, %28
  ret void
}

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @fc_flogi_acc_build(%struct.fchs_s*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_hton3b(i32) #1

declare dso_local i32 @bfa_fcport_get_maxfrsize(%struct.bfa_s*) #1

declare dso_local i32 @bfa_fcport_get_rx_bbcredit(%struct.bfa_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32, %struct.bfa_fcs_fabric_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
