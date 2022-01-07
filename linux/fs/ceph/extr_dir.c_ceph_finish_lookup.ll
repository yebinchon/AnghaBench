; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_finish_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_finish_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_request = type { %struct.dentry*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ENOENT and no trace, dentry %p inode %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @ceph_finish_lookup(%struct.ceph_mds_request* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.ceph_mds_request*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store %struct.ceph_mds_request* %0, %struct.ceph_mds_request** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ENOENT, align 4
  %9 = sub nsw i32 0, %8
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %3
  store i32 0, i32* %6, align 4
  %12 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %13 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %11
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call i32 @d_inode(%struct.dentry* %21)
  %23 = call i32 @dout(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.dentry* %20, i32 %22)
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = call i64 @d_really_is_positive(%struct.dentry* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = call i32 @d_drop(%struct.dentry* %28)
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %35

32:                                               ; preds = %19
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = call i32 @d_add(%struct.dentry* %33, i32* null)
  br label %35

35:                                               ; preds = %32, %27
  br label %36

36:                                               ; preds = %35, %11
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.dentry* @ERR_PTR(i32 %41)
  store %struct.dentry* %42, %struct.dentry** %5, align 8
  br label %56

43:                                               ; preds = %37
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  %45 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %46 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %45, i32 0, i32 0
  %47 = load %struct.dentry*, %struct.dentry** %46, align 8
  %48 = icmp ne %struct.dentry* %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %51 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %50, i32 0, i32 0
  %52 = load %struct.dentry*, %struct.dentry** %51, align 8
  %53 = call %struct.dentry* @dget(%struct.dentry* %52)
  store %struct.dentry* %53, %struct.dentry** %5, align 8
  br label %55

54:                                               ; preds = %43
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %55

55:                                               ; preds = %54, %49
  br label %56

56:                                               ; preds = %55, %40
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %57
}

declare dso_local i32 @dout(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, i32*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
