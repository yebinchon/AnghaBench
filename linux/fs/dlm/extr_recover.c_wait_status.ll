; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_wait_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_wait_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, i32)* @wait_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_status(%struct.dlm_ls* %0, i32 %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = shl i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %10 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 (...) @dlm_our_nodeid()
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @wait_status_all(%struct.dlm_ls* %15, i32 %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dlm_set_recover_status(%struct.dlm_ls* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %14
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @wait_status_low(%struct.dlm_ls* %26, i32 %27, i32 0)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %24
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i64 @dlm_our_nodeid(...) #1

declare dso_local i32 @wait_status_all(%struct.dlm_ls*, i32, i32) #1

declare dso_local i32 @dlm_set_recover_status(%struct.dlm_ls*, i32) #1

declare dso_local i32 @wait_status_low(%struct.dlm_ls*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
