; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_query_cgr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_query_cgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_cgr = type { i32 }
%struct.qm_mcr_querycgr = type { i32 }
%union.qm_mc_command = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%union.qm_mc_result = type { i64 }
%struct.qman_portal = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@QM_MCC_VERB_QUERYCGR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@QM_MCR_VERB_MASK = common dso_local global i32 0, align 4
@QM_MCR_RESULT_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"QUERY_CGR failed: %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qman_cgr*, %struct.qm_mcr_querycgr*)* @qman_query_cgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qman_query_cgr(%struct.qman_cgr* %0, %struct.qm_mcr_querycgr* %1) #0 {
  %3 = alloca %struct.qman_cgr*, align 8
  %4 = alloca %struct.qm_mcr_querycgr*, align 8
  %5 = alloca %union.qm_mc_command*, align 8
  %6 = alloca %union.qm_mc_result*, align 8
  %7 = alloca %struct.qman_portal*, align 8
  %8 = alloca i32, align 4
  store %struct.qman_cgr* %0, %struct.qman_cgr** %3, align 8
  store %struct.qm_mcr_querycgr* %1, %struct.qm_mcr_querycgr** %4, align 8
  %9 = call %struct.qman_portal* (...) @get_affine_portal()
  store %struct.qman_portal* %9, %struct.qman_portal** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.qman_portal*, %struct.qman_portal** %7, align 8
  %11 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %10, i32 0, i32 1
  %12 = call %union.qm_mc_command* @qm_mc_start(i32* %11)
  store %union.qm_mc_command* %12, %union.qm_mc_command** %5, align 8
  %13 = load %struct.qman_cgr*, %struct.qman_cgr** %3, align 8
  %14 = getelementptr inbounds %struct.qman_cgr, %struct.qman_cgr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %union.qm_mc_command*, %union.qm_mc_command** %5, align 8
  %17 = bitcast %union.qm_mc_command* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.qman_portal*, %struct.qman_portal** %7, align 8
  %20 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %19, i32 0, i32 1
  %21 = load i32, i32* @QM_MCC_VERB_QUERYCGR, align 4
  %22 = call i32 @qm_mc_commit(i32* %20, i32 %21)
  %23 = load %struct.qman_portal*, %struct.qman_portal** %7, align 8
  %24 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %23, i32 0, i32 1
  %25 = call i32 @qm_mc_result_timeout(i32* %24, %union.qm_mc_result** %6)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %65

30:                                               ; preds = %2
  %31 = load %union.qm_mc_result*, %union.qm_mc_result** %6, align 8
  %32 = bitcast %union.qm_mc_result* %31 to i32*
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @QM_MCC_VERB_QUERYCGR, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @DPAA_ASSERT(i32 %38)
  %40 = load %union.qm_mc_result*, %union.qm_mc_result** %6, align 8
  %41 = bitcast %union.qm_mc_result* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %30
  %46 = load %struct.qm_mcr_querycgr*, %struct.qm_mcr_querycgr** %4, align 8
  %47 = load %union.qm_mc_result*, %union.qm_mc_result** %6, align 8
  %48 = bitcast %union.qm_mc_result* %47 to %struct.qm_mcr_querycgr*
  %49 = bitcast %struct.qm_mcr_querycgr* %46 to i8*
  %50 = bitcast %struct.qm_mcr_querycgr* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 8 %50, i64 4, i1 false)
  br label %64

51:                                               ; preds = %30
  %52 = load %struct.qman_portal*, %struct.qman_portal** %7, align 8
  %53 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %union.qm_mc_result*, %union.qm_mc_result** %6, align 8
  %58 = bitcast %union.qm_mc_result* %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @mcr_result_str(i64 %59)
  %61 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %51, %45
  br label %65

65:                                               ; preds = %64, %27
  %66 = call i32 (...) @put_affine_portal()
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local %struct.qman_portal* @get_affine_portal(...) #1

declare dso_local %union.qm_mc_command* @qm_mc_start(i32*) #1

declare dso_local i32 @qm_mc_commit(i32*, i32) #1

declare dso_local i32 @qm_mc_result_timeout(i32*, %union.qm_mc_result**) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mcr_result_str(i64) #1

declare dso_local i32 @put_affine_portal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
