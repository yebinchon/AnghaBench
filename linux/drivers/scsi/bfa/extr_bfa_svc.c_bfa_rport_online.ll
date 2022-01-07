; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_rport_s = type { %struct.bfa_rport_info_s, i32, i32 }
%struct.bfa_rport_info_s = type { i64 }

@FC_MIN_PDUSZ = common dso_local global i64 0, align 8
@BFA_RPORT_SM_ONLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_rport_online(%struct.bfa_rport_s* %0, %struct.bfa_rport_info_s* %1) #0 {
  %3 = alloca %struct.bfa_rport_s*, align 8
  %4 = alloca %struct.bfa_rport_info_s*, align 8
  store %struct.bfa_rport_s* %0, %struct.bfa_rport_s** %3, align 8
  store %struct.bfa_rport_info_s* %1, %struct.bfa_rport_info_s** %4, align 8
  %5 = load %struct.bfa_rport_info_s*, %struct.bfa_rport_info_s** %4, align 8
  %6 = getelementptr inbounds %struct.bfa_rport_info_s, %struct.bfa_rport_info_s* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.bfa_rport_info_s*, %struct.bfa_rport_info_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfa_rport_info_s, %struct.bfa_rport_info_s* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bfa_trc(i32 %18, i32 %21)
  %23 = load i64, i64* @FC_MIN_PDUSZ, align 8
  %24 = load %struct.bfa_rport_info_s*, %struct.bfa_rport_info_s** %4, align 8
  %25 = getelementptr inbounds %struct.bfa_rport_info_s, %struct.bfa_rport_info_s* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %15, %2
  %27 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %27, i32 0, i32 0
  %29 = load %struct.bfa_rport_info_s*, %struct.bfa_rport_info_s** %4, align 8
  %30 = bitcast %struct.bfa_rport_info_s* %28 to i8*
  %31 = bitcast %struct.bfa_rport_info_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %33 = load i32, i32* @BFA_RPORT_SM_ONLINE, align 4
  %34 = call i32 @bfa_sm_send_event(%struct.bfa_rport_s* %32, i32 %33)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_trc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_rport_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
