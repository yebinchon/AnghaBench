; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_autofs_dev_ioctl_ismountpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_autofs_dev_ioctl_ismountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.autofs_sb_info = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.autofs_dev_ioctl = type { i8*, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.path = type { %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }

@ENOENT = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@test_by_type = common dso_local global i32 0, align 4
@test_by_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.autofs_sb_info*, %struct.autofs_dev_ioctl*)* @autofs_dev_ioctl_ismountpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_dev_ioctl_ismountpoint(%struct.file* %0, %struct.autofs_sb_info* %1, %struct.autofs_dev_ioctl* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.autofs_sb_info*, align 8
  %6 = alloca %struct.autofs_dev_ioctl*, align 8
  %7 = alloca %struct.path, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.autofs_sb_info* %1, %struct.autofs_sb_info** %5, align 8
  store %struct.autofs_dev_ioctl* %2, %struct.autofs_dev_ioctl** %6, align 8
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %17 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %20 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %25 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  store i32 0, i32* %11, align 4
  %28 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %29 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.file*, %struct.file** %4, align 8
  %33 = icmp ne %struct.file* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %36 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %79

39:                                               ; preds = %34, %3
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @autofs_type_any(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* @AT_FDCWD, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %47 = call i32 @kern_path_mountpoint(i32 %44, i8* %45, %struct.path* %7, i32 %46)
  store i32 %47, i32* %12, align 4
  br label %52

48:                                               ; preds = %39
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* @test_by_type, align 4
  %51 = call i32 @find_autofs_mount(i8* %49, %struct.path* %7, i32 %50, i32* %9)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %117

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @new_encode_dev(i32 %62)
  store i32 %63, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %64 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = icmp eq %struct.TYPE_12__* %67, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %56
  store i32 1, i32* %12, align 4
  %72 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %71, %56
  br label %105

79:                                               ; preds = %34
  %80 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %81 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* @test_by_dev, align 4
  %87 = call i32 @find_autofs_mount(i8* %85, %struct.path* %7, i32 %86, i32* %13)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %117

91:                                               ; preds = %79
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @new_encode_dev(i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = call i32 @path_has_submounts(%struct.path* %7)
  store i32 %94, i32* %12, align 4
  %95 = call i64 @follow_down_one(%struct.path* %7)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %97, %91
  br label %105

105:                                              ; preds = %104, %78
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %108 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %113 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 4
  %116 = call i32 @path_put(%struct.path* %7)
  br label %117

117:                                              ; preds = %105, %90, %55
  %118 = load i32, i32* %12, align 4
  ret i32 %118
}

declare dso_local i64 @autofs_type_any(i32) #1

declare dso_local i32 @kern_path_mountpoint(i32, i8*, %struct.path*, i32) #1

declare dso_local i32 @find_autofs_mount(i8*, %struct.path*, i32, i32*) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @path_has_submounts(%struct.path*) #1

declare dso_local i64 @follow_down_one(%struct.path*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
