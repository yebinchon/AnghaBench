; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_get_snapdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_get_snapdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32*, i32*, i32, i32, i32, i32 }
%struct.ceph_vino = type { i32, i32 }
%struct.ceph_inode_info = type { i64, i32 }

@CEPH_SNAPDIR = common dso_local global i32 0, align 4
@ceph_snapdir_iops = common dso_local global i32 0, align 4
@ceph_snapdir_fops = common dso_local global i32 0, align 4
@CEPH_CAP_PIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ceph_get_snapdir(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ceph_vino, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ceph_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %4, i32 0, i32 0
  %8 = load i32, i32* @CEPH_SNAPDIR, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %4, i32 0, i32 1
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call i32 @ceph_ino(%struct.inode* %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = bitcast %struct.ceph_vino* %4 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = call %struct.inode* @ceph_get_inode(i32 %14, i64 %16)
  store %struct.inode* %17, %struct.inode** %5, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %18)
  store %struct.ceph_inode_info* %19, %struct.ceph_inode_info** %6, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @S_ISDIR(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = call i64 @IS_ERR(%struct.inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  store %struct.inode* %32, %struct.inode** %2, align 8
  br label %59

33:                                               ; preds = %1
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  store i32* @ceph_snapdir_iops, i32** %50, align 8
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  store i32* @ceph_snapdir_fops, i32** %52, align 8
  %53 = load i32, i32* @CEPH_CAP_PIN, align 4
  %54 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %55 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %57 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  store %struct.inode* %58, %struct.inode** %2, align 8
  br label %59

59:                                               ; preds = %33, %31
  %60 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %60
}

declare dso_local i32 @ceph_ino(%struct.inode*) #1

declare dso_local %struct.inode* @ceph_get_inode(i32, i64) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
