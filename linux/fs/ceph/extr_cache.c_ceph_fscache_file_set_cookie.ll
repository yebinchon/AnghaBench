; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_cache.c_ceph_fscache_file_set_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_cache.c_ceph_fscache_file_set_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.ceph_inode_info = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"fscache_file_set_cookie %p %p disabling cache\0A\00", align 1
@ceph_fscache_can_enable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"fscache_file_set_cookie %p %p enabling cache\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_fscache_file_set_cookie(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ceph_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %6)
  store %struct.ceph_inode_info* %7, %struct.ceph_inode_info** %5, align 8
  %8 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %9 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @fscache_cookie_valid(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %54

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call i64 @inode_is_open_for_write(%struct.inode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = call i32 @dout(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.inode* %19, %struct.file* %20)
  %22 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %23 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %26 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %25, i32 0, i32 1
  %27 = call i32 @fscache_disable_cookie(i32 %24, i32* %26, i32 0)
  %28 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %29 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call i32 @fscache_uncache_all_inode_pages(i32 %30, %struct.inode* %31)
  br label %54

33:                                               ; preds = %14
  %34 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %35 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %38 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %37, i32 0, i32 1
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = call i32 @i_size_read(%struct.inode* %39)
  %41 = load i32, i32* @ceph_fscache_can_enable, align 4
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = call i32 @fscache_enable_cookie(i32 %36, i32* %38, i32 %40, i32 %41, %struct.inode* %42)
  %44 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %45 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @fscache_cookie_enabled(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %33
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = load %struct.file*, %struct.file** %4, align 8
  %52 = call i32 @dout(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %50, %struct.file* %51)
  br label %53

53:                                               ; preds = %49, %33
  br label %54

54:                                               ; preds = %13, %53, %18
  ret void
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @fscache_cookie_valid(i32) #1

declare dso_local i64 @inode_is_open_for_write(%struct.inode*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, %struct.file*) #1

declare dso_local i32 @fscache_disable_cookie(i32, i32*, i32) #1

declare dso_local i32 @fscache_uncache_all_inode_pages(i32, %struct.inode*) #1

declare dso_local i32 @fscache_enable_cookie(i32, i32*, i32, i32, %struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @fscache_cookie_enabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
