; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_plock.c_set_version.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_plock.c_set_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_plock_info = type { i32* }

@DLM_PLOCK_VERSION_MAJOR = common dso_local global i32 0, align 4
@DLM_PLOCK_VERSION_MINOR = common dso_local global i32 0, align 4
@DLM_PLOCK_VERSION_PATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_plock_info*)* @set_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_version(%struct.dlm_plock_info* %0) #0 {
  %2 = alloca %struct.dlm_plock_info*, align 8
  store %struct.dlm_plock_info* %0, %struct.dlm_plock_info** %2, align 8
  %3 = load i32, i32* @DLM_PLOCK_VERSION_MAJOR, align 4
  %4 = load %struct.dlm_plock_info*, %struct.dlm_plock_info** %2, align 8
  %5 = getelementptr inbounds %struct.dlm_plock_info, %struct.dlm_plock_info* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 %3, i32* %7, align 4
  %8 = load i32, i32* @DLM_PLOCK_VERSION_MINOR, align 4
  %9 = load %struct.dlm_plock_info*, %struct.dlm_plock_info** %2, align 8
  %10 = getelementptr inbounds %struct.dlm_plock_info, %struct.dlm_plock_info* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %8, i32* %12, align 4
  %13 = load i32, i32* @DLM_PLOCK_VERSION_PATCH, align 4
  %14 = load %struct.dlm_plock_info*, %struct.dlm_plock_info** %2, align 8
  %15 = getelementptr inbounds %struct.dlm_plock_info, %struct.dlm_plock_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  store i32 %13, i32* %17, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
