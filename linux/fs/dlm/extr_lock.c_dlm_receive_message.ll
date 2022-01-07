; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_receive_message.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_receive_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_message = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"receive %d from %d ignore old gen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_message*, i32)* @dlm_receive_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_receive_message(%struct.dlm_ls* %0, %struct.dlm_message* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_message*, align 8
  %6 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %8 = call i64 @dlm_locking_stopped(%struct.dlm_ls* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %17 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %18 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @log_limit(%struct.dlm_ls* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  br label %33

22:                                               ; preds = %10
  %23 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %26 = call i32 @dlm_add_requestqueue(%struct.dlm_ls* %23, i32 %24, %struct.dlm_message* %25)
  br label %33

27:                                               ; preds = %3
  %28 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %29 = call i32 @dlm_wait_requestqueue(%struct.dlm_ls* %28)
  %30 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %31 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %32 = call i32 @_receive_message(%struct.dlm_ls* %30, %struct.dlm_message* %31, i32 0)
  br label %33

33:                                               ; preds = %15, %27, %22
  ret void
}

declare dso_local i64 @dlm_locking_stopped(%struct.dlm_ls*) #1

declare dso_local i32 @log_limit(%struct.dlm_ls*, i8*, i32, i32) #1

declare dso_local i32 @dlm_add_requestqueue(%struct.dlm_ls*, i32, %struct.dlm_message*) #1

declare dso_local i32 @dlm_wait_requestqueue(%struct.dlm_ls*) #1

declare dso_local i32 @_receive_message(%struct.dlm_ls*, %struct.dlm_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
