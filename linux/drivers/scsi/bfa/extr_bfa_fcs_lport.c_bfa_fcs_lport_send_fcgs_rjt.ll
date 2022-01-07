; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_send_fcgs_rjt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_send_fcgs_rjt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fchs_s = type { i32, i32, i32 }
%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_rport_s = type { i32 }
%struct.ct_hdr_s = type { i32, i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_s*, %struct.fchs_s*, i32, i32)* @bfa_fcs_lport_send_fcgs_rjt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_send_fcgs_rjt(%struct.bfa_fcs_lport_s* %0, %struct.fchs_s* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bfa_fcs_lport_s*, align 8
  %6 = alloca %struct.fchs_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fchs_s, align 4
  %10 = alloca %struct.bfa_fcxp_s*, align 8
  %11 = alloca %struct.bfa_rport_s*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ct_hdr_s*, align 8
  %14 = alloca %struct.ct_hdr_s*, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %5, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.bfa_rport_s* null, %struct.bfa_rport_s** %11, align 8
  %15 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %16 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %15, i64 1
  %17 = bitcast %struct.fchs_s* %16 to %struct.ct_hdr_s*
  store %struct.ct_hdr_s* %17, %struct.ct_hdr_s** %13, align 8
  %18 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %22 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bfa_trc(i32 %20, i32 %23)
  %25 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %26 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %29 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bfa_trc(i32 %27, i32 %30)
  %32 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %33 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BFA_FALSE, align 4
  %36 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32 %34, i32 %35)
  store %struct.bfa_fcxp_s* %36, %struct.bfa_fcxp_s** %10, align 8
  %37 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %38 = icmp ne %struct.bfa_fcxp_s* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %4
  br label %80

40:                                               ; preds = %4
  %41 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %42 = call %struct.ct_hdr_s* @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %41)
  store %struct.ct_hdr_s* %42, %struct.ct_hdr_s** %14, align 8
  %43 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %13, align 8
  %44 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %14, align 8
  %47 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %13, align 8
  %49 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %14, align 8
  %52 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %14, align 8
  %54 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %55 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %58 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %57)
  %59 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %60 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @fc_gs_rjt_build(%struct.fchs_s* %9, %struct.ct_hdr_s* %53, i32 %56, i32 %58, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %66 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %11, align 8
  %67 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %68 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %73 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BFA_FALSE, align 4
  %76 = load i32, i32* @FC_CLASS_3, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %79 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %65, %struct.bfa_rport_s* %66, i32 %71, i32 %74, i32 %75, i32 %76, i32 %77, %struct.fchs_s* %9, i32* null, i32* null, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32, i32) #1

declare dso_local %struct.ct_hdr_s* @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @fc_gs_rjt_build(%struct.fchs_s*, %struct.ct_hdr_s*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, %struct.bfa_rport_s*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
