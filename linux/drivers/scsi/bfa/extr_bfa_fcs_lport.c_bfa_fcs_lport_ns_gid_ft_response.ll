; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_gid_ft_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_gid_ft_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.fchs_s = type { i32 }
%struct.bfa_fcs_lport_ns_s = type { %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ct_hdr_s = type { i32, i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@NSSM_EVENT_RSP_ERROR = common dso_local global i32 0, align 4
@NSSM_EVENT_RSP_OK = common dso_local global i32 0, align 4
@CT_RSN_UNABLE_TO_PERF = common dso_local global i32 0, align 4
@CT_NS_EXP_FT_NOT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*, i8*, i32, i32, i32, %struct.fchs_s*)* @bfa_fcs_lport_ns_gid_ft_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_ns_gid_ft_response(i8* %0, %struct.bfa_fcxp_s* %1, i8* %2, i32 %3, i32 %4, i32 %5, %struct.fchs_s* %6) #0 {
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
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.fchs_s* %6, %struct.fchs_s** %14, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.bfa_fcs_lport_ns_s*
  store %struct.bfa_fcs_lport_ns_s* %20, %struct.bfa_fcs_lport_ns_s** %15, align 8
  %21 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %15, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %21, i32 0, i32 0
  %23 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %22, align 8
  store %struct.bfa_fcs_lport_s* %23, %struct.bfa_fcs_lport_s** %16, align 8
  store %struct.ct_hdr_s* null, %struct.ct_hdr_s** %17, align 8
  %24 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %25 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %28 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bfa_trc(i32 %26, i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @BFA_STATUS_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %7
  %36 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %37 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @bfa_trc(i32 %38, i32 %39)
  %41 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %42 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %15, align 8
  %47 = load i32, i32* @NSSM_EVENT_RSP_ERROR, align 4
  %48 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s* %46, i32 %47)
  br label %157

49:                                               ; preds = %7
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %54 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @bfa_trc(i32 %55, i32 %56)
  %58 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %59 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @bfa_trc(i32 %60, i32 %61)
  br label %157

63:                                               ; preds = %49
  %64 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %65 = call i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s* %64)
  %66 = inttoptr i64 %65 to %struct.ct_hdr_s*
  store %struct.ct_hdr_s* %66, %struct.ct_hdr_s** %17, align 8
  %67 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %68 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be16_to_cpu(i32 %69)
  %71 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %72 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %74 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %141 [
    i32 129, label %76
    i32 128, label %101
  ]

76:                                               ; preds = %63
  %77 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %78 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @fc_get_ctresp_pyld_len(i32 %82)
  %84 = sext i32 %83 to i64
  %85 = udiv i64 %84, 4
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %18, align 4
  %87 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %88 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @bfa_trc(i32 %89, i32 %90)
  %92 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %93 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %94 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %93, i64 1
  %95 = bitcast %struct.ct_hdr_s* %94 to i32*
  %96 = load i32, i32* %18, align 4
  %97 = call i32 @bfa_fcs_lport_ns_process_gidft_pids(%struct.bfa_fcs_lport_s* %92, i32* %95, i32 %96)
  %98 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %15, align 8
  %99 = load i32, i32* @NSSM_EVENT_RSP_OK, align 4
  %100 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s* %98, i32 %99)
  br label %157

101:                                              ; preds = %63
  %102 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %103 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %108 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %111 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @bfa_trc(i32 %109, i32 %112)
  %114 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %115 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %118 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @bfa_trc(i32 %116, i32 %119)
  %121 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %122 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @CT_RSN_UNABLE_TO_PERF, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %101
  %127 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %128 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @CT_NS_EXP_FT_NOT_REG, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %15, align 8
  %134 = load i32, i32* @NSSM_EVENT_RSP_OK, align 4
  %135 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s* %133, i32 %134)
  br label %140

136:                                              ; preds = %126, %101
  %137 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %15, align 8
  %138 = load i32, i32* @NSSM_EVENT_RSP_ERROR, align 4
  %139 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %132
  br label %157

141:                                              ; preds = %63
  %142 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %143 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %148 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %151 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @bfa_trc(i32 %149, i32 %152)
  %154 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %15, align 8
  %155 = load i32, i32* @NSSM_EVENT_RSP_ERROR, align 4
  %156 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s* %154, i32 %155)
  br label %157

157:                                              ; preds = %35, %52, %141, %140, %76
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s*, i32) #1

declare dso_local i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @fc_get_ctresp_pyld_len(i32) #1

declare dso_local i32 @bfa_fcs_lport_ns_process_gidft_pids(%struct.bfa_fcs_lport_s*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
