; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_ioctl.c_ceph_ioctl_lazyio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_ioctl.c_ceph_ioctl_lazyio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ceph_file_info* }
%struct.ceph_file_info = type { i32 }
%struct.inode = type { i32 }
%struct.ceph_inode_info = type { i32, i32* }

@CEPH_FILE_MODE_LAZY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ioctl_layzio: file %p marked lazy\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ioctl_layzio: file %p already lazy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*)* @ceph_ioctl_lazyio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ceph_ioctl_lazyio(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.ceph_file_info*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ceph_inode_info*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.ceph_file_info*, %struct.ceph_file_info** %7, align 8
  store %struct.ceph_file_info* %8, %struct.ceph_file_info** %3, align 8
  %9 = load %struct.file*, %struct.file** %2, align 8
  %10 = call %struct.inode* @file_inode(%struct.file* %9)
  store %struct.inode* %10, %struct.inode** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %11)
  store %struct.ceph_inode_info* %12, %struct.ceph_inode_info** %5, align 8
  %13 = load %struct.ceph_file_info*, %struct.ceph_file_info** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_file_info, %struct.ceph_file_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CEPH_FILE_MODE_LAZY, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %1
  %20 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %21 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load i32, i32* @CEPH_FILE_MODE_LAZY, align 4
  %24 = load %struct.ceph_file_info*, %struct.ceph_file_info** %3, align 8
  %25 = getelementptr inbounds %struct.ceph_file_info, %struct.ceph_file_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %29 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @CEPH_FILE_MODE_LAZY, align 4
  %32 = call i64 @ffs(i32 %31)
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %37 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.file*, %struct.file** %2, align 8
  %40 = call i32 @dout(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.file* %39)
  %41 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %42 = call i32 @ceph_check_caps(%struct.ceph_inode_info* %41, i32 0, i32* null)
  br label %46

43:                                               ; preds = %1
  %44 = load %struct.file*, %struct.file** %2, align 8
  %45 = call i32 @dout(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.file* %44)
  br label %46

46:                                               ; preds = %43, %19
  ret i64 0
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dout(i8*, %struct.file*) #1

declare dso_local i32 @ceph_check_caps(%struct.ceph_inode_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
