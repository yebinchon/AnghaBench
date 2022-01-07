; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_send_ls_rjt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_send_ls_rjt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fchs_s = type { i32, i32, i32 }
%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_rport_s = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_s*, %struct.fchs_s*, i32, i32)* @bfa_fcs_lport_send_ls_rjt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_send_ls_rjt(%struct.bfa_fcs_lport_s* %0, %struct.fchs_s* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bfa_fcs_lport_s*, align 8
  %6 = alloca %struct.fchs_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fchs_s, align 4
  %10 = alloca %struct.bfa_fcxp_s*, align 8
  %11 = alloca %struct.bfa_rport_s*, align 8
  %12 = alloca i32, align 4
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %5, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.bfa_rport_s* null, %struct.bfa_rport_s** %11, align 8
  %13 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %17 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bfa_trc(i32 %15, i32 %18)
  %20 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %21 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %24 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bfa_trc(i32 %22, i32 %25)
  %27 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %28 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BFA_FALSE, align 4
  %31 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32 %29, i32 %30)
  store %struct.bfa_fcxp_s* %31, %struct.bfa_fcxp_s** %10, align 8
  %32 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %33 = icmp ne %struct.bfa_fcxp_s* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  br label %64

35:                                               ; preds = %4
  %36 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %37 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %36)
  %38 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %39 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %42 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %41)
  %43 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %44 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @fc_ls_rjt_build(%struct.fchs_s* %9, i32 %37, i32 %40, i32 %42, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %50 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %11, align 8
  %51 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %52 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %57 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BFA_FALSE, align 4
  %60 = load i32, i32* @FC_CLASS_3, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %63 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %49, %struct.bfa_rport_s* %50, i32 %55, i32 %58, i32 %59, i32 %60, i32 %61, %struct.fchs_s* %9, i32* null, i32* null, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32, i32) #1

declare dso_local i32 @fc_ls_rjt_build(%struct.fchs_s*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, %struct.bfa_rport_s*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
