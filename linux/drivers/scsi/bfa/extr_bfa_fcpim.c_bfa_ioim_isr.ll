; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfi_msg_s = type { i32 }
%struct.bfa_fcpim_s = type { i32 }
%struct.bfi_ioim_rsp_s = type { i32, i32, i32, i32 }
%struct.bfa_ioim_s = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bfi_msg_s }

@BFA_IOIM_SM_COMP = common dso_local global i32 0, align 4
@bfa_ioim_sm_active = common dso_local global i32 0, align 4
@iocomp_ok = common dso_local global i32 0, align 4
@BFA_IOIM_SM_DONE = common dso_local global i32 0, align 4
@iocomp_timedout = common dso_local global i32 0, align 4
@iocomp_aborted = common dso_local global i32 0, align 4
@iocom_proto_err = common dso_local global i32 0, align 4
@iocom_sqer_needed = common dso_local global i32 0, align 4
@BFA_IOIM_SM_SQRETRY = common dso_local global i32 0, align 4
@iocom_res_free = common dso_local global i32 0, align 4
@BFA_IOIM_SM_FREE = common dso_local global i32 0, align 4
@iocom_hostabrts = common dso_local global i32 0, align 4
@BFA_IOIM_SM_ABORT_COMP = common dso_local global i32 0, align 4
@BFA_IOIM_SM_ABORT_DONE = common dso_local global i32 0, align 4
@iocom_utags = common dso_local global i32 0, align 4
@BFA_IOIM_SM_COMP_UTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioim_isr(%struct.bfa_s* %0, %struct.bfi_msg_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_msg_s*, align 8
  %5 = alloca %struct.bfa_fcpim_s*, align 8
  %6 = alloca %struct.bfi_ioim_rsp_s*, align 8
  %7 = alloca %struct.bfa_ioim_s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_msg_s* %1, %struct.bfi_msg_s** %4, align 8
  %10 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %11 = call %struct.bfa_fcpim_s* @BFA_FCPIM(%struct.bfa_s* %10)
  store %struct.bfa_fcpim_s* %11, %struct.bfa_fcpim_s** %5, align 8
  %12 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %13 = bitcast %struct.bfi_msg_s* %12 to %struct.bfi_ioim_rsp_s*
  store %struct.bfi_ioim_rsp_s* %13, %struct.bfi_ioim_rsp_s** %6, align 8
  %14 = load i32, i32* @BFA_IOIM_SM_COMP, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %16 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @be16_to_cpu(i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call %struct.bfa_ioim_s* @BFA_IOIM_FROM_TAG(%struct.bfa_fcpim_s* %19, i64 %20)
  store %struct.bfa_ioim_s* %21, %struct.bfa_ioim_s** %7, align 8
  %22 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %23 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %30 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %33 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @bfa_trc(i32 %31, i32 %35)
  %37 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %38 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %41 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bfa_trc(i32 %39, i32 %42)
  %44 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %45 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %48 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bfa_trc(i32 %46, i32 %49)
  %51 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %52 = load i32, i32* @bfa_ioim_sm_active, align 4
  %53 = call i64 @bfa_sm_cmp_state(%struct.bfa_ioim_s* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %2
  %56 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %57 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %61 = bitcast %struct.bfi_msg_s* %59 to i8*
  %62 = bitcast %struct.bfi_msg_s* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  br label %63

63:                                               ; preds = %55, %2
  %64 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %65 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %184 [
    i32 133, label %67
    i32 129, label %82
    i32 135, label %88
    i32 132, label %105
    i32 130, label %119
    i32 131, label %132
    i32 134, label %139
    i32 128, label %177
  ]

67:                                               ; preds = %63
  %68 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %69 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @iocomp_ok, align 4
  %72 = call i32 @bfa_stats(i32 %70, i32 %71)
  %73 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %74 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* @BFA_IOIM_SM_DONE, align 4
  store i32 %78, i32* %9, align 4
  br label %81

79:                                               ; preds = %67
  %80 = load i32, i32* @BFA_IOIM_SM_COMP, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %79, %77
  br label %186

82:                                               ; preds = %63
  %83 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %84 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @iocomp_timedout, align 4
  %87 = call i32 @bfa_stats(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %63, %82
  %89 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %90 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %89, i32 0, i32 0
  store i32 135, i32* %90, align 4
  %91 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %92 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @iocomp_aborted, align 4
  %95 = call i32 @bfa_stats(i32 %93, i32 %94)
  %96 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %97 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i32, i32* @BFA_IOIM_SM_DONE, align 4
  store i32 %101, i32* %9, align 4
  br label %104

102:                                              ; preds = %88
  %103 = load i32, i32* @BFA_IOIM_SM_COMP, align 4
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %102, %100
  br label %186

105:                                              ; preds = %63
  %106 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %107 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @iocom_proto_err, align 4
  %110 = call i32 @bfa_stats(i32 %108, i32 %109)
  %111 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %112 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = call i32 @WARN_ON(i32 %116)
  %118 = load i32, i32* @BFA_IOIM_SM_COMP, align 4
  store i32 %118, i32* %9, align 4
  br label %186

119:                                              ; preds = %63
  %120 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %121 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @iocom_sqer_needed, align 4
  %124 = call i32 @bfa_stats(i32 %122, i32 %123)
  %125 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %126 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @WARN_ON(i32 %129)
  %131 = load i32, i32* @BFA_IOIM_SM_SQRETRY, align 4
  store i32 %131, i32* %9, align 4
  br label %186

132:                                              ; preds = %63
  %133 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %134 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @iocom_res_free, align 4
  %137 = call i32 @bfa_stats(i32 %135, i32 %136)
  %138 = load i32, i32* @BFA_IOIM_SM_FREE, align 4
  store i32 %138, i32* %9, align 4
  br label %186

139:                                              ; preds = %63
  %140 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %141 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @iocom_hostabrts, align 4
  %144 = call i32 @bfa_stats(i32 %142, i32 %143)
  %145 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %146 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %149 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %147, %150
  br i1 %151, label %152, label %167

152:                                              ; preds = %139
  %153 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %154 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %157 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @bfa_trc(i32 %155, i32 %158)
  %160 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %161 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %164 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @bfa_trc(i32 %162, i32 %165)
  br label %190

167:                                              ; preds = %139
  %168 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %169 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* @BFA_IOIM_SM_ABORT_COMP, align 4
  store i32 %173, i32* %9, align 4
  br label %176

174:                                              ; preds = %167
  %175 = load i32, i32* @BFA_IOIM_SM_ABORT_DONE, align 4
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %174, %172
  br label %186

177:                                              ; preds = %63
  %178 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %179 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @iocom_utags, align 4
  %182 = call i32 @bfa_stats(i32 %180, i32 %181)
  %183 = load i32, i32* @BFA_IOIM_SM_COMP_UTAG, align 4
  store i32 %183, i32* %9, align 4
  br label %186

184:                                              ; preds = %63
  %185 = call i32 @WARN_ON(i32 1)
  br label %186

186:                                              ; preds = %184, %177, %176, %132, %119, %105, %104, %81
  %187 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @bfa_sm_send_event(%struct.bfa_ioim_s* %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %152
  ret void
}

declare dso_local %struct.bfa_fcpim_s* @BFA_FCPIM(%struct.bfa_s*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local %struct.bfa_ioim_s* @BFA_IOIM_FROM_TAG(%struct.bfa_fcpim_s*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i64 @bfa_sm_cmp_state(%struct.bfa_ioim_s*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bfa_stats(i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_ioim_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
