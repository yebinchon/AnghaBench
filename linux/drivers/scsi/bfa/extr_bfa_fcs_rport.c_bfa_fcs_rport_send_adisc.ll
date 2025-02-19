; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_send_adisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_send_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_fcs_rport_s = type { %struct.TYPE_7__, i32, %struct.bfa_fcxp_s*, i32, i32, i32, %struct.bfa_fcs_lport_s* }
%struct.TYPE_7__ = type { i32 }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.fchs_s = type { i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@bfa_fcs_rport_adisc_response = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@FC_ELS_TOV = common dso_local global i32 0, align 4
@RPSM_EVENT_FCXP_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_rport_send_adisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_send_adisc(i8* %0, %struct.bfa_fcxp_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfa_fcxp_s*, align 8
  %5 = alloca %struct.bfa_fcs_rport_s*, align 8
  %6 = alloca %struct.bfa_fcs_lport_s*, align 8
  %7 = alloca %struct.fchs_s, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bfa_fcxp_s*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.bfa_fcs_rport_s*
  store %struct.bfa_fcs_rport_s* %11, %struct.bfa_fcs_rport_s** %5, align 8
  %12 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %12, i32 0, i32 6
  %14 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %13, align 8
  store %struct.bfa_fcs_lport_s* %14, %struct.bfa_fcs_lport_s** %6, align 8
  %15 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %16 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bfa_trc(i32 %17, i32 %20)
  %22 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  %23 = icmp ne %struct.bfa_fcxp_s* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %28 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %27, i32 0, i32 3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i32, i32* @BFA_TRUE, align 4
  %31 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_8__* %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %24
  %33 = phi %struct.bfa_fcxp_s* [ %25, %24 ], [ %31, %26 ]
  store %struct.bfa_fcxp_s* %33, %struct.bfa_fcxp_s** %9, align 8
  %34 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %35 = icmp ne %struct.bfa_fcxp_s* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %38 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %43 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %42, i32 0, i32 3
  %44 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %45 = load i32, i32* @BFA_TRUE, align 4
  %46 = call i32 @bfa_fcs_fcxp_alloc_wait(i32 %41, i32* %43, void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_rport_send_adisc, %struct.bfa_fcs_rport_s* %44, i32 %45)
  br label %92

47:                                               ; preds = %32
  %48 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %49 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %49, i32 0, i32 2
  store %struct.bfa_fcxp_s* %48, %struct.bfa_fcxp_s** %50, align 8
  %51 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %52 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %51)
  %53 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %54 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %57 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %56)
  %58 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %59 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %63 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @fc_adisc_build(%struct.fchs_s* %7, i32 %52, i32 %55, i32 %57, i32 0, i32 %61, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %68 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %69 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %74 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BFA_FALSE, align 4
  %77 = load i32, i32* @FC_CLASS_3, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @bfa_fcs_rport_adisc_response, align 4
  %80 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %81 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %82 = load i32, i32* @FC_ELS_TOV, align 4
  %83 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %67, i32* null, i32 %72, i32 %75, i32 %76, i32 %77, i32 %78, %struct.fchs_s* %7, i32 %79, %struct.bfa_fcs_rport_s* %80, i32 %81, i32 %82)
  %84 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %85 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %90 = load i32, i32* @RPSM_EVENT_FCXP_SENT, align 4
  %91 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s* %89, i32 %90)
  br label %92

92:                                               ; preds = %47, %36
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @bfa_fcs_fcxp_alloc_wait(i32, i32*, void (i8*, %struct.bfa_fcxp_s*)*, %struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @fc_adisc_build(%struct.fchs_s*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32, %struct.bfa_fcs_rport_s*, i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
