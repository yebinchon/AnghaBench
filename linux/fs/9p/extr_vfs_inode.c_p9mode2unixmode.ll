; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_p9mode2unixmode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_p9mode2unixmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v9fs_session_info = type { i64 }
%struct.p9_wstat = type { i32, i32 }

@P9_DMDIR = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@P9_DMSYMLINK = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@P9_DMSOCKET = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@P9_DMNAMEDPIPE = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@P9_DMDEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%c %i %i\00", align 1
@S_IFCHR = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown special type %c %s\0A\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v9fs_session_info*, %struct.p9_wstat*, i64*)* @p9mode2unixmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9mode2unixmode(%struct.v9fs_session_info* %0, %struct.p9_wstat* %1, i64* %2) #0 {
  %4 = alloca %struct.v9fs_session_info*, align 8
  %5 = alloca %struct.p9_wstat*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %4, align 8
  store %struct.p9_wstat* %1, %struct.p9_wstat** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load %struct.p9_wstat*, %struct.p9_wstat** %5, align 8
  %14 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i64*, i64** %6, align 8
  store i64 0, i64* %16, align 8
  %17 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %18 = load %struct.p9_wstat*, %struct.p9_wstat** %5, align 8
  %19 = call i32 @p9mode2perm(%struct.v9fs_session_info* %17, %struct.p9_wstat* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @P9_DMDIR, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @P9_DMDIR, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @S_IFDIR, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %130

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @P9_DMSYMLINK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %36 = call i64 @v9fs_proto_dotu(%struct.v9fs_session_info* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @S_IFLNK, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %129

42:                                               ; preds = %34, %29
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @P9_DMSOCKET, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %49 = call i64 @v9fs_proto_dotu(%struct.v9fs_session_info* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %53 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @S_IFSOCK, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %128

60:                                               ; preds = %51, %47, %42
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @P9_DMNAMEDPIPE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %67 = call i64 @v9fs_proto_dotu(%struct.v9fs_session_info* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %71 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @S_IFIFO, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %127

78:                                               ; preds = %69, %65, %60
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @P9_DMDEVICE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %122

83:                                               ; preds = %78
  %84 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %85 = call i64 @v9fs_proto_dotu(%struct.v9fs_session_info* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %122

87:                                               ; preds = %83
  %88 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %89 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %122

92:                                               ; preds = %87
  store i8 0, i8* %9, align 1
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %94 = load %struct.p9_wstat*, %struct.p9_wstat** %5, align 8
  %95 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @strlcpy(i8* %93, i32 %96, i32 32)
  %98 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %99 = call i32 @sscanf(i8* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %9, i32* %11, i32* %12)
  %100 = load i8, i8* %9, align 1
  %101 = sext i8 %100 to i32
  switch i32 %101, label %110 [
    i32 99, label %102
    i32 98, label %106
  ]

102:                                              ; preds = %92
  %103 = load i32, i32* @S_IFCHR, align 4
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %117

106:                                              ; preds = %92
  %107 = load i32, i32* @S_IFBLK, align 4
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %7, align 4
  br label %117

110:                                              ; preds = %92
  %111 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %112 = load i8, i8* %9, align 1
  %113 = load %struct.p9_wstat*, %struct.p9_wstat** %5, align 8
  %114 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @p9_debug(i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8 signext %112, i32 %115)
  br label %117

117:                                              ; preds = %110, %106, %102
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i64 @MKDEV(i32 %118, i32 %119)
  %121 = load i64*, i64** %6, align 8
  store i64 %120, i64* %121, align 8
  br label %126

122:                                              ; preds = %87, %83, %78
  %123 = load i32, i32* @S_IFREG, align 4
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %122, %117
  br label %127

127:                                              ; preds = %126, %74
  br label %128

128:                                              ; preds = %127, %56
  br label %129

129:                                              ; preds = %128, %38
  br label %130

130:                                              ; preds = %129, %25
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local i32 @p9mode2perm(%struct.v9fs_session_info*, %struct.p9_wstat*) #1

declare dso_local i64 @v9fs_proto_dotu(%struct.v9fs_session_info*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @p9_debug(i32, i8*, i8 signext, i32) #1

declare dso_local i64 @MKDEV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
