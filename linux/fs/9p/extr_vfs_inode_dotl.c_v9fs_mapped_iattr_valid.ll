; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_mapped_iattr_valid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_mapped_iattr_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dotl_iattr_map = type { i32, i32, i32, i32 }

@ATTR_MODE = common dso_local global i32 0, align 4
@P9_ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@P9_ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@P9_ATTR_GID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@P9_ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@P9_ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@P9_ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@P9_ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@P9_ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@P9_ATTR_MTIME_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @v9fs_mapped_iattr_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_mapped_iattr_valid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [9 x %struct.dotl_iattr_map], align 16
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %6 = getelementptr inbounds [9 x %struct.dotl_iattr_map], [9 x %struct.dotl_iattr_map]* %5, i64 0, i64 0
  %7 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %6, i32 0, i32 0
  %8 = load i32, i32* @ATTR_MODE, align 4
  store i32 %8, i32* %7, align 16
  %9 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %6, i32 0, i32 1
  %10 = load i32, i32* @P9_ATTR_MODE, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %6, i32 0, i32 2
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %6, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %6, i64 1
  %14 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %13, i32 0, i32 0
  %15 = load i32, i32* @ATTR_UID, align 4
  store i32 %15, i32* %14, align 16
  %16 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %13, i32 0, i32 1
  %17 = load i32, i32* @P9_ATTR_UID, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %13, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %13, i32 0, i32 3
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %13, i64 1
  %21 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %20, i32 0, i32 0
  %22 = load i32, i32* @ATTR_GID, align 4
  store i32 %22, i32* %21, align 16
  %23 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %20, i32 0, i32 1
  %24 = load i32, i32* @P9_ATTR_GID, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %20, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %20, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %20, i64 1
  %28 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %27, i32 0, i32 0
  %29 = load i32, i32* @ATTR_SIZE, align 4
  store i32 %29, i32* %28, align 16
  %30 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %27, i32 0, i32 1
  %31 = load i32, i32* @P9_ATTR_SIZE, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %27, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %27, i32 0, i32 3
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %27, i64 1
  %35 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %34, i32 0, i32 0
  %36 = load i32, i32* @ATTR_ATIME, align 4
  store i32 %36, i32* %35, align 16
  %37 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %34, i32 0, i32 1
  %38 = load i32, i32* @P9_ATTR_ATIME, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %34, i32 0, i32 2
  store i32 0, i32* %39, align 8
  %40 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %34, i32 0, i32 3
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %34, i64 1
  %42 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %41, i32 0, i32 0
  %43 = load i32, i32* @ATTR_MTIME, align 4
  store i32 %43, i32* %42, align 16
  %44 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %41, i32 0, i32 1
  %45 = load i32, i32* @P9_ATTR_MTIME, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %41, i32 0, i32 2
  store i32 0, i32* %46, align 8
  %47 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %41, i32 0, i32 3
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %41, i64 1
  %49 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %48, i32 0, i32 0
  %50 = load i32, i32* @ATTR_CTIME, align 4
  store i32 %50, i32* %49, align 16
  %51 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %48, i32 0, i32 1
  %52 = load i32, i32* @P9_ATTR_CTIME, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %48, i32 0, i32 2
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %48, i32 0, i32 3
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %48, i64 1
  %56 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %55, i32 0, i32 0
  %57 = load i32, i32* @ATTR_ATIME_SET, align 4
  store i32 %57, i32* %56, align 16
  %58 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %55, i32 0, i32 1
  %59 = load i32, i32* @P9_ATTR_ATIME_SET, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %55, i32 0, i32 2
  store i32 0, i32* %60, align 8
  %61 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %55, i32 0, i32 3
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %55, i64 1
  %63 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %62, i32 0, i32 0
  %64 = load i32, i32* @ATTR_MTIME_SET, align 4
  store i32 %64, i32* %63, align 16
  %65 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %62, i32 0, i32 1
  %66 = load i32, i32* @P9_ATTR_MTIME_SET, align 4
  store i32 %66, i32* %65, align 4
  %67 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %62, i32 0, i32 2
  store i32 0, i32* %67, align 8
  %68 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %62, i32 0, i32 3
  store i32 0, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %92, %1
  %70 = load i32, i32* %3, align 4
  %71 = getelementptr inbounds [9 x %struct.dotl_iattr_map], [9 x %struct.dotl_iattr_map]* %5, i64 0, i64 0
  %72 = call i32 @ARRAY_SIZE(%struct.dotl_iattr_map* %71)
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %69
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [9 x %struct.dotl_iattr_map], [9 x %struct.dotl_iattr_map]* %5, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 16
  %81 = and i32 %75, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %74
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [9 x %struct.dotl_iattr_map], [9 x %struct.dotl_iattr_map]* %5, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.dotl_iattr_map, %struct.dotl_iattr_map* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %83, %74
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %69

95:                                               ; preds = %69
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @ARRAY_SIZE(%struct.dotl_iattr_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
