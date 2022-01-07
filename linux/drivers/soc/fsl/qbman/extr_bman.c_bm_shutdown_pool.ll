; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bm_shutdown_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bm_shutdown_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_mc_command = type { i32 }
%union.bm_mc_result = type { i32 }
%struct.bman_portal = type { i32 }

@BM_MCC_VERB_CMD_ACQUIRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"BMan Acquire Command timedout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@BM_MCR_VERB_ACQUIRE_BUFCOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bm_shutdown_pool(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bm_mc_command*, align 8
  %5 = alloca %union.bm_mc_result*, align 8
  %6 = alloca %struct.bman_portal*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %7 = call %struct.bman_portal* (...) @get_affine_portal()
  store %struct.bman_portal* %7, %struct.bman_portal** %6, align 8
  br label %8

8:                                                ; preds = %1, %36
  %9 = load %struct.bman_portal*, %struct.bman_portal** %6, align 8
  %10 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %9, i32 0, i32 0
  %11 = call %struct.bm_mc_command* @bm_mc_start(i32* %10)
  store %struct.bm_mc_command* %11, %struct.bm_mc_command** %4, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.bm_mc_command*, %struct.bm_mc_command** %4, align 8
  %14 = getelementptr inbounds %struct.bm_mc_command, %struct.bm_mc_command* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.bman_portal*, %struct.bman_portal** %6, align 8
  %16 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %15, i32 0, i32 0
  %17 = load i32, i32* @BM_MCC_VERB_CMD_ACQUIRE, align 4
  %18 = or i32 %17, 1
  %19 = call i32 @bm_mc_commit(i32* %16, i32 %18)
  %20 = load %struct.bman_portal*, %struct.bman_portal** %6, align 8
  %21 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %20, i32 0, i32 0
  %22 = call i32 @bm_mc_result_timeout(i32* %21, %union.bm_mc_result** %5)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %8
  %25 = call i32 @pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %37

28:                                               ; preds = %8
  %29 = load %union.bm_mc_result*, %union.bm_mc_result** %5, align 8
  %30 = bitcast %union.bm_mc_result* %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BM_MCR_VERB_ACQUIRE_BUFCOUNT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %37

36:                                               ; preds = %28
  br label %8

37:                                               ; preds = %35, %24
  %38 = call i32 (...) @put_affine_portal()
  ret i32 0
}

declare dso_local %struct.bman_portal* @get_affine_portal(...) #1

declare dso_local %struct.bm_mc_command* @bm_mc_start(i32*) #1

declare dso_local i32 @bm_mc_commit(i32*, i32) #1

declare dso_local i32 @bm_mc_result_timeout(i32*, %union.bm_mc_result**) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @put_affine_portal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
