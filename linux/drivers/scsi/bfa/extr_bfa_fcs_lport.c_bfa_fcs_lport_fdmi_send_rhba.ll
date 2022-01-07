; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_fdmi_send_rhba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_fdmi_send_rhba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_fcs_lport_fdmi_s = type { %struct.bfa_fcxp_s*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.fchs_s = type { i32 }
%struct.ct_hdr_s = type { i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@FDMI_RHBA = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@bfa_fcs_lport_fdmi_rhba_response = common dso_local global i32 0, align 4
@FC_FCCT_TOV = common dso_local global i32 0, align 4
@FDMISM_EVENT_RHBA_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_lport_fdmi_send_rhba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_fdmi_send_rhba(i8* %0, %struct.bfa_fcxp_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfa_fcxp_s*, align 8
  %5 = alloca %struct.bfa_fcs_lport_fdmi_s*, align 8
  %6 = alloca %struct.bfa_fcs_lport_s*, align 8
  %7 = alloca %struct.fchs_s, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bfa_fcxp_s*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.bfa_fcs_lport_fdmi_s*
  store %struct.bfa_fcs_lport_fdmi_s* %13, %struct.bfa_fcs_lport_fdmi_s** %5, align 8
  %14 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %5, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_lport_fdmi_s, %struct.bfa_fcs_lport_fdmi_s* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %17, align 8
  store %struct.bfa_fcs_lport_s* %18, %struct.bfa_fcs_lport_s** %6, align 8
  %19 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %23 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bfa_trc(%struct.TYPE_9__* %21, i32 %25)
  %27 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  %28 = icmp ne %struct.bfa_fcxp_s* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %33 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = load i32, i32* @BFA_TRUE, align 4
  %36 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_9__* %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %29
  %38 = phi %struct.bfa_fcxp_s* [ %30, %29 ], [ %36, %31 ]
  store %struct.bfa_fcxp_s* %38, %struct.bfa_fcxp_s** %10, align 8
  %39 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %40 = icmp ne %struct.bfa_fcxp_s* %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %43 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %5, align 8
  %48 = getelementptr inbounds %struct.bfa_fcs_lport_fdmi_s, %struct.bfa_fcs_lport_fdmi_s* %47, i32 0, i32 1
  %49 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %5, align 8
  %50 = load i32, i32* @BFA_TRUE, align 4
  %51 = call i32 @bfa_fcs_fcxp_alloc_wait(i32 %46, i32* %48, void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_lport_fdmi_send_rhba, %struct.bfa_fcs_lport_fdmi_s* %49, i32 %50)
  br label %95

52:                                               ; preds = %37
  %53 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %54 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %5, align 8
  %55 = getelementptr inbounds %struct.bfa_fcs_lport_fdmi_s, %struct.bfa_fcs_lport_fdmi_s* %54, i32 0, i32 0
  store %struct.bfa_fcxp_s* %53, %struct.bfa_fcxp_s** %55, align 8
  %56 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %57 = call i32* @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %56)
  store i32* %57, i32** %11, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %60 = call i32 @memset(i32* %58, i32 0, i32 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %63 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %62)
  %64 = load i32, i32* @FDMI_RHBA, align 4
  %65 = call i32 @fc_fdmi_reqhdr_build(%struct.fchs_s* %7, i32* %61, i32 %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %5, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = bitcast i32* %67 to %struct.ct_hdr_s*
  %69 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %68, i64 1
  %70 = bitcast %struct.ct_hdr_s* %69 to i32*
  %71 = call i32 @bfa_fcs_lport_fdmi_build_rhba_pyld(%struct.bfa_fcs_lport_fdmi_s* %66, i32* %70)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %73 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %74 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %79 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BFA_FALSE, align 4
  %82 = load i32, i32* @FC_CLASS_3, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* @bfa_fcs_lport_fdmi_rhba_response, align 4
  %87 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %5, align 8
  %88 = bitcast %struct.bfa_fcs_lport_fdmi_s* %87 to i8*
  %89 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %90 = load i32, i32* @FC_FCCT_TOV, align 4
  %91 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %72, i32* null, i32 %77, i32 %80, i32 %81, i32 %82, i32 %85, %struct.fchs_s* %7, i32 %86, i8* %88, i32 %89, i32 %90)
  %92 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %5, align 8
  %93 = load i32, i32* @FDMISM_EVENT_RHBA_SENT, align 4
  %94 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_fdmi_s* %92, i32 %93)
  br label %95

95:                                               ; preds = %52, %41
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @bfa_fcs_fcxp_alloc_wait(i32, i32*, void (i8*, %struct.bfa_fcxp_s*)*, %struct.bfa_fcs_lport_fdmi_s*, i32) #1

declare dso_local i32* @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fc_fdmi_reqhdr_build(%struct.fchs_s*, i32*, i32, i32) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcs_lport_fdmi_build_rhba_pyld(%struct.bfa_fcs_lport_fdmi_s*, i32*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32, i8*, i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_fdmi_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
