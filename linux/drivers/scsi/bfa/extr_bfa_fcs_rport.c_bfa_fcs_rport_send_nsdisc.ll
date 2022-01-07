; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_send_nsdisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_send_nsdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_fcs_rport_s = type { i32, i64, %struct.bfa_fcxp_s*, i32, i32, %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fchs_s = type { i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@bfa_fcs_rport_gidpn_response = common dso_local global i32 0, align 4
@bfa_fcs_rport_gpnid_response = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@FC_FCCT_TOV = common dso_local global i32 0, align 4
@RPSM_EVENT_FCXP_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_rport_send_nsdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_send_nsdisc(i8* %0, %struct.bfa_fcxp_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfa_fcxp_s*, align 8
  %5 = alloca %struct.bfa_fcs_rport_s*, align 8
  %6 = alloca %struct.bfa_fcs_lport_s*, align 8
  %7 = alloca %struct.fchs_s, align 4
  %8 = alloca %struct.bfa_fcxp_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.bfa_fcs_rport_s*
  store %struct.bfa_fcs_rport_s* %12, %struct.bfa_fcs_rport_s** %5, align 8
  %13 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %13, i32 0, i32 5
  %15 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %14, align 8
  store %struct.bfa_fcs_lport_s* %15, %struct.bfa_fcs_lport_s** %6, align 8
  %16 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bfa_trc(i32 %18, i32 %21)
  %23 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  %24 = icmp ne %struct.bfa_fcxp_s* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %29 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* @BFA_TRUE, align 4
  %32 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_4__* %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %25
  %34 = phi %struct.bfa_fcxp_s* [ %26, %25 ], [ %32, %27 ]
  store %struct.bfa_fcxp_s* %34, %struct.bfa_fcxp_s** %8, align 8
  %35 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %8, align 8
  %36 = icmp ne %struct.bfa_fcxp_s* %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %39 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %43, i32 0, i32 3
  %45 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %46 = load i32, i32* @BFA_TRUE, align 4
  %47 = call i32 @bfa_fcs_fcxp_alloc_wait(i32 %42, i32* %44, void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_rport_send_nsdisc, %struct.bfa_fcs_rport_s* %45, i32 %46)
  br label %98

48:                                               ; preds = %33
  %49 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %8, align 8
  %50 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %51 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %50, i32 0, i32 2
  store %struct.bfa_fcxp_s* %49, %struct.bfa_fcxp_s** %51, align 8
  %52 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %53 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %8, align 8
  %58 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %57)
  %59 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %60 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %59)
  %61 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %62 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @fc_gidpn_build(%struct.fchs_s* %7, i32 %58, i32 %60, i32 0, i64 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @bfa_fcs_rport_gidpn_response, align 4
  store i32 %65, i32* %10, align 4
  br label %76

66:                                               ; preds = %48
  %67 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %8, align 8
  %68 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %67)
  %69 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %70 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %69)
  %71 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %72 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @fc_gpnid_build(%struct.fchs_s* %7, i32 %68, i32 %70, i32 0, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @bfa_fcs_rport_gpnid_response, align 4
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %66, %56
  %77 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %8, align 8
  %78 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %79 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %84 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @BFA_FALSE, align 4
  %87 = load i32, i32* @FC_CLASS_3, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %91 = bitcast %struct.bfa_fcs_rport_s* %90 to i8*
  %92 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %93 = load i32, i32* @FC_FCCT_TOV, align 4
  %94 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %77, i32* null, i32 %82, i32 %85, i32 %86, i32 %87, i32 %88, %struct.fchs_s* %7, i32 %89, i8* %91, i32 %92, i32 %93)
  %95 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %96 = load i32, i32* @RPSM_EVENT_FCXP_SENT, align 4
  %97 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s* %95, i32 %96)
  br label %98

98:                                               ; preds = %76, %37
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bfa_fcs_fcxp_alloc_wait(i32, i32*, void (i8*, %struct.bfa_fcxp_s*)*, %struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @fc_gidpn_build(%struct.fchs_s*, i32, i32, i32, i64) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @fc_gpnid_build(%struct.fchs_s*, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32, i8*, i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
