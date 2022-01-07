; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_locks.c_ceph_flock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_locks.c_ceph_flock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i32, i32, i32 }
%struct.inode = type { i32 }
%struct.ceph_inode_info = type { i32, i32 }

@FL_FLOCK = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@LOCK_MAND = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ceph_flock, fl_file: %p\0A\00", align 1
@CEPH_I_ERROR_FILELOCK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@CEPH_LOCK_SHARED = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@CEPH_LOCK_EXCL = common dso_local global i32 0, align 4
@CEPH_LOCK_UNLOCK = common dso_local global i32 0, align 4
@CEPH_LOCK_FLOCK = common dso_local global i32 0, align 4
@CEPH_MDS_OP_SETFILELOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"got %d on locks_lock_file_wait, undid lock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_flock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ceph_inode_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_lock* %2, %struct.file_lock** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.inode* @file_inode(%struct.file* %13)
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %15)
  store %struct.ceph_inode_info* %16, %struct.ceph_inode_info** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %18 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FL_FLOCK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOLCK, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %123

26:                                               ; preds = %3
  %27 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %28 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LOCK_MAND, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %123

36:                                               ; preds = %26
  %37 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %38 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %42 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %41, i32 0, i32 1
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %45 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CEPH_I_ERROR_FILELOCK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50, %36
  %54 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %55 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load i32, i32* @F_UNLCK, align 4
  %61 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %62 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.file*, %struct.file** %5, align 8
  %67 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %68 = call i32 @locks_lock_file_wait(%struct.file* %66, %struct.file_lock* %67)
  br label %69

69:                                               ; preds = %65, %59
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %123

71:                                               ; preds = %53
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @IS_SETLKW(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %71
  %77 = load i32, i32* @F_RDLCK, align 4
  %78 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %79 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @CEPH_LOCK_SHARED, align 4
  store i32 %83, i32* %12, align 4
  br label %95

84:                                               ; preds = %76
  %85 = load i32, i32* @F_WRLCK, align 4
  %86 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %87 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @CEPH_LOCK_EXCL, align 4
  store i32 %91, i32* %12, align 4
  br label %94

92:                                               ; preds = %84
  %93 = load i32, i32* @CEPH_LOCK_UNLOCK, align 4
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %92, %90
  br label %95

95:                                               ; preds = %94, %82
  %96 = load i32, i32* @CEPH_LOCK_FLOCK, align 4
  %97 = load i32, i32* @CEPH_MDS_OP_SETFILELOCK, align 4
  %98 = load %struct.inode*, %struct.inode** %8, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %102 = call i32 @ceph_lock_message(i32 %96, i32 %97, %struct.inode* %98, i32 %99, i32 %100, %struct.file_lock* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %95
  %106 = load %struct.file*, %struct.file** %5, align 8
  %107 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %108 = call i32 @locks_lock_file_wait(%struct.file* %106, %struct.file_lock* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load i32, i32* @CEPH_LOCK_FLOCK, align 4
  %113 = load i32, i32* @CEPH_MDS_OP_SETFILELOCK, align 4
  %114 = load %struct.inode*, %struct.inode** %8, align 8
  %115 = load i32, i32* @CEPH_LOCK_UNLOCK, align 4
  %116 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %117 = call i32 @ceph_lock_message(i32 %112, i32 %113, %struct.inode* %114, i32 %115, i32 0, %struct.file_lock* %116)
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @dout(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %111, %105
  br label %121

121:                                              ; preds = %120, %95
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %69, %33, %23
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @dout(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @locks_lock_file_wait(%struct.file*, %struct.file_lock*) #1

declare dso_local i64 @IS_SETLKW(i32) #1

declare dso_local i32 @ceph_lock_message(i32, i32, %struct.inode*, i32, i32, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
