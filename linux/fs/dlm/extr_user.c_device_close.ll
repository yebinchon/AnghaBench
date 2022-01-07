; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_user.c_device_close.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_user.c_device_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.dlm_user_proc* }
%struct.dlm_user_proc = type { i32, i32 }
%struct.dlm_ls = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@DLM_PROC_FLAGS_CLOSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @device_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dlm_user_proc*, align 8
  %7 = alloca %struct.dlm_ls*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %9, align 8
  store %struct.dlm_user_proc* %10, %struct.dlm_user_proc** %6, align 8
  %11 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %12 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dlm_ls* @dlm_find_lockspace_local(i32 %13)
  store %struct.dlm_ls* %14, %struct.dlm_ls** %7, align 8
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %16 = icmp ne %struct.dlm_ls* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load i32, i32* @DLM_PROC_FLAGS_CLOSING, align 4
  %22 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %23 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %22, i32 0, i32 0
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  %25 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %26 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %27 = call i32 @dlm_clear_proc_locks(%struct.dlm_ls* %25, %struct.dlm_user_proc* %26)
  %28 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %29 = call i32 @kfree(%struct.dlm_user_proc* %28)
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  store %struct.dlm_user_proc* null, %struct.dlm_user_proc** %31, align 8
  %32 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %33 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %32)
  %34 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %35 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %20, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dlm_clear_proc_locks(%struct.dlm_ls*, %struct.dlm_user_proc*) #1

declare dso_local i32 @kfree(%struct.dlm_user_proc*) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
