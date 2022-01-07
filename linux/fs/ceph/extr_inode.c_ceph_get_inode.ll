; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64 }
%struct.super_block = type { i32 }
%struct.ceph_vino = type { i32, i32 }

@ceph_ino_compare = common dso_local global i32 0, align 4
@ceph_set_ino_cb = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"get_inode created new inode %p %llx.%llx ino %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"get_inode on %lu=%llx.%llx got %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ceph_get_inode(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ceph_vino, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %struct.ceph_vino* %4 to i64*
  store i64 %1, i64* %8, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  %9 = bitcast %struct.ceph_vino* %4 to i64*
  %10 = load i64, i64* %9, align 4
  %11 = call i32 @ceph_vino_to_ino(i64 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @ceph_ino_compare, align 4
  %15 = load i32, i32* @ceph_set_ino_cb, align 4
  %16 = call %struct.inode* @iget5_locked(%struct.super_block* %12, i32 %13, i32 %14, i32 %15, %struct.ceph_vino* %4)
  store %struct.inode* %16, %struct.inode** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.inode* @ERR_PTR(i32 %21)
  store %struct.inode* %22, %struct.inode** %3, align 8
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @I_NEW, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @ceph_vinop(%struct.inode* %32)
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 (i8*, %struct.inode*, i32, i32, ...) @dout(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.inode* %31, i32 %33, i32 %37)
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i32 @unlock_new_inode(%struct.inode* %39)
  br label %41

41:                                               ; preds = %30, %23
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.inode*
  %46 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %4, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = call i32 (i8*, %struct.inode*, i32, i32, ...) @dout(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %45, i32 %47, i32 %49, %struct.inode* %50)
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %52, %struct.inode** %3, align 8
  br label %53

53:                                               ; preds = %41, %19
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %54
}

declare dso_local i32 @ceph_vino_to_ino(i64) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i32, i32, i32, %struct.ceph_vino*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @dout(i8*, %struct.inode*, i32, i32, ...) #1

declare dso_local i32 @ceph_vinop(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
