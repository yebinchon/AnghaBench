; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_query_fq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_query_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type { i32 }
%struct.qm_fqd = type { i32 }
%union.qm_mc_command = type { i32 }
%union.qm_mc_result = type { i64 }
%struct.qman_portal = type { i32 }
%struct.TYPE_2__ = type { %struct.qm_fqd }

@QM_MCC_VERB_QUERYFQ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@QM_MCR_VERB_MASK = common dso_local global i32 0, align 4
@QM_MCR_VERB_QUERYFQ = common dso_local global i32 0, align 4
@QM_MCR_RESULT_OK = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qman_query_fq(%struct.qman_fq* %0, %struct.qm_fqd* %1) #0 {
  %3 = alloca %struct.qman_fq*, align 8
  %4 = alloca %struct.qm_fqd*, align 8
  %5 = alloca %union.qm_mc_command*, align 8
  %6 = alloca %union.qm_mc_result*, align 8
  %7 = alloca %struct.qman_portal*, align 8
  %8 = alloca i32, align 4
  store %struct.qman_fq* %0, %struct.qman_fq** %3, align 8
  store %struct.qm_fqd* %1, %struct.qm_fqd** %4, align 8
  %9 = call %struct.qman_portal* (...) @get_affine_portal()
  store %struct.qman_portal* %9, %struct.qman_portal** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.qman_portal*, %struct.qman_portal** %7, align 8
  %11 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %10, i32 0, i32 0
  %12 = call %union.qm_mc_command* @qm_mc_start(i32* %11)
  store %union.qm_mc_command* %12, %union.qm_mc_command** %5, align 8
  %13 = load %union.qm_mc_command*, %union.qm_mc_command** %5, align 8
  %14 = bitcast %union.qm_mc_command* %13 to i32*
  %15 = load %struct.qman_fq*, %struct.qman_fq** %3, align 8
  %16 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @qm_fqid_set(i32* %14, i32 %17)
  %19 = load %struct.qman_portal*, %struct.qman_portal** %7, align 8
  %20 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %19, i32 0, i32 0
  %21 = load i32, i32* @QM_MCC_VERB_QUERYFQ, align 4
  %22 = call i32 @qm_mc_commit(i32* %20, i32 %21)
  %23 = load %struct.qman_portal*, %struct.qman_portal** %7, align 8
  %24 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %23, i32 0, i32 0
  %25 = call i32 @qm_mc_result_timeout(i32* %24, %union.qm_mc_result** %6)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %56

30:                                               ; preds = %2
  %31 = load %union.qm_mc_result*, %union.qm_mc_result** %6, align 8
  %32 = bitcast %union.qm_mc_result* %31 to i32*
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @QM_MCR_VERB_QUERYFQ, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @DPAA_ASSERT(i32 %38)
  %40 = load %union.qm_mc_result*, %union.qm_mc_result** %6, align 8
  %41 = bitcast %union.qm_mc_result* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %30
  %46 = load %struct.qm_fqd*, %struct.qm_fqd** %4, align 8
  %47 = load %union.qm_mc_result*, %union.qm_mc_result** %6, align 8
  %48 = bitcast %union.qm_mc_result* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = bitcast %struct.qm_fqd* %46 to i8*
  %51 = bitcast %struct.qm_fqd* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 8 %51, i64 4, i1 false)
  br label %55

52:                                               ; preds = %30
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %45
  br label %56

56:                                               ; preds = %55, %27
  %57 = call i32 (...) @put_affine_portal()
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.qman_portal* @get_affine_portal(...) #1

declare dso_local %union.qm_mc_command* @qm_mc_start(i32*) #1

declare dso_local i32 @qm_fqid_set(i32*, i32) #1

declare dso_local i32 @qm_mc_commit(i32*, i32) #1

declare dso_local i32 @qm_mc_result_timeout(i32*, %union.qm_mc_result**) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @put_affine_portal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
