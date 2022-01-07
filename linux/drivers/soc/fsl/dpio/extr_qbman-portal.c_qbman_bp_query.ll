; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_bp_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_bp_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qbman_swp = type { i32 }
%struct.qbman_bp_query_rslt = type { i32, i64 }
%struct.qbman_bp_query_desc = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@QBMAN_BP_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"qbman: Query BPID %d fields failed, no response\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@QBMAN_RESPONSE_VERB_MASK = common dso_local global i32 0, align 4
@QBMAN_MC_RSLT_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Query fields of BPID 0x%x failed, code=0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qbman_bp_query(%struct.qbman_swp* %0, i32 %1, %struct.qbman_bp_query_rslt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qbman_swp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qbman_bp_query_rslt*, align 8
  %8 = alloca %struct.qbman_bp_query_desc*, align 8
  %9 = alloca i8*, align 8
  store %struct.qbman_swp* %0, %struct.qbman_swp** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qbman_bp_query_rslt* %2, %struct.qbman_bp_query_rslt** %7, align 8
  %10 = load %struct.qbman_swp*, %struct.qbman_swp** %5, align 8
  %11 = call i64 @qbman_swp_mc_start(%struct.qbman_swp* %10)
  %12 = inttoptr i64 %11 to %struct.qbman_bp_query_desc*
  store %struct.qbman_bp_query_desc* %12, %struct.qbman_bp_query_desc** %8, align 8
  %13 = load %struct.qbman_bp_query_desc*, %struct.qbman_bp_query_desc** %8, align 8
  %14 = icmp ne %struct.qbman_bp_query_desc* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %63

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = load %struct.qbman_bp_query_desc*, %struct.qbman_bp_query_desc** %8, align 8
  %22 = getelementptr inbounds %struct.qbman_bp_query_desc, %struct.qbman_bp_query_desc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.qbman_swp*, %struct.qbman_swp** %5, align 8
  %24 = load %struct.qbman_bp_query_desc*, %struct.qbman_bp_query_desc** %8, align 8
  %25 = load i32, i32* @QBMAN_BP_QUERY, align 4
  %26 = call i8* @qbman_swp_mc_complete(%struct.qbman_swp* %23, %struct.qbman_bp_query_desc* %24, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %63

34:                                               ; preds = %18
  %35 = load %struct.qbman_bp_query_rslt*, %struct.qbman_bp_query_rslt** %7, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = bitcast i8* %36 to %struct.qbman_bp_query_rslt*
  %38 = bitcast %struct.qbman_bp_query_rslt* %35 to i8*
  %39 = bitcast %struct.qbman_bp_query_rslt* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = load %struct.qbman_bp_query_rslt*, %struct.qbman_bp_query_rslt** %7, align 8
  %41 = getelementptr inbounds %struct.qbman_bp_query_rslt, %struct.qbman_bp_query_rslt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @QBMAN_RESPONSE_VERB_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @QBMAN_BP_QUERY, align 4
  %46 = icmp ne i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON(i32 %47)
  %49 = load %struct.qbman_bp_query_rslt*, %struct.qbman_bp_query_rslt** %7, align 8
  %50 = getelementptr inbounds %struct.qbman_bp_query_rslt, %struct.qbman_bp_query_rslt* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @QBMAN_MC_RSLT_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %34
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.qbman_bp_query_rslt*, %struct.qbman_bp_query_rslt** %7, align 8
  %57 = getelementptr inbounds %struct.qbman_bp_query_rslt, %struct.qbman_bp_query_rslt* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %55, i64 %58)
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %54, %29, %15
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @qbman_swp_mc_start(%struct.qbman_swp*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @qbman_swp_mc_complete(%struct.qbman_swp*, %struct.qbman_bp_query_desc*, i32) #1

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
