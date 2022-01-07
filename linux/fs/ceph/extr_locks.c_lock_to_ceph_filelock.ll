; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_locks.c_lock_to_ceph_filelock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_locks.c_lock_to_ceph_filelock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32, i32, i64, i64, i64 }
%struct.ceph_filelock = type { i32, i8*, i8*, i8*, i8*, i8* }

@CEPH_LOCK_SHARED = common dso_local global i32 0, align 4
@CEPH_LOCK_EXCL = common dso_local global i32 0, align 4
@CEPH_LOCK_UNLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Have unknown lock type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_lock*, %struct.ceph_filelock*)* @lock_to_ceph_filelock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_to_ceph_filelock(%struct.file_lock* %0, %struct.ceph_filelock* %1) #0 {
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca %struct.ceph_filelock*, align 8
  %5 = alloca i32, align 4
  store %struct.file_lock* %0, %struct.file_lock** %3, align 8
  store %struct.ceph_filelock* %1, %struct.ceph_filelock** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %7 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = call i8* @cpu_to_le64(i64 %8)
  %10 = load %struct.ceph_filelock*, %struct.ceph_filelock** %4, align 8
  %11 = getelementptr inbounds %struct.ceph_filelock, %struct.ceph_filelock* %10, i32 0, i32 5
  store i8* %9, i8** %11, align 8
  %12 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %13 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %16 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = add nsw i64 %18, 1
  %20 = call i8* @cpu_to_le64(i64 %19)
  %21 = load %struct.ceph_filelock*, %struct.ceph_filelock** %4, align 8
  %22 = getelementptr inbounds %struct.ceph_filelock, %struct.ceph_filelock* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = call i8* @cpu_to_le64(i64 0)
  %24 = load %struct.ceph_filelock*, %struct.ceph_filelock** %4, align 8
  %25 = getelementptr inbounds %struct.ceph_filelock, %struct.ceph_filelock* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @cpu_to_le64(i64 %28)
  %30 = load %struct.ceph_filelock*, %struct.ceph_filelock** %4, align 8
  %31 = getelementptr inbounds %struct.ceph_filelock, %struct.ceph_filelock* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %33 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @secure_addr(i32 %34)
  %36 = call i8* @cpu_to_le64(i64 %35)
  %37 = load %struct.ceph_filelock*, %struct.ceph_filelock** %4, align 8
  %38 = getelementptr inbounds %struct.ceph_filelock, %struct.ceph_filelock* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %40 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %54 [
    i32 130, label %42
    i32 128, label %46
    i32 129, label %50
  ]

42:                                               ; preds = %2
  %43 = load i32, i32* @CEPH_LOCK_SHARED, align 4
  %44 = load %struct.ceph_filelock*, %struct.ceph_filelock** %4, align 8
  %45 = getelementptr inbounds %struct.ceph_filelock, %struct.ceph_filelock* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %61

46:                                               ; preds = %2
  %47 = load i32, i32* @CEPH_LOCK_EXCL, align 4
  %48 = load %struct.ceph_filelock*, %struct.ceph_filelock** %4, align 8
  %49 = getelementptr inbounds %struct.ceph_filelock, %struct.ceph_filelock* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %61

50:                                               ; preds = %2
  %51 = load i32, i32* @CEPH_LOCK_UNLOCK, align 4
  %52 = load %struct.ceph_filelock*, %struct.ceph_filelock** %4, align 8
  %53 = getelementptr inbounds %struct.ceph_filelock, %struct.ceph_filelock* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %61

54:                                               ; preds = %2
  %55 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %56 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %54, %50, %46, %42
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @secure_addr(i32) #1

declare dso_local i32 @dout(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
