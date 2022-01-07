; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ceph_file_info* }
%struct.ceph_file_info = type { i32, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ceph_inode_info = type { i32 }
%struct.ceph_dir_file_info = type { i32, i32, i32, i32, i64, %struct.TYPE_2__ }

@.str = private unnamed_addr constant [30 x i8] c"release inode %p dir file %p\0A\00", align 1
@ceph_dir_file_cachep = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"release inode %p regular file %p\0A\00", align 1
@ceph_file_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ceph_inode_info*, align 8
  %6 = alloca %struct.ceph_dir_file_info*, align 8
  %7 = alloca %struct.ceph_file_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %8)
  store %struct.ceph_inode_info* %9, %struct.ceph_inode_info** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @S_ISDIR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.ceph_file_info*, %struct.ceph_file_info** %17, align 8
  %19 = bitcast %struct.ceph_file_info* %18 to %struct.ceph_dir_file_info*
  store %struct.ceph_dir_file_info* %19, %struct.ceph_dir_file_info** %6, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = call i32 @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.inode* %20, %struct.file* %21)
  %23 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %24 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i32 @list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %32 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %33 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ceph_put_fmode(%struct.ceph_inode_info* %31, i32 %35)
  %37 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %38 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %15
  %42 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %43 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ceph_mdsc_put_request(i64 %44)
  br label %46

46:                                               ; preds = %41, %15
  %47 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %48 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kfree(i32 %49)
  %51 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %52 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @kfree(i32 %53)
  %55 = load i32, i32* @ceph_dir_file_cachep, align 4
  %56 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %57 = bitcast %struct.ceph_dir_file_info* %56 to %struct.ceph_file_info*
  %58 = call i32 @kmem_cache_free(i32 %55, %struct.ceph_file_info* %57)
  br label %81

59:                                               ; preds = %2
  %60 = load %struct.file*, %struct.file** %4, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  %62 = load %struct.ceph_file_info*, %struct.ceph_file_info** %61, align 8
  store %struct.ceph_file_info* %62, %struct.ceph_file_info** %7, align 8
  %63 = load %struct.inode*, %struct.inode** %3, align 8
  %64 = load %struct.file*, %struct.file** %4, align 8
  %65 = call i32 @dout(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %63, %struct.file* %64)
  %66 = load %struct.ceph_file_info*, %struct.ceph_file_info** %7, align 8
  %67 = getelementptr inbounds %struct.ceph_file_info, %struct.ceph_file_info* %66, i32 0, i32 1
  %68 = call i32 @list_empty(i32* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @WARN_ON(i32 %71)
  %73 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %74 = load %struct.ceph_file_info*, %struct.ceph_file_info** %7, align 8
  %75 = getelementptr inbounds %struct.ceph_file_info, %struct.ceph_file_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ceph_put_fmode(%struct.ceph_inode_info* %73, i32 %76)
  %78 = load i32, i32* @ceph_file_cachep, align 4
  %79 = load %struct.ceph_file_info*, %struct.ceph_file_info** %7, align 8
  %80 = call i32 @kmem_cache_free(i32 %78, %struct.ceph_file_info* %79)
  br label %81

81:                                               ; preds = %59, %46
  %82 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %83 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %82, i32 0, i32 0
  %84 = call i32 @wake_up_all(i32* %83)
  ret i32 0
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @dout(i8*, %struct.inode*, %struct.file*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ceph_put_fmode(%struct.ceph_inode_info*, i32) #1

declare dso_local i32 @ceph_mdsc_put_request(i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ceph_file_info*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
