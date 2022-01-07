; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_setup_pt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_setup_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"xcopy_wq\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@xcopy_wq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to allocate xcopy_wq\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@xcopy_pt_tpg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@xcopy_pt_tfo = common dso_local global i32 0, align 4
@xcopy_pt_nacl = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@xcopy_pt_sess = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_xcopy_setup_pt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %4 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %3, i32 0)
  store i32 %4, i32* @xcopy_wq, align 4
  %5 = load i32, i32* @xcopy_wq, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %26

11:                                               ; preds = %0
  %12 = call i32 @memset(%struct.TYPE_6__* @xcopy_pt_tpg, i32 0, i32 4)
  %13 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xcopy_pt_tpg, i32 0, i32 8))
  %14 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xcopy_pt_tpg, i32 0, i32 7))
  %15 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xcopy_pt_tpg, i32 0, i32 6))
  store i32* @xcopy_pt_tfo, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xcopy_pt_tpg, i32 0, i32 5), align 8
  %16 = call i32 @memset(%struct.TYPE_6__* @xcopy_pt_nacl, i32 0, i32 4)
  %17 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xcopy_pt_nacl, i32 0, i32 4))
  %18 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xcopy_pt_nacl, i32 0, i32 3))
  %19 = call i32 @memset(%struct.TYPE_6__* @xcopy_pt_sess, i32 0, i32 4)
  %20 = call i32 @transport_init_session(%struct.TYPE_6__* @xcopy_pt_sess)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* %1, align 4
  br label %26

25:                                               ; preds = %11
  store %struct.TYPE_6__* @xcopy_pt_tpg, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xcopy_pt_nacl, i32 0, i32 1), align 8
  store %struct.TYPE_6__* @xcopy_pt_sess, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xcopy_pt_nacl, i32 0, i32 2), align 8
  store %struct.TYPE_6__* @xcopy_pt_tpg, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xcopy_pt_sess, i32 0, i32 1), align 8
  store %struct.TYPE_6__* @xcopy_pt_nacl, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xcopy_pt_sess, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %23, %7
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @transport_init_session(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
