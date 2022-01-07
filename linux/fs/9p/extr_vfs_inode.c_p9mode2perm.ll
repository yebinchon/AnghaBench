; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_p9mode2perm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_p9mode2perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v9fs_session_info = type { i32 }
%struct.p9_wstat = type { i32 }

@S_IALLUGO = common dso_local global i32 0, align 4
@P9_DMSETUID = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@P9_DMSETGID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@P9_DMSETVTX = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v9fs_session_info*, %struct.p9_wstat*)* @p9mode2perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9mode2perm(%struct.v9fs_session_info* %0, %struct.p9_wstat* %1) #0 {
  %3 = alloca %struct.v9fs_session_info*, align 8
  %4 = alloca %struct.p9_wstat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %3, align 8
  store %struct.p9_wstat* %1, %struct.p9_wstat** %4, align 8
  %7 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %8 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @S_IALLUGO, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %14 = call i64 @v9fs_proto_dotu(%struct.v9fs_session_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @P9_DMSETUID, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @P9_DMSETUID, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @S_ISUID, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @P9_DMSETGID, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @P9_DMSETGID, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @S_ISGID, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @P9_DMSETVTX, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @P9_DMSETVTX, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @S_ISVTX, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @v9fs_proto_dotu(%struct.v9fs_session_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
