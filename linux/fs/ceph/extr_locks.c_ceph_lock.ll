; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_locks.c_ceph_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_locks.c_ceph_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.file_lock = type { i32, i64, i32 }
%struct.inode = type { i32 }
%struct.ceph_inode_info = type { i32, i32 }

@CEPH_MDS_OP_SETFILELOCK = common dso_local global i64 0, align 8
@FL_POSIX = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"ceph_lock, fl_owner: %p\0A\00", align 1
@CEPH_MDS_OP_GETFILELOCK = common dso_local global i64 0, align 8
@CEPH_I_ERROR_FILELOCK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i64 0, align 8
@CEPH_LOCK_SHARED = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i64 0, align 8
@CEPH_LOCK_EXCL = common dso_local global i32 0, align 4
@CEPH_LOCK_UNLOCK = common dso_local global i32 0, align 4
@CEPH_LOCK_FCNTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"mds locked, locking locally\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"got %d on posix_lock_file, undid lock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_lock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ceph_inode_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_lock* %2, %struct.file_lock** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.inode* @file_inode(%struct.file* %14)
  store %struct.inode* %15, %struct.inode** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %16)
  store %struct.ceph_inode_info* %17, %struct.ceph_inode_info** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i64, i64* @CEPH_MDS_OP_SETFILELOCK, align 8
  store i64 %18, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %20 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FL_POSIX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOLCK, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %149

28:                                               ; preds = %3
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @__mandatory_lock(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %38 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @F_UNLCK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOLCK, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %149

45:                                               ; preds = %36, %28
  %46 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %47 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @IS_GETLK(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i64, i64* @CEPH_MDS_OP_GETFILELOCK, align 8
  store i64 %54, i64* %11, align 8
  br label %61

55:                                               ; preds = %45
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @IS_SETLKW(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %12, align 4
  br label %60

60:                                               ; preds = %59, %55
  br label %61

61:                                               ; preds = %60, %53
  %62 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %63 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %62, i32 0, i32 1
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %66 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CEPH_I_ERROR_FILELOCK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %71, %61
  %75 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %76 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @CEPH_MDS_OP_SETFILELOCK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load i64, i64* @F_UNLCK, align 8
  %86 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %87 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.file*, %struct.file** %5, align 8
  %92 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %93 = call i32 @posix_lock_file(%struct.file* %91, %struct.file_lock* %92, i32* null)
  br label %94

94:                                               ; preds = %90, %84, %80
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %4, align 4
  br label %149

96:                                               ; preds = %74
  %97 = load i64, i64* @F_RDLCK, align 8
  %98 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %99 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @CEPH_LOCK_SHARED, align 4
  store i32 %103, i32* %13, align 4
  br label %115

104:                                              ; preds = %96
  %105 = load i64, i64* @F_WRLCK, align 8
  %106 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %107 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %105, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* @CEPH_LOCK_EXCL, align 4
  store i32 %111, i32* %13, align 4
  br label %114

112:                                              ; preds = %104
  %113 = load i32, i32* @CEPH_LOCK_UNLOCK, align 4
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %112, %110
  br label %115

115:                                              ; preds = %114, %102
  %116 = load i32, i32* @CEPH_LOCK_FCNTL, align 4
  %117 = load i64, i64* %11, align 8
  %118 = load %struct.inode*, %struct.inode** %8, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %122 = call i32 @ceph_lock_message(i32 %116, i64 %117, %struct.inode* %118, i32 %119, i32 %120, %struct.file_lock* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %147, label %125

125:                                              ; preds = %115
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* @CEPH_MDS_OP_SETFILELOCK, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %125
  %130 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %131 = load %struct.file*, %struct.file** %5, align 8
  %132 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %133 = call i32 @posix_lock_file(%struct.file* %131, %struct.file_lock* %132, i32* null)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %129
  %137 = load i32, i32* @CEPH_LOCK_FCNTL, align 4
  %138 = load i64, i64* %11, align 8
  %139 = load %struct.inode*, %struct.inode** %8, align 8
  %140 = load i32, i32* @CEPH_LOCK_UNLOCK, align 4
  %141 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %142 = call i32 @ceph_lock_message(i32 %137, i64 %138, %struct.inode* %139, i32 %140, i32 0, %struct.file_lock* %141)
  %143 = load i32, i32* %10, align 4
  %144 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %136, %129
  br label %146

146:                                              ; preds = %145, %125
  br label %147

147:                                              ; preds = %146, %115
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %147, %94, %42, %25
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i64 @__mandatory_lock(i32) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i64 @IS_GETLK(i32) #1

declare dso_local i64 @IS_SETLKW(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @posix_lock_file(%struct.file*, %struct.file_lock*, i32*) #1

declare dso_local i32 @ceph_lock_message(i32, i64, %struct.inode*, i32, i32, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
