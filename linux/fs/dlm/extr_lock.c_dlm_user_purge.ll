; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_user_purge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_user_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dlm_ls = type { i32 }
%struct.dlm_user_proc = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_user_purge(%struct.dlm_ls* %0, %struct.dlm_user_proc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca %struct.dlm_user_proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store %struct.dlm_user_proc* %1, %struct.dlm_user_proc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 (...) @dlm_our_nodeid()
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @send_purge(%struct.dlm_ls* %17, i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  br label %41

21:                                               ; preds = %12, %4
  %22 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %23 = call i32 @dlm_lock_recovery(%struct.dlm_ls* %22)
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %31 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %32 = call i32 @purge_proc_locks(%struct.dlm_ls* %30, %struct.dlm_user_proc* %31)
  br label %38

33:                                               ; preds = %21
  %34 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @do_purge(%struct.dlm_ls* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %40 = call i32 @dlm_unlock_recovery(%struct.dlm_ls* %39)
  br label %41

41:                                               ; preds = %38, %16
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @send_purge(%struct.dlm_ls*, i32, i32) #1

declare dso_local i32 @dlm_lock_recovery(%struct.dlm_ls*) #1

declare dso_local i32 @purge_proc_locks(%struct.dlm_ls*, %struct.dlm_user_proc*) #1

declare dso_local i32 @do_purge(%struct.dlm_ls*, i32, i32) #1

declare dso_local i32 @dlm_unlock_recovery(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
