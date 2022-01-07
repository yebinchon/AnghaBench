; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_is_file_size_ok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_is_file_size_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Copy beyond EOF (%llu + %zu > %llu)\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*, i64, i64, i64)* @is_file_size_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_file_size_ok(%struct.inode* %0, %struct.inode* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call i64 @i_size_read(%struct.inode* %14)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %11, align 8
  %18 = add i64 %16, %17
  %19 = load i64, i64* %12, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i32 @dout(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23, i64 %24)
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %50

28:                                               ; preds = %5
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = call i64 @i_size_read(%struct.inode* %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %13, align 8
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = load i64, i64* %13, align 8
  %36 = call i64 @inode_newsize_ok(%struct.inode* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %50

41:                                               ; preds = %28
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @ceph_quota_is_max_bytes_exceeded(%struct.inode* %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EDQUOT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %50

49:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %46, %38, %21
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @dout(i8*, i64, i64, i64) #1

declare dso_local i64 @inode_newsize_ok(%struct.inode*, i64) #1

declare dso_local i64 @ceph_quota_is_max_bytes_exceeded(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
