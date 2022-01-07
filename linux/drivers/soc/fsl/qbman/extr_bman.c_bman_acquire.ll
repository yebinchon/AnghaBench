; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bman_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bman_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bman_pool = type { i32 }
%struct.bm_buffer = type { i32 }
%struct.bman_portal = type { i32 }
%struct.bm_mc_command = type { i32 }
%union.bm_mc_result = type { i32* }

@BM_MCC_VERB_CMD_ACQUIRE = common dso_local global i32 0, align 4
@BM_MCC_VERB_ACQUIRE_BUFCOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"BMan Acquire Timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@BM_MCR_VERB_ACQUIRE_BUFCOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bman_acquire(%struct.bman_pool* %0, %struct.bm_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bman_pool*, align 8
  %6 = alloca %struct.bm_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bman_portal*, align 8
  %9 = alloca %struct.bm_mc_command*, align 8
  %10 = alloca %union.bm_mc_result*, align 8
  %11 = alloca i32, align 4
  store %struct.bman_pool* %0, %struct.bman_pool** %5, align 8
  store %struct.bm_buffer* %1, %struct.bm_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call %struct.bman_portal* (...) @get_affine_portal()
  store %struct.bman_portal* %12, %struct.bman_portal** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sle i32 %16, 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i1 [ false, %3 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @DPAA_ASSERT(i32 %20)
  %22 = load %struct.bman_portal*, %struct.bman_portal** %8, align 8
  %23 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %22, i32 0, i32 0
  %24 = call %struct.bm_mc_command* @bm_mc_start(i32* %23)
  store %struct.bm_mc_command* %24, %struct.bm_mc_command** %9, align 8
  %25 = load %struct.bman_pool*, %struct.bman_pool** %5, align 8
  %26 = getelementptr inbounds %struct.bman_pool, %struct.bman_pool* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bm_mc_command*, %struct.bm_mc_command** %9, align 8
  %29 = getelementptr inbounds %struct.bm_mc_command, %struct.bm_mc_command* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.bman_portal*, %struct.bman_portal** %8, align 8
  %31 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %30, i32 0, i32 0
  %32 = load i32, i32* @BM_MCC_VERB_CMD_ACQUIRE, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @BM_MCC_VERB_ACQUIRE_BUFCOUNT, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %32, %35
  %37 = call i32 @bm_mc_commit(i32* %31, i32 %36)
  %38 = load %struct.bman_portal*, %struct.bman_portal** %8, align 8
  %39 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %38, i32 0, i32 0
  %40 = call i32 @bm_mc_result_timeout(i32* %39, %union.bm_mc_result** %10)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %18
  %43 = call i32 (...) @put_affine_portal()
  %44 = call i32 @pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %77

47:                                               ; preds = %18
  %48 = load %union.bm_mc_result*, %union.bm_mc_result** %10, align 8
  %49 = bitcast %union.bm_mc_result* %48 to i32*
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @BM_MCR_VERB_ACQUIRE_BUFCOUNT, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load %struct.bm_buffer*, %struct.bm_buffer** %6, align 8
  %54 = icmp ne %struct.bm_buffer* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %47
  %56 = load %struct.bm_buffer*, %struct.bm_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.bm_buffer, %struct.bm_buffer* %56, i64 0
  %58 = load %union.bm_mc_result*, %union.bm_mc_result** %10, align 8
  %59 = bitcast %union.bm_mc_result* %58 to i32**
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memcpy(%struct.bm_buffer* %57, i32* %61, i32 %65)
  br label %67

67:                                               ; preds = %55, %47
  %68 = call i32 (...) @put_affine_portal()
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %42
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.bman_portal* @get_affine_portal(...) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local %struct.bm_mc_command* @bm_mc_start(i32*) #1

declare dso_local i32 @bm_mc_commit(i32*, i32) #1

declare dso_local i32 @bm_mc_result_timeout(i32*, %union.bm_mc_result**) #1

declare dso_local i32 @put_affine_portal(...) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @memcpy(%struct.bm_buffer*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
