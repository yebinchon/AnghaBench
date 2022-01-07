; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_create_cgr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_create_cgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_cgr = type { i64, i32 (%struct.qman_portal*, %struct.qman_cgr*, i32)*, i32, i32 }
%struct.qman_portal = type { i32, i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qm_mcc_initcgr = type { i32, i32 }
%struct.qm_mcr_querycgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@CGR_NUM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@qman_cgr_cpus = common dso_local global i32* null, align 8
@QM_CGR_WE_CSCN_TARG = common dso_local global i32 0, align 4
@QMAN_CGR_FLAG_USE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"CGR HW state partially modified\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qman_create_cgr(%struct.qman_cgr* %0, i32 %1, %struct.qm_mcc_initcgr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qman_cgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qm_mcc_initcgr*, align 8
  %8 = alloca %struct.qm_mcr_querycgr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qman_portal*, align 8
  %11 = alloca %struct.qm_mcc_initcgr, align 4
  store %struct.qman_cgr* %0, %struct.qman_cgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qm_mcc_initcgr* %2, %struct.qm_mcc_initcgr** %7, align 8
  %12 = load %struct.qman_cgr*, %struct.qman_cgr** %5, align 8
  %13 = getelementptr inbounds %struct.qman_cgr, %struct.qman_cgr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CGR_NUM, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %132

20:                                               ; preds = %3
  %21 = call i32 (...) @preempt_disable()
  %22 = call %struct.qman_portal* (...) @get_affine_portal()
  store %struct.qman_portal* %22, %struct.qman_portal** %10, align 8
  %23 = call i32 (...) @smp_processor_id()
  %24 = load i32*, i32** @qman_cgr_cpus, align 8
  %25 = load %struct.qman_cgr*, %struct.qman_cgr** %5, align 8
  %26 = getelementptr inbounds %struct.qman_cgr, %struct.qman_cgr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %23, i32* %28, align 4
  %29 = call i32 (...) @preempt_enable()
  %30 = load %struct.qman_portal*, %struct.qman_portal** %10, align 8
  %31 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qman_cgr*, %struct.qman_cgr** %5, align 8
  %36 = getelementptr inbounds %struct.qman_cgr, %struct.qman_cgr* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.qman_portal*, %struct.qman_portal** %10, align 8
  %38 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.qm_mcc_initcgr*, %struct.qm_mcc_initcgr** %7, align 8
  %41 = icmp ne %struct.qm_mcc_initcgr* %40, null
  br i1 %41, label %42, label %81

42:                                               ; preds = %20
  %43 = load %struct.qm_mcc_initcgr*, %struct.qm_mcc_initcgr** %7, align 8
  %44 = bitcast %struct.qm_mcc_initcgr* %11 to i8*
  %45 = bitcast %struct.qm_mcc_initcgr* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 8, i1 false)
  %46 = load %struct.qman_cgr*, %struct.qman_cgr** %5, align 8
  %47 = call i32 @qman_query_cgr(%struct.qman_cgr* %46, %struct.qm_mcr_querycgr* %8)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %126

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.qm_mcc_initcgr, %struct.qm_mcc_initcgr* %11, i32 0, i32 1
  %53 = load %struct.qman_portal*, %struct.qman_portal** %10, align 8
  %54 = call i32 @PORTAL_IDX(%struct.qman_portal* %53)
  %55 = getelementptr inbounds %struct.qm_mcr_querycgr, %struct.qm_mcr_querycgr* %8, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @be32_to_cpu(i32 %57)
  %59 = call i32 @qm_cgr_cscn_targ_set(i32* %52, i32 %54, i32 %58)
  %60 = load i32, i32* @QM_CGR_WE_CSCN_TARG, align 4
  %61 = call i32 @cpu_to_be16(i32 %60)
  %62 = getelementptr inbounds %struct.qm_mcc_initcgr, %struct.qm_mcc_initcgr* %11, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @QMAN_CGR_FLAG_USE_INIT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %51
  %70 = load %struct.qman_cgr*, %struct.qman_cgr** %5, align 8
  %71 = load i32, i32* @QMAN_CGR_FLAG_USE_INIT, align 4
  %72 = call i32 @qm_modify_cgr(%struct.qman_cgr* %70, i32 %71, %struct.qm_mcc_initcgr* %11)
  store i32 %72, i32* %9, align 4
  br label %76

73:                                               ; preds = %51
  %74 = load %struct.qman_cgr*, %struct.qman_cgr** %5, align 8
  %75 = call i32 @qm_modify_cgr(%struct.qman_cgr* %74, i32 0, %struct.qm_mcc_initcgr* %11)
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %126

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %20
  %82 = load %struct.qman_cgr*, %struct.qman_cgr** %5, align 8
  %83 = getelementptr inbounds %struct.qman_cgr, %struct.qman_cgr* %82, i32 0, i32 2
  %84 = load %struct.qman_portal*, %struct.qman_portal** %10, align 8
  %85 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %84, i32 0, i32 3
  %86 = call i32 @list_add(i32* %83, i32* %85)
  %87 = load %struct.qman_cgr*, %struct.qman_cgr** %5, align 8
  %88 = call i32 @qman_query_cgr(%struct.qman_cgr* %87, %struct.qm_mcr_querycgr* %8)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %81
  %92 = load %struct.qman_portal*, %struct.qman_portal** %10, align 8
  %93 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %92, i32 0, i32 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %126

98:                                               ; preds = %81
  %99 = load %struct.qman_cgr*, %struct.qman_cgr** %5, align 8
  %100 = getelementptr inbounds %struct.qman_cgr, %struct.qman_cgr* %99, i32 0, i32 1
  %101 = load i32 (%struct.qman_portal*, %struct.qman_cgr*, i32)*, i32 (%struct.qman_portal*, %struct.qman_cgr*, i32)** %100, align 8
  %102 = icmp ne i32 (%struct.qman_portal*, %struct.qman_cgr*, i32)* %101, null
  br i1 %102, label %103, label %125

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.qm_mcr_querycgr, %struct.qm_mcr_querycgr* %8, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %103
  %109 = load %struct.qman_portal*, %struct.qman_portal** %10, align 8
  %110 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load %struct.qman_cgr*, %struct.qman_cgr** %5, align 8
  %114 = getelementptr inbounds %struct.qman_cgr, %struct.qman_cgr* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @qman_cgrs_get(i32* %112, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %108
  %119 = load %struct.qman_cgr*, %struct.qman_cgr** %5, align 8
  %120 = getelementptr inbounds %struct.qman_cgr, %struct.qman_cgr* %119, i32 0, i32 1
  %121 = load i32 (%struct.qman_portal*, %struct.qman_cgr*, i32)*, i32 (%struct.qman_portal*, %struct.qman_cgr*, i32)** %120, align 8
  %122 = load %struct.qman_portal*, %struct.qman_portal** %10, align 8
  %123 = load %struct.qman_cgr*, %struct.qman_cgr** %5, align 8
  %124 = call i32 %121(%struct.qman_portal* %122, %struct.qman_cgr* %123, i32 1)
  br label %125

125:                                              ; preds = %118, %108, %103, %98
  br label %126

126:                                              ; preds = %125, %91, %79, %50
  %127 = load %struct.qman_portal*, %struct.qman_portal** %10, align 8
  %128 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = call i32 (...) @put_affine_portal()
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %126, %17
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local %struct.qman_portal* @get_affine_portal(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @spin_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qman_query_cgr(%struct.qman_cgr*, %struct.qm_mcr_querycgr*) #1

declare dso_local i32 @qm_cgr_cscn_targ_set(i32*, i32, i32) #1

declare dso_local i32 @PORTAL_IDX(%struct.qman_portal*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @qm_modify_cgr(%struct.qman_cgr*, i32, %struct.qm_mcc_initcgr*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @qman_cgrs_get(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_affine_portal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
