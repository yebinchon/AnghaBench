; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_requestqueue.c_purge_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_requestqueue.c_purge_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_message = type { i64 }

@DLM_MSG_REMOVE = common dso_local global i64 0, align 8
@DLM_MSG_LOOKUP = common dso_local global i64 0, align 8
@DLM_MSG_LOOKUP_REPLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_message*, i32)* @purge_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @purge_request(%struct.dlm_ls* %0, %struct.dlm_message* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca %struct.dlm_message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %10 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %13 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @dlm_is_removed(%struct.dlm_ls* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %42

23:                                               ; preds = %17
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @DLM_MSG_REMOVE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @DLM_MSG_LOOKUP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @DLM_MSG_LOOKUP_REPLY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27, %23
  store i32 1, i32* %4, align 4
  br label %42

36:                                               ; preds = %31
  %37 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %38 = call i32 @dlm_no_directory(%struct.dlm_ls* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %42

41:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %40, %35, %22, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @dlm_is_removed(%struct.dlm_ls*, i32) #1

declare dso_local i32 @dlm_no_directory(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
