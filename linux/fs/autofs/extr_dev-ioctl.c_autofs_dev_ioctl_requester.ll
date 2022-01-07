; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_autofs_dev_ioctl_requester.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_autofs_dev_ioctl_requester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.autofs_sb_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.autofs_dev_ioctl = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.autofs_info = type { i32, i32 }
%struct.path = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@test_by_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.autofs_sb_info*, %struct.autofs_dev_ioctl*)* @autofs_dev_ioctl_requester to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_dev_ioctl_requester(%struct.file* %0, %struct.autofs_sb_info* %1, %struct.autofs_dev_ioctl* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.autofs_sb_info*, align 8
  %6 = alloca %struct.autofs_dev_ioctl*, align 8
  %7 = alloca %struct.autofs_info*, align 8
  %8 = alloca %struct.path, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.autofs_sb_info* %1, %struct.autofs_sb_info** %5, align 8
  store %struct.autofs_dev_ioctl* %2, %struct.autofs_dev_ioctl** %6, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %14 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %19 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 -1, i32* %20, align 4
  %21 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %22 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 4
  %24 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %25 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @test_by_dev, align 4
  %28 = call i32 @find_autofs_mount(i32 %26, %struct.path* %8, i32 %27, i32* %9)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %64

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.autofs_info* @autofs_dentry_ino(i32 %34)
  store %struct.autofs_info* %35, %struct.autofs_info** %7, align 8
  %36 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %37 = icmp ne %struct.autofs_info* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  %39 = call i32 @autofs_expire_wait(%struct.path* %8, i32 0)
  %40 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %41 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  %43 = call i32 (...) @current_user_ns()
  %44 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %45 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @from_kuid_munged(i32 %43, i32 %46)
  %48 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %49 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = call i32 (...) @current_user_ns()
  %52 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %53 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @from_kgid_munged(i32 %51, i32 %54)
  %56 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %57 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %60 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  br label %62

62:                                               ; preds = %38, %32
  %63 = call i32 @path_put(%struct.path* %8)
  br label %64

64:                                               ; preds = %62, %31
  %65 = load i32, i32* %10, align 4
  ret i32 %65
}

declare dso_local i32 @find_autofs_mount(i32, %struct.path*, i32, i32*) #1

declare dso_local %struct.autofs_info* @autofs_dentry_ino(i32) #1

declare dso_local i32 @autofs_expire_wait(%struct.path*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @from_kuid_munged(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @from_kgid_munged(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
