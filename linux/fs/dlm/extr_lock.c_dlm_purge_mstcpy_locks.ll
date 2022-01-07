; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_purge_mstcpy_locks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_purge_mstcpy_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32, i32, i32, %struct.dlm_ls* }
%struct.dlm_ls = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_purge_mstcpy_locks(%struct.dlm_rsb* %0) #0 {
  %2 = alloca %struct.dlm_rsb*, align 8
  %3 = alloca %struct.dlm_ls*, align 8
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %2, align 8
  %4 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %5 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %4, i32 0, i32 3
  %6 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  store %struct.dlm_ls* %6, %struct.dlm_ls** %3, align 8
  %7 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %8 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %9 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %10 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %9, i32 0, i32 2
  %11 = call i32 @purge_mstcpy_list(%struct.dlm_ls* %7, %struct.dlm_rsb* %8, i32* %10)
  %12 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %13 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %14 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %15 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %14, i32 0, i32 1
  %16 = call i32 @purge_mstcpy_list(%struct.dlm_ls* %12, %struct.dlm_rsb* %13, i32* %15)
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %18 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %19 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %20 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %19, i32 0, i32 0
  %21 = call i32 @purge_mstcpy_list(%struct.dlm_ls* %17, %struct.dlm_rsb* %18, i32* %20)
  ret void
}

declare dso_local i32 @purge_mstcpy_list(%struct.dlm_ls*, %struct.dlm_rsb*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
