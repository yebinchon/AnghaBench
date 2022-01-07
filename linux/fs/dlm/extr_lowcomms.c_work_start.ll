; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_work_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_work_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"dlm_recv\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@recv_workqueue = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"can't start dlm_recv\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"dlm_send\00", align 1
@send_workqueue = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"can't start dlm_send\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @work_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @work_start() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @WQ_UNBOUND, align 4
  %3 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %4 = or i32 %2, %3
  %5 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %4, i32 1)
  store i8* %5, i8** @recv_workqueue, align 8
  %6 = load i8*, i8** @recv_workqueue, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = call i32 @log_print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %26

12:                                               ; preds = %0
  %13 = load i32, i32* @WQ_UNBOUND, align 4
  %14 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32 1)
  store i8* %16, i8** @send_workqueue, align 8
  %17 = load i8*, i8** @send_workqueue, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = call i32 @log_print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i8*, i8** @recv_workqueue, align 8
  %22 = call i32 @destroy_workqueue(i8* %21)
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %1, align 4
  br label %26

25:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %19, %8
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i8* @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @log_print(i8*) #1

declare dso_local i32 @destroy_workqueue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
