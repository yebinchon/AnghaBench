; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_autofs_dev_ioctl_open_mountpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_autofs_dev_ioctl_open_mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.path = type { i32 }

@O_CLOEXEC = common dso_local global i32 0, align 4
@test_by_dev = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @autofs_dev_ioctl_open_mountpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_dev_ioctl_open_mountpoint(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.path, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @O_CLOEXEC, align 4
  %11 = call i32 @get_unused_fd_flags(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sge i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @test_by_dev, align 4
  %20 = call i32 @find_autofs_mount(i8* %18, %struct.path* %9, i32 %19, i32* %5)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %41

24:                                               ; preds = %17
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = call i32 (...) @current_cred()
  %27 = call %struct.file* @dentry_open(%struct.path* %9, i32 %25, i32 %26)
  store %struct.file* %27, %struct.file** %8, align 8
  %28 = call i32 @path_put(%struct.path* %9)
  %29 = load %struct.file*, %struct.file** %8, align 8
  %30 = call i64 @IS_ERR(%struct.file* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.file*, %struct.file** %8, align 8
  %34 = call i32 @PTR_ERR(%struct.file* %33)
  store i32 %34, i32* %6, align 4
  br label %41

35:                                               ; preds = %24
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.file*, %struct.file** %8, align 8
  %38 = call i32 @fd_install(i32 %36, %struct.file* %37)
  br label %39

39:                                               ; preds = %35, %2
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %32, %23
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @put_unused_fd(i32 %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %39
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @find_autofs_mount(i8*, %struct.path*, i32, i32*) #1

declare dso_local %struct.file* @dentry_open(%struct.path*, i32, i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

declare dso_local i32 @put_unused_fd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
