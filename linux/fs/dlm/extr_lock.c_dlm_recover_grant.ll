; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_recover_grant.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_recover_grant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_rsb = type { i32 }

@RSB_RECOVER_GRANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"dlm_recover_grant %u locks on %u resources\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_recover_grant(%struct.dlm_ls* %0) #0 {
  %2 = alloca %struct.dlm_ls*, align 8
  %3 = alloca %struct.dlm_rsb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %1, %22, %25
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.dlm_rsb* @find_grant_rsb(%struct.dlm_ls* %9, i32 %10)
  store %struct.dlm_rsb* %11, %struct.dlm_rsb** %3, align 8
  %12 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %13 = icmp ne %struct.dlm_rsb* %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %17 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %45

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %28 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %29 = call i32 @lock_rsb(%struct.dlm_rsb* %28)
  %30 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %31 = call i32 @grant_pending_locks(%struct.dlm_rsb* %30, i32* %5)
  %32 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %33 = load i32, i32* @RSB_RECOVER_GRANT, align 4
  %34 = call i32 @rsb_clear_flag(%struct.dlm_rsb* %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %39 = call i32 @confirm_master(%struct.dlm_rsb* %38, i32 0)
  %40 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %41 = call i32 @unlock_rsb(%struct.dlm_rsb* %40)
  %42 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %43 = call i32 @put_rsb(%struct.dlm_rsb* %42)
  %44 = call i32 (...) @cond_resched()
  br label %8

45:                                               ; preds = %21
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @log_rinfo(%struct.dlm_ls* %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %45
  ret void
}

declare dso_local %struct.dlm_rsb* @find_grant_rsb(%struct.dlm_ls*, i32) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @grant_pending_locks(%struct.dlm_rsb*, i32*) #1

declare dso_local i32 @rsb_clear_flag(%struct.dlm_rsb*, i32) #1

declare dso_local i32 @confirm_master(%struct.dlm_rsb*, i32) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @log_rinfo(%struct.dlm_ls*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
