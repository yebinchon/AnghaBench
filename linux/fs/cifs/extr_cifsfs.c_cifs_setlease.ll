; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_setlease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_setlease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { i32 }
%struct.file_lock = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@F_RDLCK = common dso_local global i64 0, align 8
@F_WRLCK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, %struct.file_lock**, i8**)* @cifs_setlease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_setlease(%struct.file* %0, i64 %1, %struct.file_lock** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.file_lock**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.cifsFileInfo*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.file_lock** %2, %struct.file_lock*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = call %struct.inode* @file_inode(%struct.file* %12)
  store %struct.inode* %13, %struct.inode** %10, align 8
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  store %struct.cifsFileInfo* %16, %struct.cifsFileInfo** %11, align 8
  %17 = load %struct.inode*, %struct.inode** %10, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @S_ISREG(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %75

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @F_UNLCK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @F_RDLCK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = call i32 @CIFS_I(%struct.inode* %34)
  %36 = call i64 @CIFS_CACHE_READ(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33, %29
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @F_WRLCK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call i32 @CIFS_I(%struct.inode* %43)
  %45 = call i64 @CIFS_CACHE_WRITE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42, %33, %25
  %48 = load %struct.file*, %struct.file** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.file_lock**, %struct.file_lock*** %8, align 8
  %51 = load i8**, i8*** %9, align 8
  %52 = call i32 @generic_setlease(%struct.file* %48, i64 %49, %struct.file_lock** %50, i8** %51)
  store i32 %52, i32* %5, align 4
  br label %75

53:                                               ; preds = %42, %38
  %54 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %55 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.TYPE_2__* @tlink_tcon(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = load %struct.inode*, %struct.inode** %10, align 8
  %63 = call i32 @CIFS_I(%struct.inode* %62)
  %64 = call i64 @CIFS_CACHE_READ(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load %struct.file*, %struct.file** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.file_lock**, %struct.file_lock*** %8, align 8
  %70 = load i8**, i8*** %9, align 8
  %71 = call i32 @generic_setlease(%struct.file* %67, i64 %68, %struct.file_lock** %69, i8** %70)
  store i32 %71, i32* %5, align 4
  br label %75

72:                                               ; preds = %61, %53
  %73 = load i32, i32* @EAGAIN, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %66, %47, %22
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @CIFS_CACHE_READ(i32) #1

declare dso_local i32 @CIFS_I(%struct.inode*) #1

declare dso_local i64 @CIFS_CACHE_WRITE(i32) #1

declare dso_local i32 @generic_setlease(%struct.file*, i64, %struct.file_lock**, i8**) #1

declare dso_local %struct.TYPE_2__* @tlink_tcon(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
