; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_readdir_prepopulate_inodes_only.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_readdir_prepopulate_inodes_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_request = type { i32, i32, %struct.TYPE_5__*, %struct.ceph_mds_reply_info_parsed }
%struct.TYPE_5__ = type { i32 }
%struct.ceph_mds_reply_info_parsed = type { i32, %struct.ceph_mds_reply_dir_entry* }
%struct.ceph_mds_reply_dir_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ceph_mds_session = type { i32 }
%struct.ceph_vino = type { i8*, i8* }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"new_inode badness got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"fill_inode badness on %p got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_mds_request*, %struct.ceph_mds_session*)* @readdir_prepopulate_inodes_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readdir_prepopulate_inodes_only(%struct.ceph_mds_request* %0, %struct.ceph_mds_session* %1) #0 {
  %3 = alloca %struct.ceph_mds_request*, align 8
  %4 = alloca %struct.ceph_mds_session*, align 8
  %5 = alloca %struct.ceph_mds_reply_info_parsed*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_mds_reply_dir_entry*, align 8
  %9 = alloca %struct.ceph_vino, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.ceph_mds_request* %0, %struct.ceph_mds_request** %3, align 8
  store %struct.ceph_mds_session* %1, %struct.ceph_mds_session** %4, align 8
  %12 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %3, align 8
  %13 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %12, i32 0, i32 3
  store %struct.ceph_mds_reply_info_parsed* %13, %struct.ceph_mds_reply_info_parsed** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %83, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %5, align 8
  %17 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %86

20:                                               ; preds = %14
  %21 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %5, align 8
  %22 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %21, i32 0, i32 1
  %23 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %23, i64 %25
  store %struct.ceph_mds_reply_dir_entry* %26, %struct.ceph_mds_reply_dir_entry** %8, align 8
  %27 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %8, align 8
  %28 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @le64_to_cpu(i32 %32)
  %34 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %9, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %8, align 8
  %36 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @le64_to_cpu(i32 %40)
  %42 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %9, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %3, align 8
  %44 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = bitcast %struct.ceph_vino* %9 to { i8*, i8* }*
  %49 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %48, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call %struct.inode* @ceph_get_inode(i32 %47, i8* %50, i8* %52)
  store %struct.inode* %53, %struct.inode** %10, align 8
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = call i64 @IS_ERR(%struct.inode* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %20
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = call i32 @PTR_ERR(%struct.inode* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dout(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %83

62:                                               ; preds = %20
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %8, align 8
  %65 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %64, i32 0, i32 0
  %66 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %67 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %3, align 8
  %68 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %3, align 8
  %71 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %70, i32 0, i32 0
  %72 = call i32 @fill_inode(%struct.inode* %63, i32* null, %struct.TYPE_6__* %65, i32* null, %struct.ceph_mds_session* %66, i32 %69, i32 -1, i32* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %62
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %76, i32 %77)
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %75, %62
  %81 = load %struct.inode*, %struct.inode** %10, align 8
  %82 = call i32 @ceph_async_iput(%struct.inode* %81)
  br label %83

83:                                               ; preds = %80, %57
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %14

86:                                               ; preds = %14
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local %struct.inode* @ceph_get_inode(i32, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @dout(i8*, i32) #1

declare dso_local i32 @fill_inode(%struct.inode*, i32*, %struct.TYPE_6__*, i32*, %struct.ceph_mds_session*, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, %struct.inode*, i32) #1

declare dso_local i32 @ceph_async_iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
