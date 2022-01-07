; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_sm_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_sm_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_rport_s = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.bfi_rport_qos_scn_s = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@sm_on_off = common dso_local global i32 0, align 4
@bfa_rport_sm_fwdelete = common dso_local global i32 0, align 4
@bfa_rport_sm_fwdelete_qfull = common dso_local global i32 0, align 4
@sm_on_del = common dso_local global i32 0, align 4
@bfa_rport_sm_deleting = common dso_local global i32 0, align 4
@bfa_rport_sm_deleting_qfull = common dso_local global i32 0, align 4
@sm_on_hwf = common dso_local global i32 0, align 4
@bfa_rport_sm_iocdisable = common dso_local global i32 0, align 4
@sm_on_unexp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_rport_s*, i32)* @bfa_rport_sm_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_rport_sm_online(%struct.bfa_rport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_rport_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfi_rport_qos_scn_s*, align 8
  store %struct.bfa_rport_s* %0, %struct.bfa_rport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @bfa_trc(i32 %8, i32 %11)
  %13 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @bfa_trc(i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %169 [
    i32 130, label %19
    i32 132, label %35
    i32 131, label %51
    i32 128, label %58
    i32 129, label %61
  ]

19:                                               ; preds = %2
  %20 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %21 = load i32, i32* @sm_on_off, align 4
  %22 = call i32 @bfa_stats(%struct.bfa_rport_s* %20, i32 %21)
  %23 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %24 = call i32 @bfa_rport_send_fwdelete(%struct.bfa_rport_s* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %28 = load i32, i32* @bfa_rport_sm_fwdelete, align 4
  %29 = call i32 @bfa_sm_set_state(%struct.bfa_rport_s* %27, i32 %28)
  br label %34

30:                                               ; preds = %19
  %31 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %32 = load i32, i32* @bfa_rport_sm_fwdelete_qfull, align 4
  %33 = call i32 @bfa_sm_set_state(%struct.bfa_rport_s* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %26
  br label %178

35:                                               ; preds = %2
  %36 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %37 = load i32, i32* @sm_on_del, align 4
  %38 = call i32 @bfa_stats(%struct.bfa_rport_s* %36, i32 %37)
  %39 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %40 = call i32 @bfa_rport_send_fwdelete(%struct.bfa_rport_s* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %44 = load i32, i32* @bfa_rport_sm_deleting, align 4
  %45 = call i32 @bfa_sm_set_state(%struct.bfa_rport_s* %43, i32 %44)
  br label %50

46:                                               ; preds = %35
  %47 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %48 = load i32, i32* @bfa_rport_sm_deleting_qfull, align 4
  %49 = call i32 @bfa_sm_set_state(%struct.bfa_rport_s* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  br label %178

51:                                               ; preds = %2
  %52 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %53 = load i32, i32* @sm_on_hwf, align 4
  %54 = call i32 @bfa_stats(%struct.bfa_rport_s* %52, i32 %53)
  %55 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %56 = load i32, i32* @bfa_rport_sm_iocdisable, align 4
  %57 = call i32 @bfa_sm_set_state(%struct.bfa_rport_s* %55, i32 %56)
  br label %178

58:                                               ; preds = %2
  %59 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %60 = call i32 @bfa_rport_send_fwspeed(%struct.bfa_rport_s* %59)
  br label %178

61:                                               ; preds = %2
  %62 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %63 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.bfi_rport_qos_scn_s*
  store %struct.bfi_rport_qos_scn_s* %66, %struct.bfi_rport_qos_scn_s** %5, align 8
  %67 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %68 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %67, i32 0, i32 3
  %69 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %70 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %69, i32 0, i32 0
  %71 = bitcast %struct.TYPE_8__* %68 to i8*
  %72 = bitcast %struct.TYPE_8__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 8, i1 false)
  %73 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %74 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %77 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bfa_trc(i32 %75, i32 %79)
  %81 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %82 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %85 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @bfa_trc(i32 %83, i32 %87)
  %89 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %90 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %93 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @bfa_trc(i32 %91, i32 %95)
  %97 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %98 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %101 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @bfa_trc(i32 %99, i32 %103)
  %105 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %106 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @be32_to_cpu(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %112 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %115 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @be32_to_cpu(i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %121 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  %123 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %124 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %128 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %126, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %61
  %133 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %134 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %137 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %136, i32 0, i32 1
  %138 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %139 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %138, i32 0, i32 0
  %140 = bitcast %struct.TYPE_7__* %137 to i64*
  %141 = load i64, i64* %140, align 4
  %142 = bitcast %struct.TYPE_8__* %139 to i64*
  %143 = load i64, i64* %142, align 4
  %144 = call i32 @bfa_cb_rport_qos_scn_flowid(i32 %135, i64 %141, i64 %143)
  br label %145

145:                                              ; preds = %132, %61
  %146 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %147 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %151 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %149, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %145
  %156 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %157 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %160 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %159, i32 0, i32 1
  %161 = load %struct.bfi_rport_qos_scn_s*, %struct.bfi_rport_qos_scn_s** %5, align 8
  %162 = getelementptr inbounds %struct.bfi_rport_qos_scn_s, %struct.bfi_rport_qos_scn_s* %161, i32 0, i32 0
  %163 = bitcast %struct.TYPE_7__* %160 to i64*
  %164 = load i64, i64* %163, align 4
  %165 = bitcast %struct.TYPE_8__* %162 to i64*
  %166 = load i64, i64* %165, align 4
  %167 = call i32 @bfa_cb_rport_qos_scn_prio(i32 %158, i64 %164, i64 %166)
  br label %168

168:                                              ; preds = %155, %145
  br label %178

169:                                              ; preds = %2
  %170 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %171 = load i32, i32* @sm_on_unexp, align 4
  %172 = call i32 @bfa_stats(%struct.bfa_rport_s* %170, i32 %171)
  %173 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %174 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %4, align 4
  %177 = call i32 @bfa_sm_fault(i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %169, %168, %58, %51, %50, %34
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_stats(%struct.bfa_rport_s*, i32) #1

declare dso_local i32 @bfa_rport_send_fwdelete(%struct.bfa_rport_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_rport_s*, i32) #1

declare dso_local i32 @bfa_rport_send_fwspeed(%struct.bfa_rport_s*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @bfa_cb_rport_qos_scn_flowid(i32, i64, i64) #1

declare dso_local i32 @bfa_cb_rport_qos_scn_prio(i32, i64, i64) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
