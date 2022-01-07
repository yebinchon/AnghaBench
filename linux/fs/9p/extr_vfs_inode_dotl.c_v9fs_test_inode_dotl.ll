; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_test_inode_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_test_inode_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64 }
%struct.v9fs_inode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.p9_stat_dotl = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @v9fs_test_inode_dotl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_test_inode_dotl(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v9fs_inode*, align 8
  %7 = alloca %struct.p9_stat_dotl*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.v9fs_inode* @V9FS_I(%struct.inode* %8)
  store %struct.v9fs_inode* %9, %struct.v9fs_inode** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.p9_stat_dotl*
  store %struct.p9_stat_dotl* %11, %struct.p9_stat_dotl** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @S_IFMT, align 4
  %16 = and i32 %14, %15
  %17 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %7, align 8
  %18 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @S_IFMT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

24:                                               ; preds = %2
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %7, align 8
  %29 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %66

33:                                               ; preds = %24
  %34 = load %struct.v9fs_inode*, %struct.v9fs_inode** %6, align 8
  %35 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %7, align 8
  %38 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = call i64 @memcmp(i32* %36, i32* %39, i32 4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %66

43:                                               ; preds = %33
  %44 = load %struct.v9fs_inode*, %struct.v9fs_inode** %6, align 8
  %45 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %7, align 8
  %49 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %66

54:                                               ; preds = %43
  %55 = load %struct.v9fs_inode*, %struct.v9fs_inode** %6, align 8
  %56 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %7, align 8
  %60 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %66

65:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %53, %42, %32, %23
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.v9fs_inode* @V9FS_I(%struct.inode*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
