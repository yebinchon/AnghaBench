; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_wait_pending_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_wait_pending_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32, i32, %struct.dlm_ls* }
%struct.dlm_ls = type { i32, i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"delay lookup for remove dir %d %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_rsb*)* @wait_pending_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_pending_remove(%struct.dlm_rsb* %0) #0 {
  %2 = alloca %struct.dlm_rsb*, align 8
  %3 = alloca %struct.dlm_ls*, align 8
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %2, align 8
  %4 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %5 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %4, i32 0, i32 2
  %6 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  store %struct.dlm_ls* %6, %struct.dlm_ls** %3, align 8
  br label %7

7:                                                ; preds = %25, %1
  %8 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %9 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %12 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %7
  %16 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %21 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @rsb_cmp(%struct.dlm_rsb* %16, i32 %19, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %15
  %26 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %27 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %28 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %31 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @log_debug(%struct.dlm_ls* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %35 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = call i32 @msleep(i32 1)
  br label %7

38:                                               ; preds = %15, %7
  %39 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %40 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rsb_cmp(%struct.dlm_rsb*, i32, i64) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
