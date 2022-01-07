; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_user.c_device_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_user.c_device_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.dlm_user_proc* }
%struct.dlm_user_proc = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dlm_ls = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @device_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dlm_user_proc*, align 8
  %7 = alloca %struct.dlm_ls*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  %10 = call %struct.dlm_ls* @dlm_find_lockspace_device(i32 %9)
  store %struct.dlm_ls* %10, %struct.dlm_ls** %7, align 8
  %11 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %12 = icmp ne %struct.dlm_ls* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_NOFS, align 4
  %18 = call %struct.dlm_user_proc* @kzalloc(i32 28, i32 %17)
  store %struct.dlm_user_proc* %18, %struct.dlm_user_proc** %6, align 8
  %19 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %20 = icmp ne %struct.dlm_user_proc* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %23 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %16
  %27 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %28 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %31 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %33 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %32, i32 0, i32 5
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %36 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %35, i32 0, i32 4
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %39 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %38, i32 0, i32 3
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %42 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %41, i32 0, i32 2
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %45 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %44, i32 0, i32 1
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %48 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %47, i32 0, i32 0
  %49 = call i32 @init_waitqueue_head(i32* %48)
  %50 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  store %struct.dlm_user_proc* %50, %struct.dlm_user_proc** %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %26, %21, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_device(i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.dlm_user_proc* @kzalloc(i32, i32) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
