; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_xattr.c_ceph_match_vxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_xattr.c_ceph_match_vxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_vxattr = type { i64 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_vxattr* (%struct.inode*, i8*)* @ceph_match_vxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_vxattr* @ceph_match_vxattr(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca %struct.ceph_vxattr*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ceph_vxattr*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.ceph_vxattr* @ceph_inode_vxattrs(%struct.inode* %7)
  store %struct.ceph_vxattr* %8, %struct.ceph_vxattr** %6, align 8
  %9 = load %struct.ceph_vxattr*, %struct.ceph_vxattr** %6, align 8
  %10 = icmp ne %struct.ceph_vxattr* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %26, %11
  %13 = load %struct.ceph_vxattr*, %struct.ceph_vxattr** %6, align 8
  %14 = getelementptr inbounds %struct.ceph_vxattr, %struct.ceph_vxattr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.ceph_vxattr*, %struct.ceph_vxattr** %6, align 8
  %19 = getelementptr inbounds %struct.ceph_vxattr, %struct.ceph_vxattr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strcmp(i64 %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load %struct.ceph_vxattr*, %struct.ceph_vxattr** %6, align 8
  store %struct.ceph_vxattr* %25, %struct.ceph_vxattr** %3, align 8
  br label %31

26:                                               ; preds = %17
  %27 = load %struct.ceph_vxattr*, %struct.ceph_vxattr** %6, align 8
  %28 = getelementptr inbounds %struct.ceph_vxattr, %struct.ceph_vxattr* %27, i32 1
  store %struct.ceph_vxattr* %28, %struct.ceph_vxattr** %6, align 8
  br label %12

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %29, %2
  store %struct.ceph_vxattr* null, %struct.ceph_vxattr** %3, align 8
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.ceph_vxattr*, %struct.ceph_vxattr** %3, align 8
  ret %struct.ceph_vxattr* %32
}

declare dso_local %struct.ceph_vxattr* @ceph_inode_vxattrs(%struct.inode*) #1

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
