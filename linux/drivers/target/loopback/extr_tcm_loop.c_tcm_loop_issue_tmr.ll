; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_issue_tmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_issue_tmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm_loop_tpg = type { %struct.tcm_loop_nexus* }
%struct.tcm_loop_nexus = type { %struct.se_session* }
%struct.se_session = type { i32 }
%struct.se_cmd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tcm_loop_cmd = type { i32, i32, %struct.se_cmd }

@TMR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Unable to perform device reset without active I_T Nexus\0A\00", align 1
@tcm_loop_cmd_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TARGET_SCF_ACK_KREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcm_loop_tpg*, i32, i32, i32)* @tcm_loop_issue_tmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_loop_issue_tmr(%struct.tcm_loop_tpg* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcm_loop_tpg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.se_cmd*, align 8
  %11 = alloca %struct.se_session*, align 8
  %12 = alloca %struct.tcm_loop_nexus*, align 8
  %13 = alloca %struct.tcm_loop_cmd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tcm_loop_tpg* %0, %struct.tcm_loop_tpg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @TMR_FUNCTION_FAILED, align 4
  store i32 %16, i32* %14, align 4
  %17 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %6, align 8
  %18 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %17, i32 0, i32 0
  %19 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %18, align 8
  store %struct.tcm_loop_nexus* %19, %struct.tcm_loop_nexus** %12, align 8
  %20 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %12, align 8
  %21 = icmp ne %struct.tcm_loop_nexus* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %5, align 4
  br label %75

25:                                               ; preds = %4
  %26 = load i32, i32* @tcm_loop_cmd_cache, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.tcm_loop_cmd* @kmem_cache_zalloc(i32 %26, i32 %27)
  store %struct.tcm_loop_cmd* %28, %struct.tcm_loop_cmd** %13, align 8
  %29 = load %struct.tcm_loop_cmd*, %struct.tcm_loop_cmd** %13, align 8
  %30 = icmp ne %struct.tcm_loop_cmd* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %5, align 4
  br label %75

33:                                               ; preds = %25
  %34 = load %struct.tcm_loop_cmd*, %struct.tcm_loop_cmd** %13, align 8
  %35 = getelementptr inbounds %struct.tcm_loop_cmd, %struct.tcm_loop_cmd* %34, i32 0, i32 0
  %36 = call i32 @init_completion(i32* %35)
  %37 = load %struct.tcm_loop_cmd*, %struct.tcm_loop_cmd** %13, align 8
  %38 = getelementptr inbounds %struct.tcm_loop_cmd, %struct.tcm_loop_cmd* %37, i32 0, i32 2
  store %struct.se_cmd* %38, %struct.se_cmd** %10, align 8
  %39 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %6, align 8
  %40 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %39, i32 0, i32 0
  %41 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %40, align 8
  %42 = getelementptr inbounds %struct.tcm_loop_nexus, %struct.tcm_loop_nexus* %41, i32 0, i32 0
  %43 = load %struct.se_session*, %struct.se_session** %42, align 8
  store %struct.se_session* %43, %struct.se_session** %11, align 8
  %44 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %45 = load %struct.se_session*, %struct.se_session** %11, align 8
  %46 = load %struct.tcm_loop_cmd*, %struct.tcm_loop_cmd** %13, align 8
  %47 = getelementptr inbounds %struct.tcm_loop_cmd, %struct.tcm_loop_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @TARGET_SCF_ACK_KREF, align 4
  %54 = call i32 @target_submit_tmr(%struct.se_cmd* %44, %struct.se_session* %45, i32 %48, i32 %49, i32* null, i32 %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %33
  br label %71

58:                                               ; preds = %33
  %59 = load %struct.tcm_loop_cmd*, %struct.tcm_loop_cmd** %13, align 8
  %60 = getelementptr inbounds %struct.tcm_loop_cmd, %struct.tcm_loop_cmd* %59, i32 0, i32 0
  %61 = call i32 @wait_for_completion(i32* %60)
  %62 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %63 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %14, align 4
  %67 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %68 = call i32 @target_put_sess_cmd(%struct.se_cmd* %67)
  br label %69

69:                                               ; preds = %71, %58
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %5, align 4
  br label %75

71:                                               ; preds = %57
  %72 = load i32, i32* @tcm_loop_cmd_cache, align 4
  %73 = load %struct.tcm_loop_cmd*, %struct.tcm_loop_cmd** %13, align 8
  %74 = call i32 @kmem_cache_free(i32 %72, %struct.tcm_loop_cmd* %73)
  br label %69

75:                                               ; preds = %69, %31, %22
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.tcm_loop_cmd* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @target_submit_tmr(%struct.se_cmd*, %struct.se_session*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @target_put_sess_cmd(%struct.se_cmd*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.tcm_loop_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
