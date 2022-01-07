; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_fq_query_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_fq_query_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qbman_swp = type { i32 }
%struct.qbman_fq_query_np_rslt = type { i32, i32 }
%struct.qbman_fq_query_desc = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@QBMAN_FQ_QUERY_NP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"qbman: Query FQID %d NP fields failed, no response\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@QBMAN_RESPONSE_VERB_MASK = common dso_local global i32 0, align 4
@QBMAN_MC_RSLT_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Query NP fields of FQID 0x%x failed, code=0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qbman_fq_query_state(%struct.qbman_swp* %0, i32 %1, %struct.qbman_fq_query_np_rslt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qbman_swp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qbman_fq_query_np_rslt*, align 8
  %8 = alloca %struct.qbman_fq_query_desc*, align 8
  %9 = alloca i8*, align 8
  store %struct.qbman_swp* %0, %struct.qbman_swp** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qbman_fq_query_np_rslt* %2, %struct.qbman_fq_query_np_rslt** %7, align 8
  %10 = load %struct.qbman_swp*, %struct.qbman_swp** %5, align 8
  %11 = call i64 @qbman_swp_mc_start(%struct.qbman_swp* %10)
  %12 = inttoptr i64 %11 to %struct.qbman_fq_query_desc*
  store %struct.qbman_fq_query_desc* %12, %struct.qbman_fq_query_desc** %8, align 8
  %13 = load %struct.qbman_fq_query_desc*, %struct.qbman_fq_query_desc** %8, align 8
  %14 = icmp ne %struct.qbman_fq_query_desc* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %66

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 16777215
  %21 = call i32 @cpu_to_le32(i32 %20)
  %22 = load %struct.qbman_fq_query_desc*, %struct.qbman_fq_query_desc** %8, align 8
  %23 = getelementptr inbounds %struct.qbman_fq_query_desc, %struct.qbman_fq_query_desc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.qbman_swp*, %struct.qbman_swp** %5, align 8
  %25 = load %struct.qbman_fq_query_desc*, %struct.qbman_fq_query_desc** %8, align 8
  %26 = load i32, i32* @QBMAN_FQ_QUERY_NP, align 4
  %27 = call i8* @qbman_swp_mc_complete(%struct.qbman_swp* %24, %struct.qbman_fq_query_desc* %25, i32 %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %66

35:                                               ; preds = %18
  %36 = load %struct.qbman_fq_query_np_rslt*, %struct.qbman_fq_query_np_rslt** %7, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = bitcast i8* %37 to %struct.qbman_fq_query_np_rslt*
  %39 = bitcast %struct.qbman_fq_query_np_rslt* %36 to i8*
  %40 = bitcast %struct.qbman_fq_query_np_rslt* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 8, i1 false)
  %41 = load %struct.qbman_fq_query_np_rslt*, %struct.qbman_fq_query_np_rslt** %7, align 8
  %42 = getelementptr inbounds %struct.qbman_fq_query_np_rslt, %struct.qbman_fq_query_np_rslt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @QBMAN_RESPONSE_VERB_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @QBMAN_FQ_QUERY_NP, align 4
  %47 = icmp ne i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.qbman_fq_query_np_rslt*, %struct.qbman_fq_query_np_rslt** %7, align 8
  %51 = getelementptr inbounds %struct.qbman_fq_query_np_rslt, %struct.qbman_fq_query_np_rslt* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @QBMAN_MC_RSLT_OK, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %35
  %56 = load %struct.qbman_fq_query_desc*, %struct.qbman_fq_query_desc** %8, align 8
  %57 = getelementptr inbounds %struct.qbman_fq_query_desc, %struct.qbman_fq_query_desc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.qbman_fq_query_np_rslt*, %struct.qbman_fq_query_np_rslt** %7, align 8
  %60 = getelementptr inbounds %struct.qbman_fq_query_np_rslt, %struct.qbman_fq_query_np_rslt* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %55, %30, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @qbman_swp_mc_start(%struct.qbman_swp*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @qbman_swp_mc_complete(%struct.qbman_swp*, %struct.qbman_fq_query_desc*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
