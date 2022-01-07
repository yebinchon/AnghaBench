; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_modify_cgr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_modify_cgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_cgr = type { i32 }
%struct.qm_mcc_initcgr = type { i32 }
%union.qm_mc_command = type { %struct.qm_mcc_initcgr }
%union.qm_mc_result = type { i64 }
%struct.qman_portal = type { i32 }

@QM_MCC_VERB_MODIFYCGR = common dso_local global i32 0, align 4
@QMAN_CGR_FLAG_USE_INIT = common dso_local global i32 0, align 4
@QM_MCC_VERB_INITCGR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@QM_MCR_VERB_MASK = common dso_local global i32 0, align 4
@QM_MCR_RESULT_OK = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qman_cgr*, i32, %struct.qm_mcc_initcgr*)* @qm_modify_cgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_modify_cgr(%struct.qman_cgr* %0, i32 %1, %struct.qm_mcc_initcgr* %2) #0 {
  %4 = alloca %struct.qman_cgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qm_mcc_initcgr*, align 8
  %7 = alloca %union.qm_mc_command*, align 8
  %8 = alloca %union.qm_mc_result*, align 8
  %9 = alloca %struct.qman_portal*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qman_cgr* %0, %struct.qman_cgr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.qm_mcc_initcgr* %2, %struct.qm_mcc_initcgr** %6, align 8
  %12 = call %struct.qman_portal* (...) @get_affine_portal()
  store %struct.qman_portal* %12, %struct.qman_portal** %9, align 8
  %13 = load i32, i32* @QM_MCC_VERB_MODIFYCGR, align 4
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.qman_portal*, %struct.qman_portal** %9, align 8
  %15 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %14, i32 0, i32 0
  %16 = call %union.qm_mc_command* @qm_mc_start(i32* %15)
  store %union.qm_mc_command* %16, %union.qm_mc_command** %7, align 8
  %17 = load %struct.qm_mcc_initcgr*, %struct.qm_mcc_initcgr** %6, align 8
  %18 = icmp ne %struct.qm_mcc_initcgr* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %union.qm_mc_command*, %union.qm_mc_command** %7, align 8
  %21 = bitcast %union.qm_mc_command* %20 to %struct.qm_mcc_initcgr*
  %22 = load %struct.qm_mcc_initcgr*, %struct.qm_mcc_initcgr** %6, align 8
  %23 = bitcast %struct.qm_mcc_initcgr* %21 to i8*
  %24 = bitcast %struct.qm_mcc_initcgr* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  br label %25

25:                                               ; preds = %19, %3
  %26 = load %struct.qman_cgr*, %struct.qman_cgr** %4, align 8
  %27 = getelementptr inbounds %struct.qman_cgr, %struct.qman_cgr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %union.qm_mc_command*, %union.qm_mc_command** %7, align 8
  %30 = bitcast %union.qm_mc_command* %29 to %struct.qm_mcc_initcgr*
  %31 = getelementptr inbounds %struct.qm_mcc_initcgr, %struct.qm_mcc_initcgr* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @QMAN_CGR_FLAG_USE_INIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @QM_MCC_VERB_INITCGR, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %36, %25
  %39 = load %struct.qman_portal*, %struct.qman_portal** %9, align 8
  %40 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %39, i32 0, i32 0
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @qm_mc_commit(i32* %40, i32 %41)
  %43 = load %struct.qman_portal*, %struct.qman_portal** %9, align 8
  %44 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %43, i32 0, i32 0
  %45 = call i32 @qm_mc_result_timeout(i32* %44, %union.qm_mc_result** %8)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %69

50:                                               ; preds = %38
  %51 = load %union.qm_mc_result*, %union.qm_mc_result** %8, align 8
  %52 = bitcast %union.qm_mc_result* %51 to i32*
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @DPAA_ASSERT(i32 %58)
  %60 = load %union.qm_mc_result*, %union.qm_mc_result** %8, align 8
  %61 = bitcast %union.qm_mc_result* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %50
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %65, %50
  br label %69

69:                                               ; preds = %68, %47
  %70 = call i32 (...) @put_affine_portal()
  %71 = load i32, i32* %11, align 4
  ret i32 %71
}

declare dso_local %struct.qman_portal* @get_affine_portal(...) #1

declare dso_local %union.qm_mc_command* @qm_mc_start(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qm_mc_commit(i32*, i32) #1

declare dso_local i32 @qm_mc_result_timeout(i32*, %union.qm_mc_result**) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i32 @put_affine_portal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
