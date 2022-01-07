; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_getlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_getlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.p9_fid* }
%struct.p9_fid = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.file_lock = type { i64, i64, i64, i32 }
%struct.p9_getlock = type { i32, i64, i64, i64, i32 }

@F_UNLCK = common dso_local global i64 0, align 8
@OFFSET_MAX = common dso_local global i64 0, align 8
@F_RDLCK = common dso_local global i64 0, align 8
@F_WRLCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.file_lock*)* @v9fs_file_getlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_file_getlock(%struct.file* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca %struct.p9_getlock, align 8
  %7 = alloca %struct.p9_fid*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  store %struct.p9_fid* %11, %struct.p9_fid** %7, align 8
  %12 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %13 = icmp eq %struct.p9_fid* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %18 = call i32 @posix_test_lock(%struct.file* %16, %struct.file_lock* %17)
  %19 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %20 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @F_UNLCK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %128

26:                                               ; preds = %2
  %27 = call i32 @memset(%struct.p9_getlock* %6, i32 0, i32 40)
  %28 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %6, i32 0, i32 0
  store i32 129, i32* %28, align 8
  %29 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %30 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %6, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %34 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @OFFSET_MAX, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %6, i32 0, i32 2
  store i64 0, i64* %39, align 8
  br label %50

40:                                               ; preds = %26
  %41 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %42 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %45 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = add nsw i64 %47, 1
  %49 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %6, i32 0, i32 2
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %40, %38
  %51 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %52 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %6, i32 0, i32 4
  store i32 %53, i32* %54, align 8
  %55 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %56 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %6, i32 0, i32 3
  store i64 %59, i64* %60, align 8
  %61 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %62 = call i32 @p9_client_getlock_dotl(%struct.p9_fid* %61, %struct.p9_getlock* %6)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %113

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %81 [
    i32 130, label %69
    i32 128, label %73
    i32 129, label %77
  ]

69:                                               ; preds = %66
  %70 = load i64, i64* @F_RDLCK, align 8
  %71 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %72 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %81

73:                                               ; preds = %66
  %74 = load i64, i64* @F_WRLCK, align 8
  %75 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %76 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %81

77:                                               ; preds = %66
  %78 = load i64, i64* @F_UNLCK, align 8
  %79 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %80 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %66, %77, %73, %69
  %82 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %6, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 129
  br i1 %84, label %85, label %112

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %6, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %89 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %6, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load i64, i64* @OFFSET_MAX, align 8
  %95 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %96 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  br label %106

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %6, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %6, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %99, %101
  %103 = sub nsw i64 %102, 1
  %104 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %105 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %97, %93
  %107 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %6, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 0, %108
  %110 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %111 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %106, %81
  br label %113

113:                                              ; preds = %112, %65
  %114 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %6, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %117 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %115, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %6, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @kfree(i64 %124)
  br label %126

126:                                              ; preds = %122, %113
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %24
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @posix_test_lock(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @memset(%struct.p9_getlock*, i32, i32) #1

declare dso_local i32 @p9_client_getlock_dotl(%struct.p9_fid*, %struct.p9_getlock*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
