; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_do_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_file_do_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.p9_fid* }
%struct.p9_fid = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.file_lock = type { i32, i8, i64, i64, i32 }
%struct.p9_flock = type { i64, i64, i64, i32, i32, i32 }
%struct.v9fs_session_info = type { i32 }

@FL_POSIX = common dso_local global i32 0, align 4
@P9_LOCK_TYPE_RDLCK = common dso_local global i32 0, align 4
@P9_LOCK_TYPE_WRLCK = common dso_local global i32 0, align 4
@P9_LOCK_TYPE_UNLCK = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i64 0, align 8
@P9_LOCK_FLAGS_BLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unknown lock status code: %d\0A\00", align 1
@ENOLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*)* @v9fs_file_do_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_file_do_lock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.p9_flock, align 8
  %8 = alloca %struct.p9_fid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca %struct.v9fs_session_info*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  store i32 130, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  store %struct.p9_fid* %15, %struct.p9_fid** %8, align 8
  %16 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %17 = icmp eq %struct.p9_fid* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %21 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FL_POSIX, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @FL_POSIX, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = call i32 (...) @BUG()
  br label %29

29:                                               ; preds = %27, %3
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %32 = call i32 @locks_lock_file_wait(%struct.file* %30, %struct.file_lock* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %187

36:                                               ; preds = %29
  %37 = call i32 @memset(%struct.p9_flock* %7, i32 0, i32 40)
  %38 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %39 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %38, i32 0, i32 1
  %40 = load i8, i8* %39, align 4
  %41 = sext i8 %40 to i32
  switch i32 %41, label %51 [
    i32 134, label %42
    i32 132, label %45
    i32 133, label %48
  ]

42:                                               ; preds = %36
  %43 = load i32, i32* @P9_LOCK_TYPE_RDLCK, align 4
  %44 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %7, i32 0, i32 5
  store i32 %43, i32* %44, align 8
  br label %51

45:                                               ; preds = %36
  %46 = load i32, i32* @P9_LOCK_TYPE_WRLCK, align 4
  %47 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %7, i32 0, i32 5
  store i32 %46, i32* %47, align 8
  br label %51

48:                                               ; preds = %36
  %49 = load i32, i32* @P9_LOCK_TYPE_UNLCK, align 4
  %50 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %7, i32 0, i32 5
  store i32 %49, i32* %50, align 8
  br label %51

51:                                               ; preds = %36, %48, %45, %42
  %52 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %53 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %7, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %57 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @OFFSET_MAX, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %7, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %73

63:                                               ; preds = %51
  %64 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %65 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %68 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = add nsw i64 %70, 1
  %72 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %7, i32 0, i32 1
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %63, %61
  %74 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %75 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %7, i32 0, i32 4
  store i32 %76, i32* %77, align 4
  %78 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %79 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %7, i32 0, i32 2
  store i64 %82, i64* %83, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i64 @IS_SETLKW(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %73
  %88 = load i32, i32* @P9_LOCK_FLAGS_BLOCK, align 4
  %89 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %7, i32 0, i32 3
  store i32 %88, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %73
  %91 = load %struct.file*, %struct.file** %4, align 8
  %92 = call i32 @file_inode(%struct.file* %91)
  %93 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(i32 %92)
  store %struct.v9fs_session_info* %93, %struct.v9fs_session_info** %12, align 8
  br label %94

94:                                               ; preds = %138, %90
  %95 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %96 = call i32 @p9_client_lock_dotl(%struct.p9_fid* %95, %struct.p9_flock* %7, i32* %9)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %152

100:                                              ; preds = %94
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 131
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %139

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 131
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = call i64 @IS_SETLKW(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  br label %139

112:                                              ; preds = %107, %104
  %113 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %12, align 8
  %114 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @schedule_timeout_interruptible(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %139

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %7, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %123 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %121, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %119
  %129 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %7, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @kfree(i64 %130)
  %132 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %133 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %7, i32 0, i32 2
  store i64 %136, i64* %137, align 8
  br label %138

138:                                              ; preds = %128, %119
  br label %94

139:                                              ; preds = %118, %111, %103
  %140 = load i32, i32* %9, align 4
  switch i32 %140, label %145 [
    i32 128, label %141
    i32 131, label %142
    i32 130, label %148
    i32 129, label %148
  ]

141:                                              ; preds = %139
  store i32 0, i32* %10, align 4
  br label %151

142:                                              ; preds = %139
  %143 = load i32, i32* @EAGAIN, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %10, align 4
  br label %151

145:                                              ; preds = %139
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %139, %139, %145
  %149 = load i32, i32* @ENOLCK, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %148, %142, %141
  br label %152

152:                                              ; preds = %151, %99
  %153 = load i32, i32* %10, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %173

155:                                              ; preds = %152
  %156 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %157 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %156, i32 0, i32 1
  %158 = load i8, i8* %157, align 4
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 133
  br i1 %160, label %161, label %173

161:                                              ; preds = %155
  %162 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %163 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %162, i32 0, i32 1
  %164 = load i8, i8* %163, align 4
  store i8 %164, i8* %11, align 1
  %165 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %166 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %165, i32 0, i32 1
  store i8 -123, i8* %166, align 4
  %167 = load %struct.file*, %struct.file** %4, align 8
  %168 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %169 = call i32 @locks_lock_file_wait(%struct.file* %167, %struct.file_lock* %168)
  %170 = load i8, i8* %11, align 1
  %171 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %172 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %171, i32 0, i32 1
  store i8 %170, i8* %172, align 4
  br label %173

173:                                              ; preds = %161, %155, %152
  %174 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %7, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %177 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %176, i32 0, i32 0
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %175, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %173
  %183 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %7, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @kfree(i64 %184)
  br label %186

186:                                              ; preds = %182, %173
  br label %187

187:                                              ; preds = %186, %35
  %188 = load i32, i32* %10, align 4
  ret i32 %188
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @locks_lock_file_wait(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @memset(%struct.p9_flock*, i32, i32) #1

declare dso_local i64 @IS_SETLKW(i32) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @p9_client_lock_dotl(%struct.p9_fid*, %struct.p9_flock*, i32*) #1

declare dso_local i64 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
