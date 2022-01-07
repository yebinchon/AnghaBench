; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.file_lock = type { i32, i32, i32, i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cifsFileInfo = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Lock parm: 0x%x flockflags: 0x%x flocktype: 0x%x start: %lld end: %lld\0A\00", align 1
@CIFS_UNIX_FCNTL_CAP = common dso_local global i32 0, align 4
@CIFS_MOUNT_NOPOSIXBRL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_lock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cifs_sb_info*, align 8
  %15 = alloca %struct.cifs_tcon*, align 8
  %16 = alloca %struct.cifsFileInfo*, align 8
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_lock* %2, %struct.file_lock** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* @EACCES, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  %20 = call i32 (...) @get_xid()
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @FYI, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %24 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %30 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %33 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cifs_dbg(i32 %21, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.cifsFileInfo*
  store %struct.cifsFileInfo* %39, %struct.cifsFileInfo** %16, align 8
  %40 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %41 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.cifs_tcon* @tlink_tcon(i32 %42)
  store %struct.cifs_tcon* %43, %struct.cifs_tcon** %15, align 8
  %44 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %45 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %46 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cifs_read_flock(%struct.file_lock* %44, i32* %17, i32* %10, i32* %11, i32* %12, i32 %49)
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = call %struct.cifs_sb_info* @CIFS_FILE_SB(%struct.file* %51)
  store %struct.cifs_sb_info* %52, %struct.cifs_sb_info** %14, align 8
  %53 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %54 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = call i64 @cap_unix(%struct.TYPE_4__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %3
  %59 = load i32, i32* @CIFS_UNIX_FCNTL_CAP, align 4
  %60 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %61 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @le64_to_cpu(i32 %63)
  %65 = and i32 %59, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %58
  %68 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %69 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CIFS_MOUNT_NOPOSIXBRL, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 1, i32* %13, align 4
  br label %75

75:                                               ; preds = %74, %67, %58, %3
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @IS_GETLK(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load %struct.file*, %struct.file** %5, align 8
  %81 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @cifs_getlk(%struct.file* %80, %struct.file_lock* %81, i32 %82, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @free_xid(i32 %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %4, align 4
  br label %114

90:                                               ; preds = %75
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @free_xid(i32 %97)
  %99 = load i32, i32* @EOPNOTSUPP, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %114

101:                                              ; preds = %93, %90
  %102 = load %struct.file*, %struct.file** %5, align 8
  %103 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @cifs_setlk(%struct.file* %102, %struct.file_lock* %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @free_xid(i32 %111)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %101, %96, %79
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @get_xid(...) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @cifs_read_flock(%struct.file_lock*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local %struct.cifs_sb_info* @CIFS_FILE_SB(%struct.file*) #1

declare dso_local i64 @cap_unix(%struct.TYPE_4__*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @IS_GETLK(i32) #1

declare dso_local i32 @cifs_getlk(%struct.file*, %struct.file_lock*, i32, i32, i32, i32) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @cifs_setlk(%struct.file*, %struct.file_lock*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
