; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_recover_idr_del.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_recover_idr_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i64, %struct.dlm_ls* }
%struct.dlm_ls = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_rsb*)* @recover_idr_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recover_idr_del(%struct.dlm_rsb* %0) #0 {
  %2 = alloca %struct.dlm_rsb*, align 8
  %3 = alloca %struct.dlm_ls*, align 8
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %2, align 8
  %4 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %5 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %4, i32 0, i32 1
  %6 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  store %struct.dlm_ls* %6, %struct.dlm_ls** %3, align 8
  %7 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %8 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %11 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %10, i32 0, i32 2
  %12 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %13 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @idr_remove(i32* %11, i64 %14)
  %16 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %17 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %19 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %23 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %26 = call i32 @dlm_put_rsb(%struct.dlm_rsb* %25)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_put_rsb(%struct.dlm_rsb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
