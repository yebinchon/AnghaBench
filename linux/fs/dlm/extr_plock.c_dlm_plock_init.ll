; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_plock.c_dlm_plock_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_plock.c_dlm_plock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ops_lock = common dso_local global i32 0, align 4
@send_list = common dso_local global i32 0, align 4
@recv_list = common dso_local global i32 0, align 4
@send_wq = common dso_local global i32 0, align 4
@recv_wq = common dso_local global i32 0, align 4
@plock_dev_misc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"dlm_plock_init: misc_register failed %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_plock_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @spin_lock_init(i32* @ops_lock)
  %3 = call i32 @INIT_LIST_HEAD(i32* @send_list)
  %4 = call i32 @INIT_LIST_HEAD(i32* @recv_list)
  %5 = call i32 @init_waitqueue_head(i32* @send_wq)
  %6 = call i32 @init_waitqueue_head(i32* @recv_wq)
  %7 = call i32 @misc_register(i32* @plock_dev_misc)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @log_print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @misc_register(i32*) #1

declare dso_local i32 @log_print(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
