; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_fcxp_bsg_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_fcxp_bsg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.bfad_fcxp = type { i32, %struct.bfa_fcxp_s*, i32, i32, %struct.TYPE_7__* }
%struct.bfa_fcxp_s = type { i32 }
%struct.TYPE_7__ = type { %struct.bfad_s* }
%struct.bfad_s = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@bfad_fcxp_get_req_sgaddr_cb = common dso_local global i32 0, align 4
@bfad_fcxp_get_req_sglen_cb = common dso_local global i32 0, align 4
@bfad_fcxp_get_rsp_sgaddr_cb = common dso_local global i32 0, align 4
@bfad_fcxp_get_rsp_sglen_cb = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_STATUS_ENOMEM = common dso_local global i32 0, align 4
@bfad_send_fcpt_cb = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_fcxp_bsg_send(%struct.bsg_job* %0, %struct.bfad_fcxp* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bsg_job*, align 8
  %6 = alloca %struct.bfad_fcxp*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.bfa_fcxp_s*, align 8
  %9 = alloca %struct.bfad_s*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %5, align 8
  store %struct.bfad_fcxp* %1, %struct.bfad_fcxp** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %12 = load %struct.bfad_fcxp*, %struct.bfad_fcxp** %6, align 8
  %13 = getelementptr inbounds %struct.bfad_fcxp, %struct.bfad_fcxp* %12, i32 0, i32 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.bfad_s*, %struct.bfad_s** %15, align 8
  store %struct.bfad_s* %16, %struct.bfad_s** %9, align 8
  %17 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %18 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %17, i32 0, i32 0
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.bfad_fcxp*, %struct.bfad_fcxp** %6, align 8
  %22 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %23 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %22, i32 0, i32 1
  %24 = load %struct.bfad_fcxp*, %struct.bfad_fcxp** %6, align 8
  %25 = getelementptr inbounds %struct.bfad_fcxp, %struct.bfad_fcxp* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bfad_fcxp*, %struct.bfad_fcxp** %6, align 8
  %28 = getelementptr inbounds %struct.bfad_fcxp, %struct.bfad_fcxp* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @bfad_fcxp_get_req_sgaddr_cb, align 4
  %31 = load i32, i32* @bfad_fcxp_get_req_sglen_cb, align 4
  %32 = load i32, i32* @bfad_fcxp_get_rsp_sgaddr_cb, align 4
  %33 = load i32, i32* @bfad_fcxp_get_rsp_sglen_cb, align 4
  %34 = load i32, i32* @BFA_TRUE, align 4
  %35 = call %struct.bfa_fcxp_s* @bfa_fcxp_req_rsp_alloc(%struct.bfad_fcxp* %21, i32* %23, i32 %26, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  store %struct.bfa_fcxp_s* %35, %struct.bfa_fcxp_s** %8, align 8
  %36 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %8, align 8
  %37 = icmp ne %struct.bfa_fcxp_s* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %3
  %39 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %40 = call i32 @bfa_trc(%struct.bfad_s* %39, i32 0)
  %41 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %42 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %41, i32 0, i32 0
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* @BFA_STATUS_ENOMEM, align 4
  store i32 %45, i32* %4, align 4
  br label %92

46:                                               ; preds = %3
  %47 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %8, align 8
  %48 = load %struct.bfad_fcxp*, %struct.bfad_fcxp** %6, align 8
  %49 = getelementptr inbounds %struct.bfad_fcxp, %struct.bfad_fcxp* %48, i32 0, i32 1
  store %struct.bfa_fcxp_s* %47, %struct.bfa_fcxp_s** %49, align 8
  %50 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %51 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bfa_lps_get_tag_from_pid(i32* %51, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %8, align 8
  %58 = load %struct.bfad_fcxp*, %struct.bfad_fcxp** %6, align 8
  %59 = getelementptr inbounds %struct.bfad_fcxp, %struct.bfad_fcxp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %72 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* @bfad_send_fcpt_cb, align 4
  %78 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %79 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %80 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %57, i32 %60, i32 %63, i32 %64, i32 %67, i32 %70, i32 %74, %struct.TYPE_11__* %76, i32 %77, %struct.bfad_s* %78, i32 %82, i32 %85)
  %87 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %88 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %87, i32 0, i32 0
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %46, %38
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcxp_req_rsp_alloc(%struct.bfad_fcxp*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfa_lps_get_tag_from_pid(i32*, i32) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__*, i32, %struct.bfad_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
