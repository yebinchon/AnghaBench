; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_dentry.c_v9fs_lookup_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_dentry.c_v9fs_lookup_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.p9_fid = type { i32 }
%struct.inode = type { i32 }
%struct.v9fs_inode = type { i32 }
%struct.v9fs_session_info = type { i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@V9FS_INO_INVALID_ATTR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @v9fs_lookup_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_lookup_revalidate(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.p9_fid*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.v9fs_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v9fs_session_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @LOOKUP_RCU, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ECHILD, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %70

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = call %struct.inode* @d_inode(%struct.dentry* %19)
  store %struct.inode* %20, %struct.inode** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %69

24:                                               ; preds = %18
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call %struct.v9fs_inode* @V9FS_I(%struct.inode* %25)
  store %struct.v9fs_inode* %26, %struct.v9fs_inode** %8, align 8
  %27 = load %struct.v9fs_inode*, %struct.v9fs_inode** %8, align 8
  %28 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @V9FS_INO_INVALID_ATTR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %24
  %34 = load %struct.dentry*, %struct.dentry** %4, align 8
  %35 = call %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry* %34)
  store %struct.p9_fid* %35, %struct.p9_fid** %6, align 8
  %36 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %37 = call i64 @IS_ERR(%struct.p9_fid* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %41 = call i32 @PTR_ERR(%struct.p9_fid* %40)
  store i32 %41, i32* %3, align 4
  br label %70

42:                                               ; preds = %33
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %43)
  store %struct.v9fs_session_info* %44, %struct.v9fs_session_info** %10, align 8
  %45 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %10, align 8
  %46 = call i64 @v9fs_proto_dotl(%struct.v9fs_session_info* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = call i32 @v9fs_refresh_inode_dotl(%struct.p9_fid* %49, %struct.inode* %50)
  store i32 %51, i32* %9, align 4
  br label %56

52:                                               ; preds = %42
  %53 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = call i32 @v9fs_refresh_inode(%struct.p9_fid* %53, %struct.inode* %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %70

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %70

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %24
  br label %69

69:                                               ; preds = %68, %23
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %65, %61, %39, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.v9fs_inode* @V9FS_I(%struct.inode*) #1

declare dso_local %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local i64 @v9fs_proto_dotl(%struct.v9fs_session_info*) #1

declare dso_local i32 @v9fs_refresh_inode_dotl(%struct.p9_fid*, %struct.inode*) #1

declare dso_local i32 @v9fs_refresh_inode(%struct.p9_fid*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
