; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_file_copychunk_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_file_copychunk_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { i32 }
%struct.inode = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, %struct.cifsFileInfo*, %struct.cifsFileInfo*, i32, i64, i32)* }
%struct.TYPE_8__ = type { i64 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"copychunk range\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"missing cifsFileInfo on copy range src file\0A\00", align 1
@EXDEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"source and target of copy not on same server\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"about to flush pages\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_file_copychunk_range(i32 %0, %struct.file* %1, i32 %2, %struct.file* %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.cifsFileInfo*, align 8
  %18 = alloca %struct.cifsFileInfo*, align 8
  %19 = alloca %struct.cifs_tcon*, align 8
  %20 = alloca %struct.cifs_tcon*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.file* %1, %struct.file** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.file* %3, %struct.file** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %22 = load %struct.file*, %struct.file** %9, align 8
  %23 = call %struct.inode* @file_inode(%struct.file* %22)
  store %struct.inode* %23, %struct.inode** %15, align 8
  %24 = load %struct.file*, %struct.file** %11, align 8
  %25 = call %struct.inode* @file_inode(%struct.file* %24)
  store %struct.inode* %25, %struct.inode** %16, align 8
  %26 = load i32, i32* @FYI, align 4
  %27 = call i32 @cifs_dbg(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.file*, %struct.file** %9, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %29, align 8
  %31 = icmp ne %struct.cifsFileInfo* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %7
  %33 = load %struct.file*, %struct.file** %11, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %34, align 8
  %36 = icmp ne %struct.cifsFileInfo* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32, %7
  %38 = load i32, i32* @EBADF, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %21, align 4
  %40 = load i32, i32* @VFS, align 4
  %41 = call i32 @cifs_dbg(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %122

42:                                               ; preds = %32
  %43 = load i32, i32* @EXDEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %21, align 4
  %45 = load %struct.file*, %struct.file** %11, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  %47 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %46, align 8
  store %struct.cifsFileInfo* %47, %struct.cifsFileInfo** %18, align 8
  %48 = load %struct.file*, %struct.file** %9, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 0
  %50 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %49, align 8
  store %struct.cifsFileInfo* %50, %struct.cifsFileInfo** %17, align 8
  %51 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %52 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.cifs_tcon* @tlink_tcon(i32 %53)
  store %struct.cifs_tcon* %54, %struct.cifs_tcon** %19, align 8
  %55 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %18, align 8
  %56 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.cifs_tcon* @tlink_tcon(i32 %57)
  store %struct.cifs_tcon* %58, %struct.cifs_tcon** %20, align 8
  %59 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %60 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load %struct.cifs_tcon*, %struct.cifs_tcon** %20, align 8
  %63 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = icmp ne %struct.TYPE_7__* %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %42
  %67 = load i32, i32* @VFS, align 4
  %68 = call i32 @cifs_dbg(i32 %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %122

69:                                               ; preds = %42
  %70 = load i32, i32* @EOPNOTSUPP, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %21, align 4
  %72 = load %struct.cifs_tcon*, %struct.cifs_tcon** %20, align 8
  %73 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32 (i32, %struct.cifsFileInfo*, %struct.cifsFileInfo*, i32, i64, i32)*, i32 (i32, %struct.cifsFileInfo*, %struct.cifsFileInfo*, i32, i64, i32)** %79, align 8
  %81 = icmp ne i32 (i32, %struct.cifsFileInfo*, %struct.cifsFileInfo*, i32, i64, i32)* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %69
  br label %122

83:                                               ; preds = %69
  %84 = load %struct.inode*, %struct.inode** %16, align 8
  %85 = load %struct.inode*, %struct.inode** %15, align 8
  %86 = call i32 @lock_two_nondirectories(%struct.inode* %84, %struct.inode* %85)
  %87 = load i32, i32* @FYI, align 4
  %88 = call i32 @cifs_dbg(i32 %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %89 = load %struct.inode*, %struct.inode** %16, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = call i32 @truncate_inode_pages(i32* %90, i32 0)
  %92 = load %struct.file*, %struct.file** %11, align 8
  %93 = call i32 @file_modified(%struct.file* %92)
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* %21, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %113, label %96

96:                                               ; preds = %83
  %97 = load %struct.cifs_tcon*, %struct.cifs_tcon** %20, align 8
  %98 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32 (i32, %struct.cifsFileInfo*, %struct.cifsFileInfo*, i32, i64, i32)*, i32 (i32, %struct.cifsFileInfo*, %struct.cifsFileInfo*, i32, i64, i32)** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %108 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %18, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i64, i64* %13, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 %105(i32 %106, %struct.cifsFileInfo* %107, %struct.cifsFileInfo* %108, i32 %109, i64 %110, i32 %111)
  store i32 %112, i32* %21, align 4
  br label %113

113:                                              ; preds = %96, %83
  %114 = load %struct.file*, %struct.file** %9, align 8
  %115 = call i32 @file_accessed(%struct.file* %114)
  %116 = load %struct.inode*, %struct.inode** %16, align 8
  %117 = call %struct.TYPE_8__* @CIFS_I(%struct.inode* %116)
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  %119 = load %struct.inode*, %struct.inode** %15, align 8
  %120 = load %struct.inode*, %struct.inode** %16, align 8
  %121 = call i32 @unlock_two_nondirectories(%struct.inode* %119, %struct.inode* %120)
  br label %122

122:                                              ; preds = %113, %82, %66, %37
  %123 = load i32, i32* %21, align 4
  ret i32 %123
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @lock_two_nondirectories(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @truncate_inode_pages(i32*, i32) #1

declare dso_local i32 @file_modified(%struct.file*) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

declare dso_local %struct.TYPE_8__* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @unlock_two_nondirectories(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
