; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_scn_send_ls_acc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_scn_send_ls_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fchs_s = type { i32, i32 }
%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_rport_s = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_s*, %struct.fchs_s*)* @bfa_fcs_lport_scn_send_ls_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_scn_send_ls_acc(%struct.bfa_fcs_lport_s* %0, %struct.fchs_s* %1) #0 {
  %3 = alloca %struct.bfa_fcs_lport_s*, align 8
  %4 = alloca %struct.fchs_s*, align 8
  %5 = alloca %struct.fchs_s, align 4
  %6 = alloca %struct.bfa_fcxp_s*, align 8
  %7 = alloca %struct.bfa_rport_s*, align 8
  %8 = alloca i32, align 4
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %3, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %4, align 8
  store %struct.bfa_rport_s* null, %struct.bfa_rport_s** %7, align 8
  %9 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.fchs_s*, %struct.fchs_s** %4, align 8
  %13 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bfa_trc(i32 %11, i32 %14)
  %16 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @BFA_FALSE, align 4
  %20 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32 %18, i32 %19)
  store %struct.bfa_fcxp_s* %20, %struct.bfa_fcxp_s** %6, align 8
  %21 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %22 = icmp ne %struct.bfa_fcxp_s* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %51

24:                                               ; preds = %2
  %25 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %26 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %25)
  %27 = load %struct.fchs_s*, %struct.fchs_s** %4, align 8
  %28 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %31 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %30)
  %32 = load %struct.fchs_s*, %struct.fchs_s** %4, align 8
  %33 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @fc_ls_acc_build(%struct.fchs_s* %5, i32 %26, i32 %29, i32 %31, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %37 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %7, align 8
  %38 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BFA_FALSE, align 4
  %47 = load i32, i32* @FC_CLASS_3, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %50 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %36, %struct.bfa_rport_s* %37, i32 %42, i32 %45, i32 %46, i32 %47, i32 %48, %struct.fchs_s* %5, i32* null, i32* null, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32, i32) #1

declare dso_local i32 @fc_ls_acc_build(%struct.fchs_s*, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, %struct.bfa_rport_s*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
