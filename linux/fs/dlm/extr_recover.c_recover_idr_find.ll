; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_recover_idr_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_recover_idr_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32 }
%struct.dlm_ls = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dlm_rsb* (%struct.dlm_ls*, i64)* @recover_idr_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dlm_rsb* @recover_idr_find(%struct.dlm_ls* %0, i64 %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dlm_rsb*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %7 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %10 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %9, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  %13 = call %struct.dlm_rsb* @idr_find(i32* %10, i32 %12)
  store %struct.dlm_rsb* %13, %struct.dlm_rsb** %5, align 8
  %14 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %15 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock(i32* %15)
  %17 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  ret %struct.dlm_rsb* %17
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_rsb* @idr_find(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
