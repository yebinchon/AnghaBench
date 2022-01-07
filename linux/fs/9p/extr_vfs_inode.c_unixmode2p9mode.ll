; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_unixmode2p9mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_unixmode2p9mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v9fs_session_info = type { i64 }

@P9_DMDIR = common dso_local global i32 0, align 4
@P9_DMSOCKET = common dso_local global i32 0, align 4
@P9_DMNAMEDPIPE = common dso_local global i32 0, align 4
@P9_DMDEVICE = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@P9_DMSETUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@P9_DMSETGID = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@P9_DMSETVTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v9fs_session_info*, i32)* @unixmode2p9mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unixmode2p9mode(%struct.v9fs_session_info* %0, i32 %1) #0 {
  %3 = alloca %struct.v9fs_session_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 511
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @S_ISDIR(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @P9_DMDIR, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %17 = call i64 @v9fs_proto_dotu(%struct.v9fs_session_info* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %88

19:                                               ; preds = %15
  %20 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %21 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @S_ISSOCK(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @P9_DMSOCKET, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @S_ISFIFO(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @P9_DMNAMEDPIPE, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @S_ISBLK(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @P9_DMDEVICE, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @S_ISCHR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @P9_DMDEVICE, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %19
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @S_ISUID, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @S_ISUID, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @P9_DMSETUID, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @S_ISGID, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @S_ISGID, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* @P9_DMSETGID, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @S_ISVTX, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @S_ISVTX, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* @P9_DMSETVTX, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %77
  br label %88

88:                                               ; preds = %87, %15
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @v9fs_proto_dotu(%struct.v9fs_session_info*) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
