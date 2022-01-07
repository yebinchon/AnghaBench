; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_recover_idr_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_recover_idr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32, %struct.dlm_ls* }
%struct.dlm_ls = type { i32, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*)* @recover_idr_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_idr_add(%struct.dlm_rsb* %0) #0 {
  %2 = alloca %struct.dlm_rsb*, align 8
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %2, align 8
  %5 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %6 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %5, i32 0, i32 1
  %7 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  store %struct.dlm_ls* %7, %struct.dlm_ls** %3, align 8
  %8 = load i32, i32* @GFP_NOFS, align 4
  %9 = call i32 @idr_preload(i32 %8)
  %10 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %11 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %14 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %4, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %20 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %19, i32 0, i32 2
  %21 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %22 = load i32, i32* @GFP_NOWAIT, align 4
  %23 = call i32 @idr_alloc(i32* %20, %struct.dlm_rsb* %21, i32 1, i32 0, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %37

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %30 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %32 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %36 = call i32 @dlm_hold_rsb(%struct.dlm_rsb* %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %27, %26, %17
  %38 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %39 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = call i32 (...) @idr_preload_end()
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.dlm_rsb*, i32, i32, i32) #1

declare dso_local i32 @dlm_hold_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
