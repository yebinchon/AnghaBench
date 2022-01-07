; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_ioctl.c_cifs_ioctl_copychunk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_ioctl.c_cifs_ioctl_copychunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.inode = type { i32, i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ioctl copychunk range\0A\00", align 1
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"file target not open for write\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"mnt_want_write failed with rc %d\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@cifs_ioctl = common dso_local global i64 0, align 8
@VFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"src file seems to be from a different filesystem type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.file*, i64)* @cifs_ioctl_copychunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cifs_ioctl_copychunk(i32 %0, %struct.file* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fd, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fd, align 8
  store i32 %0, i32* %5, align 4
  store %struct.file* %1, %struct.file** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @FYI, align 4
  %13 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FMODE_WRITE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @FYI, align 4
  %22 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %97

25:                                               ; preds = %3
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = call i32 @mnt_want_write_file(%struct.file* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @FYI, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %4, align 8
  br label %97

36:                                               ; preds = %25
  %37 = load i64, i64* %7, align 8
  %38 = call %struct.TYPE_5__* @fdget(i64 %37)
  %39 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %39, align 8
  %40 = bitcast %struct.fd* %9 to i8*
  %41 = bitcast %struct.fd* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false)
  %42 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @EBADF, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %92

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @cifs_ioctl, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load i32, i32* @EBADF, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @VFS, align 4
  %61 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %60, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %88

62:                                               ; preds = %48
  %63 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = call %struct.inode* @file_inode(%struct.TYPE_5__* %64)
  store %struct.inode* %65, %struct.inode** %10, align 8
  %66 = load i64, i64* @EINVAL, align 8
  %67 = sub nsw i64 0, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @S_ISDIR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %88

75:                                               ; preds = %62
  %76 = load i32, i32* %5, align 4
  %77 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load %struct.file*, %struct.file** %6, align 8
  %80 = load %struct.inode*, %struct.inode** %10, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @cifs_file_copychunk_range(i32 %76, %struct.TYPE_5__* %78, i32 0, %struct.file* %79, i32 0, i32 %82, i32 0)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %86, %75
  br label %88

88:                                               ; preds = %87, %74, %57
  %89 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = call i32 @fdput(%struct.TYPE_5__* %90)
  br label %92

92:                                               ; preds = %88, %45
  %93 = load %struct.file*, %struct.file** %6, align 8
  %94 = call i32 @mnt_drop_write_file(%struct.file* %93)
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %4, align 8
  br label %97

97:                                               ; preds = %92, %30, %20
  %98 = load i64, i64* %4, align 8
  ret i64 %98
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @mnt_want_write_file(%struct.file*) #1

declare dso_local %struct.TYPE_5__* @fdget(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.inode* @file_inode(%struct.TYPE_5__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @cifs_file_copychunk_range(i32, %struct.TYPE_5__*, i32, %struct.file*, i32, i32, i32) #1

declare dso_local i32 @fdput(%struct.TYPE_5__*) #1

declare dso_local i32 @mnt_drop_write_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
