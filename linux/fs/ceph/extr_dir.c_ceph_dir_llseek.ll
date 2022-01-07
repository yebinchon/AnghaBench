; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_dir_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_dir_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i64, %struct.TYPE_3__*, %struct.ceph_dir_file_info* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ceph_dir_file_info = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"dir_llseek dropping %p content\0A\00", align 1
@CEPH_F_ATEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i32)* @ceph_dir_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ceph_dir_llseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ceph_dir_file_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 3
  %12 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %11, align 8
  store %struct.ceph_dir_file_info* %12, %struct.ceph_dir_file_info** %7, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = call i32 @inode_lock(%struct.inode* %18)
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %9, align 8
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %33 [
    i32 130, label %23
    i32 128, label %29
    i32 129, label %30
  ]

23:                                               ; preds = %3
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %3, %23
  br label %34

30:                                               ; preds = %3
  %31 = load i64, i64* @EOPNOTSUPP, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %3, %30
  br label %85

34:                                               ; preds = %29
  %35 = load i64, i64* %5, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %84

37:                                               ; preds = %34
  %38 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %7, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @need_reset_readdir(%struct.ceph_dir_file_info* %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = call i32 @dout(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.file* %43)
  %45 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %7, align 8
  %46 = call i32 @reset_readdir(%struct.ceph_dir_file_info* %45)
  br label %63

47:                                               ; preds = %37
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @is_hash_order(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.file*, %struct.file** %4, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %7, align 8
  %59 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %7, align 8
  %61 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 8
  br label %62

62:                                               ; preds = %57, %51, %47
  br label %63

63:                                               ; preds = %62, %42
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.file*, %struct.file** %4, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.file*, %struct.file** %4, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.file*, %struct.file** %4, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @CEPH_F_ATEND, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %7, align 8
  %78 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %76
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %69, %63
  %83 = load i64, i64* %5, align 8
  store i64 %83, i64* %9, align 8
  br label %84

84:                                               ; preds = %82, %34
  br label %85

85:                                               ; preds = %84, %33
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = call i32 @inode_unlock(%struct.inode* %86)
  %88 = load i64, i64* %9, align 8
  ret i64 %88
}

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @need_reset_readdir(%struct.ceph_dir_file_info*, i64) #1

declare dso_local i32 @dout(i8*, %struct.file*) #1

declare dso_local i32 @reset_readdir(%struct.ceph_dir_file_info*) #1

declare dso_local i64 @is_hash_order(i64) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
