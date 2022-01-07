; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_fcxp_get_rsp_sglen_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_fcxp_get_rsp_sglen_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_fcxp = type { %struct.bfa_sge_s* }
%struct.bfa_sge_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_fcxp_get_rsp_sglen_cb(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfad_fcxp*, align 8
  %6 = alloca %struct.bfa_sge_s*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.bfad_fcxp*
  store %struct.bfad_fcxp* %8, %struct.bfad_fcxp** %5, align 8
  %9 = load %struct.bfad_fcxp*, %struct.bfad_fcxp** %5, align 8
  %10 = getelementptr inbounds %struct.bfad_fcxp, %struct.bfad_fcxp* %9, i32 0, i32 0
  %11 = load %struct.bfa_sge_s*, %struct.bfa_sge_s** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.bfa_sge_s, %struct.bfa_sge_s* %11, i64 %13
  store %struct.bfa_sge_s* %14, %struct.bfa_sge_s** %6, align 8
  %15 = load %struct.bfa_sge_s*, %struct.bfa_sge_s** %6, align 8
  %16 = getelementptr inbounds %struct.bfa_sge_s, %struct.bfa_sge_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
