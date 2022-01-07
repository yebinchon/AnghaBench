; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { i64 }
%struct.cifs_tcon = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.file*, %struct.cifs_tcon*, i32, i32)* }
%struct.inode = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @cifs_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_llseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifsFileInfo*, align 8
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  store %struct.cifsFileInfo* %14, %struct.cifsFileInfo** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SEEK_SET, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %67

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SEEK_CUR, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %18
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = call %struct.inode* @file_inode(%struct.file* %23)
  store %struct.inode* %24, %struct.inode** %11, align 8
  %25 = load %struct.inode*, %struct.inode** %11, align 8
  %26 = call %struct.TYPE_12__* @CIFS_I(%struct.inode* %25)
  %27 = call i32 @CIFS_CACHE_READ(%struct.TYPE_12__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %56, label %29

29:                                               ; preds = %22
  %30 = load %struct.inode*, %struct.inode** %11, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = icmp ne %struct.TYPE_11__* %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load %struct.inode*, %struct.inode** %11, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load %struct.inode*, %struct.inode** %11, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = call i32 @filemap_fdatawait(%struct.TYPE_11__* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @mapping_set_error(%struct.TYPE_11__* %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %111

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %34, %29, %22
  %57 = load %struct.inode*, %struct.inode** %11, align 8
  %58 = call %struct.TYPE_12__* @CIFS_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.file*, %struct.file** %5, align 8
  %61 = call i32 @cifs_revalidate_file_attr(%struct.file* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %111

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %18, %3
  %68 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %69 = icmp ne %struct.cifsFileInfo* %68, null
  br i1 %69, label %70, label %106

70:                                               ; preds = %67
  %71 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %72 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %106

75:                                               ; preds = %70
  %76 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %77 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call %struct.cifs_tcon* @tlink_tcon(i64 %78)
  store %struct.cifs_tcon* %79, %struct.cifs_tcon** %9, align 8
  %80 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %81 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32 (%struct.file*, %struct.cifs_tcon*, i32, i32)*, i32 (%struct.file*, %struct.cifs_tcon*, i32, i32)** %87, align 8
  %89 = icmp ne i32 (%struct.file*, %struct.cifs_tcon*, i32, i32)* %88, null
  br i1 %89, label %90, label %105

90:                                               ; preds = %75
  %91 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %92 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32 (%struct.file*, %struct.cifs_tcon*, i32, i32)*, i32 (%struct.file*, %struct.cifs_tcon*, i32, i32)** %98, align 8
  %100 = load %struct.file*, %struct.file** %5, align 8
  %101 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 %99(%struct.file* %100, %struct.cifs_tcon* %101, i32 %102, i32 %103)
  store i32 %104, i32* %4, align 4
  br label %111

105:                                              ; preds = %75
  br label %106

106:                                              ; preds = %105, %70, %67
  %107 = load %struct.file*, %struct.file** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @generic_file_llseek(%struct.file* %107, i32 %108, i32 %109)
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %106, %90, %64, %48
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @CIFS_CACHE_READ(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @filemap_fdatawait(%struct.TYPE_11__*) #1

declare dso_local i32 @mapping_set_error(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @cifs_revalidate_file_attr(%struct.file*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i64) #1

declare dso_local i32 @generic_file_llseek(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
