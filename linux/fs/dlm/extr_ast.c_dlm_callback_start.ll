; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_ast.c_dlm_callback_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_ast.c_dlm_callback_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"dlm_callback\00", align 1
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"can't start dlm_callback workqueue\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_callback_start(%struct.dlm_ls* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dlm_ls*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  %4 = load i32, i32* @WQ_HIGHPRI, align 4
  %5 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %6, i32 0)
  %8 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %9 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %11 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i32 @log_print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @log_print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
