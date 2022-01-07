; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_rsnn_nn_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_rsnn_nn_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.fchs_s = type { i32 }
%struct.bfa_fcs_lport_ns_s = type { %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ct_hdr_s = type { i64, i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@NSSM_EVENT_RSP_ERROR = common dso_local global i32 0, align 4
@CT_RSP_ACCEPT = common dso_local global i64 0, align 8
@NSSM_EVENT_RSP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*, i8*, i32, i32, i32, %struct.fchs_s*)* @bfa_fcs_lport_ns_rsnn_nn_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_ns_rsnn_nn_response(i8* %0, %struct.bfa_fcxp_s* %1, i8* %2, i32 %3, i32 %4, i32 %5, %struct.fchs_s* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bfa_fcxp_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fchs_s*, align 8
  %15 = alloca %struct.bfa_fcs_lport_ns_s*, align 8
  %16 = alloca %struct.bfa_fcs_lport_s*, align 8
  %17 = alloca %struct.ct_hdr_s*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.fchs_s* %6, %struct.fchs_s** %14, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.bfa_fcs_lport_ns_s*
  store %struct.bfa_fcs_lport_ns_s* %19, %struct.bfa_fcs_lport_ns_s** %15, align 8
  %20 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %15, align 8
  %21 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %20, i32 0, i32 0
  %22 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %21, align 8
  store %struct.bfa_fcs_lport_s* %22, %struct.bfa_fcs_lport_s** %16, align 8
  store %struct.ct_hdr_s* null, %struct.ct_hdr_s** %17, align 8
  %23 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %24 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bfa_trc(i32 %25, i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @BFA_STATUS_OK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %7
  %35 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %36 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @bfa_trc(i32 %37, i32 %38)
  %40 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %41 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %15, align 8
  %46 = load i32, i32* @NSSM_EVENT_RSP_ERROR, align 4
  %47 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s* %45, i32 %46)
  br label %95

48:                                               ; preds = %7
  %49 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %50 = call i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s* %49)
  %51 = inttoptr i64 %50 to %struct.ct_hdr_s*
  store %struct.ct_hdr_s* %51, %struct.ct_hdr_s** %17, align 8
  %52 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %53 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @be16_to_cpu(i64 %54)
  %56 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %57 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %59 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CT_RSP_ACCEPT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %48
  %64 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %65 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %15, align 8
  %70 = load i32, i32* @NSSM_EVENT_RSP_OK, align 4
  %71 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s* %69, i32 %70)
  br label %95

72:                                               ; preds = %48
  %73 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %74 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %79 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %82 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @bfa_trc(i32 %80, i32 %83)
  %85 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %86 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %89 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @bfa_trc(i32 %87, i32 %90)
  %92 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %15, align 8
  %93 = load i32, i32* @NSSM_EVENT_RSP_ERROR, align 4
  %94 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s* %92, i32 %93)
  br label %95

95:                                               ; preds = %72, %63, %34
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s*, i32) #1

declare dso_local i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s*) #1

declare dso_local i64 @be16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
