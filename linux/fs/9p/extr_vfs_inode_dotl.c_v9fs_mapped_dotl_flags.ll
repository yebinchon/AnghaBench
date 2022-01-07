; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_mapped_dotl_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_mapped_dotl_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dotl_openflag_map = type { i32, i32, i32, i32 }

@O_CREAT = common dso_local global i32 0, align 4
@P9_DOTL_CREATE = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@P9_DOTL_EXCL = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@P9_DOTL_NOCTTY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@P9_DOTL_APPEND = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@P9_DOTL_NONBLOCK = common dso_local global i32 0, align 4
@O_DSYNC = common dso_local global i32 0, align 4
@P9_DOTL_DSYNC = common dso_local global i32 0, align 4
@FASYNC = common dso_local global i32 0, align 4
@P9_DOTL_FASYNC = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@P9_DOTL_DIRECT = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@P9_DOTL_LARGEFILE = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@P9_DOTL_DIRECTORY = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@P9_DOTL_NOFOLLOW = common dso_local global i32 0, align 4
@O_NOATIME = common dso_local global i32 0, align 4
@P9_DOTL_NOATIME = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@P9_DOTL_CLOEXEC = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@P9_DOTL_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @v9fs_mapped_dotl_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_mapped_dotl_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [14 x %struct.dotl_openflag_map], align 16
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %6 = getelementptr inbounds [14 x %struct.dotl_openflag_map], [14 x %struct.dotl_openflag_map]* %5, i64 0, i64 0
  %7 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %6, i32 0, i32 0
  %8 = load i32, i32* @O_CREAT, align 4
  store i32 %8, i32* %7, align 16
  %9 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %6, i32 0, i32 1
  %10 = load i32, i32* @P9_DOTL_CREATE, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %6, i32 0, i32 2
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %6, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %6, i64 1
  %14 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %13, i32 0, i32 0
  %15 = load i32, i32* @O_EXCL, align 4
  store i32 %15, i32* %14, align 16
  %16 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %13, i32 0, i32 1
  %17 = load i32, i32* @P9_DOTL_EXCL, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %13, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %13, i32 0, i32 3
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %13, i64 1
  %21 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %20, i32 0, i32 0
  %22 = load i32, i32* @O_NOCTTY, align 4
  store i32 %22, i32* %21, align 16
  %23 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %20, i32 0, i32 1
  %24 = load i32, i32* @P9_DOTL_NOCTTY, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %20, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %20, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %20, i64 1
  %28 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %27, i32 0, i32 0
  %29 = load i32, i32* @O_APPEND, align 4
  store i32 %29, i32* %28, align 16
  %30 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %27, i32 0, i32 1
  %31 = load i32, i32* @P9_DOTL_APPEND, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %27, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %27, i32 0, i32 3
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %27, i64 1
  %35 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %34, i32 0, i32 0
  %36 = load i32, i32* @O_NONBLOCK, align 4
  store i32 %36, i32* %35, align 16
  %37 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %34, i32 0, i32 1
  %38 = load i32, i32* @P9_DOTL_NONBLOCK, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %34, i32 0, i32 2
  store i32 0, i32* %39, align 8
  %40 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %34, i32 0, i32 3
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %34, i64 1
  %42 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %41, i32 0, i32 0
  %43 = load i32, i32* @O_DSYNC, align 4
  store i32 %43, i32* %42, align 16
  %44 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %41, i32 0, i32 1
  %45 = load i32, i32* @P9_DOTL_DSYNC, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %41, i32 0, i32 2
  store i32 0, i32* %46, align 8
  %47 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %41, i32 0, i32 3
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %41, i64 1
  %49 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %48, i32 0, i32 0
  %50 = load i32, i32* @FASYNC, align 4
  store i32 %50, i32* %49, align 16
  %51 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %48, i32 0, i32 1
  %52 = load i32, i32* @P9_DOTL_FASYNC, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %48, i32 0, i32 2
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %48, i32 0, i32 3
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %48, i64 1
  %56 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %55, i32 0, i32 0
  %57 = load i32, i32* @O_DIRECT, align 4
  store i32 %57, i32* %56, align 16
  %58 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %55, i32 0, i32 1
  %59 = load i32, i32* @P9_DOTL_DIRECT, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %55, i32 0, i32 2
  store i32 0, i32* %60, align 8
  %61 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %55, i32 0, i32 3
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %55, i64 1
  %63 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %62, i32 0, i32 0
  %64 = load i32, i32* @O_LARGEFILE, align 4
  store i32 %64, i32* %63, align 16
  %65 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %62, i32 0, i32 1
  %66 = load i32, i32* @P9_DOTL_LARGEFILE, align 4
  store i32 %66, i32* %65, align 4
  %67 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %62, i32 0, i32 2
  store i32 0, i32* %67, align 8
  %68 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %62, i32 0, i32 3
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %62, i64 1
  %70 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %69, i32 0, i32 0
  %71 = load i32, i32* @O_DIRECTORY, align 4
  store i32 %71, i32* %70, align 16
  %72 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %69, i32 0, i32 1
  %73 = load i32, i32* @P9_DOTL_DIRECTORY, align 4
  store i32 %73, i32* %72, align 4
  %74 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %69, i32 0, i32 2
  store i32 0, i32* %74, align 8
  %75 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %69, i32 0, i32 3
  store i32 0, i32* %75, align 4
  %76 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %69, i64 1
  %77 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %76, i32 0, i32 0
  %78 = load i32, i32* @O_NOFOLLOW, align 4
  store i32 %78, i32* %77, align 16
  %79 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %76, i32 0, i32 1
  %80 = load i32, i32* @P9_DOTL_NOFOLLOW, align 4
  store i32 %80, i32* %79, align 4
  %81 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %76, i32 0, i32 2
  store i32 0, i32* %81, align 8
  %82 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %76, i32 0, i32 3
  store i32 0, i32* %82, align 4
  %83 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %76, i64 1
  %84 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %83, i32 0, i32 0
  %85 = load i32, i32* @O_NOATIME, align 4
  store i32 %85, i32* %84, align 16
  %86 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %83, i32 0, i32 1
  %87 = load i32, i32* @P9_DOTL_NOATIME, align 4
  store i32 %87, i32* %86, align 4
  %88 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %83, i32 0, i32 2
  store i32 0, i32* %88, align 8
  %89 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %83, i32 0, i32 3
  store i32 0, i32* %89, align 4
  %90 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %83, i64 1
  %91 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %90, i32 0, i32 0
  %92 = load i32, i32* @O_CLOEXEC, align 4
  store i32 %92, i32* %91, align 16
  %93 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %90, i32 0, i32 1
  %94 = load i32, i32* @P9_DOTL_CLOEXEC, align 4
  store i32 %94, i32* %93, align 4
  %95 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %90, i32 0, i32 2
  store i32 0, i32* %95, align 8
  %96 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %90, i32 0, i32 3
  store i32 0, i32* %96, align 4
  %97 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %90, i64 1
  %98 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %97, i32 0, i32 0
  %99 = load i32, i32* @O_SYNC, align 4
  store i32 %99, i32* %98, align 16
  %100 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %97, i32 0, i32 1
  %101 = load i32, i32* @P9_DOTL_SYNC, align 4
  store i32 %101, i32* %100, align 4
  %102 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %97, i32 0, i32 2
  store i32 0, i32* %102, align 8
  %103 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %97, i32 0, i32 3
  store i32 0, i32* %103, align 4
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %127, %1
  %105 = load i32, i32* %3, align 4
  %106 = getelementptr inbounds [14 x %struct.dotl_openflag_map], [14 x %struct.dotl_openflag_map]* %5, i64 0, i64 0
  %107 = call i32 @ARRAY_SIZE(%struct.dotl_openflag_map* %106)
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %104
  %110 = load i32, i32* %2, align 4
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [14 x %struct.dotl_openflag_map], [14 x %struct.dotl_openflag_map]* %5, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 16
  %116 = and i32 %110, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %109
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [14 x %struct.dotl_openflag_map], [14 x %struct.dotl_openflag_map]* %5, i64 0, i64 %120
  %122 = getelementptr inbounds %struct.dotl_openflag_map, %struct.dotl_openflag_map* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %4, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %118, %109
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  br label %104

130:                                              ; preds = %104
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @ARRAY_SIZE(%struct.dotl_openflag_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
