; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_aidaw_fetch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_aidaw_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aidaw = type { i32 }
%struct.scm_request = type { %struct.aidaw* }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aidaw* @scm_aidaw_fetch(%struct.scm_request* %0, i32 %1) #0 {
  %3 = alloca %struct.aidaw*, align 8
  %4 = alloca %struct.scm_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aidaw*, align 8
  store %struct.scm_request* %0, %struct.scm_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.scm_request*, %struct.scm_request** %4, align 8
  %8 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %7, i32 0, i32 0
  %9 = load %struct.aidaw*, %struct.aidaw** %8, align 8
  %10 = call i32 @scm_aidaw_bytes(%struct.aidaw* %9)
  %11 = load i32, i32* %5, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.scm_request*, %struct.scm_request** %4, align 8
  %15 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %14, i32 0, i32 0
  %16 = load %struct.aidaw*, %struct.aidaw** %15, align 8
  store %struct.aidaw* %16, %struct.aidaw** %3, align 8
  br label %27

17:                                               ; preds = %2
  %18 = call %struct.aidaw* (...) @scm_aidaw_alloc()
  store %struct.aidaw* %18, %struct.aidaw** %6, align 8
  %19 = load %struct.aidaw*, %struct.aidaw** %6, align 8
  %20 = icmp ne %struct.aidaw* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.aidaw*, %struct.aidaw** %6, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = call i32 @memset(%struct.aidaw* %22, i32 0, i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.aidaw*, %struct.aidaw** %6, align 8
  store %struct.aidaw* %26, %struct.aidaw** %3, align 8
  br label %27

27:                                               ; preds = %25, %13
  %28 = load %struct.aidaw*, %struct.aidaw** %3, align 8
  ret %struct.aidaw* %28
}

declare dso_local i32 @scm_aidaw_bytes(%struct.aidaw*) #1

declare dso_local %struct.aidaw* @scm_aidaw_alloc(...) #1

declare dso_local i32 @memset(%struct.aidaw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
