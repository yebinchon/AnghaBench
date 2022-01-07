; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_test_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_test_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.v9fs_inode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.p9_wstat = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.v9fs_session_info = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @v9fs_test_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_test_inode(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v9fs_inode*, align 8
  %9 = alloca %struct.p9_wstat*, align 8
  %10 = alloca %struct.v9fs_session_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.v9fs_inode* @V9FS_I(%struct.inode* %11)
  store %struct.v9fs_inode* %12, %struct.v9fs_inode** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.p9_wstat*
  store %struct.p9_wstat* %14, %struct.p9_wstat** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %15)
  store %struct.v9fs_session_info* %16, %struct.v9fs_session_info** %10, align 8
  %17 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %10, align 8
  %18 = load %struct.p9_wstat*, %struct.p9_wstat** %9, align 8
  %19 = call i32 @p9mode2unixmode(%struct.v9fs_session_info* %17, %struct.p9_wstat* %18, i32* %7)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @S_IFMT, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @S_IFMT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

30:                                               ; preds = %2
  %31 = load %struct.v9fs_inode*, %struct.v9fs_inode** %8, align 8
  %32 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load %struct.p9_wstat*, %struct.p9_wstat** %9, align 8
  %35 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = call i64 @memcmp(i32* %33, i32* %36, i32 4)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %63

40:                                               ; preds = %30
  %41 = load %struct.v9fs_inode*, %struct.v9fs_inode** %8, align 8
  %42 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.p9_wstat*, %struct.p9_wstat** %9, align 8
  %46 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %63

51:                                               ; preds = %40
  %52 = load %struct.v9fs_inode*, %struct.v9fs_inode** %8, align 8
  %53 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.p9_wstat*, %struct.p9_wstat** %9, align 8
  %57 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %63

62:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %61, %50, %39, %29
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.v9fs_inode* @V9FS_I(%struct.inode*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local i32 @p9mode2unixmode(%struct.v9fs_session_info*, %struct.p9_wstat*, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
