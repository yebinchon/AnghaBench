; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_readpages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_readpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ceph_file_info* }
%struct.ceph_file_info = type { i32 }
%struct.address_space = type { i32 }
%struct.list_head = type { i32 }
%struct.inode = type { i32 }
%struct.ceph_fs_client = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ceph_rw_context = type { i32 }
%struct.TYPE_4__ = type { i64 }

@CEPH_INLINE_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"readpages %p file %p ctx %p nr_pages %d max %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"readpages %p file %p ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* @ceph_readpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_readpages(%struct.file* %0, %struct.address_space* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ceph_fs_client*, align 8
  %12 = alloca %struct.ceph_file_info*, align 8
  %13 = alloca %struct.ceph_rw_context*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.address_space* %1, %struct.address_space** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = call %struct.inode* @file_inode(%struct.file* %16)
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %18)
  store %struct.ceph_fs_client* %19, %struct.ceph_fs_client** %11, align 8
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load %struct.ceph_file_info*, %struct.ceph_file_info** %21, align 8
  store %struct.ceph_file_info* %22, %struct.ceph_file_info** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = call %struct.TYPE_4__* @ceph_inode(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CEPH_INLINE_NONE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %84

32:                                               ; preds = %4
  %33 = load %struct.address_space*, %struct.address_space** %7, align 8
  %34 = getelementptr inbounds %struct.address_space, %struct.address_space* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.address_space*, %struct.address_space** %7, align 8
  %37 = load %struct.list_head*, %struct.list_head** %8, align 8
  %38 = call i32 @ceph_readpages_from_fscache(i32 %35, %struct.address_space* %36, %struct.list_head* %37, i32* %9)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %75

42:                                               ; preds = %32
  %43 = load %struct.ceph_file_info*, %struct.ceph_file_info** %12, align 8
  %44 = call %struct.ceph_rw_context* @ceph_find_rw_context(%struct.ceph_file_info* %43)
  store %struct.ceph_rw_context* %44, %struct.ceph_rw_context** %13, align 8
  %45 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %11, align 8
  %46 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %15, align 4
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = load %struct.file*, %struct.file** %6, align 8
  %54 = load %struct.ceph_rw_context*, %struct.ceph_rw_context** %13, align 8
  %55 = ptrtoint %struct.ceph_rw_context* %54 to i32
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 (i8*, %struct.inode*, %struct.file*, i32, ...) @dout(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.inode* %52, %struct.file* %53, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %73, %42
  %60 = load %struct.list_head*, %struct.list_head** %8, align 8
  %61 = call i32 @list_empty(%struct.list_head* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = load %struct.ceph_rw_context*, %struct.ceph_rw_context** %13, align 8
  %67 = load %struct.list_head*, %struct.list_head** %8, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @start_read(%struct.inode* %65, %struct.ceph_rw_context* %66, %struct.list_head* %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %75

73:                                               ; preds = %64
  br label %59

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %72, %41
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = load %struct.list_head*, %struct.list_head** %8, align 8
  %78 = call i32 @ceph_fscache_readpages_cancel(%struct.inode* %76, %struct.list_head* %77)
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = load %struct.file*, %struct.file** %6, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 (i8*, %struct.inode*, %struct.file*, i32, ...) @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %79, %struct.file* %80, i32 %81)
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %75, %29
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @ceph_readpages_from_fscache(i32, %struct.address_space*, %struct.list_head*, i32*) #1

declare dso_local %struct.ceph_rw_context* @ceph_find_rw_context(%struct.ceph_file_info*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, %struct.file*, i32, ...) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @start_read(%struct.inode*, %struct.ceph_rw_context*, %struct.list_head*, i32) #1

declare dso_local i32 @ceph_fscache_readpages_cancel(%struct.inode*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
