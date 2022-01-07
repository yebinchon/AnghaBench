; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_btrfs_may_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_btrfs_may_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, %struct.dentry* }

@ENOENT = common dso_local global i32 0, align 4
@AUDIT_TYPE_CHILD_DELETE = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@DCACHE_NFSFS_RENAMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @btrfs_may_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_may_delete(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dentry*, %struct.dentry** %6, align 8
  %10 = call i64 @d_really_is_negative(%struct.dentry* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %112

15:                                               ; preds = %3
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 1
  %18 = load %struct.dentry*, %struct.dentry** %17, align 8
  %19 = call %struct.inode* @d_inode(%struct.dentry* %18)
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = icmp ne %struct.inode* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = load i32, i32* @AUDIT_TYPE_CHILD_DELETE, align 4
  %27 = call i32 @audit_inode_child(%struct.inode* %24, %struct.dentry* %25, i32 %26)
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load i32, i32* @MAY_WRITE, align 4
  %30 = load i32, i32* @MAY_EXEC, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @inode_permission(%struct.inode* %28, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %15
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %112

37:                                               ; preds = %15
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = call i64 @IS_APPEND(%struct.inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %112

44:                                               ; preds = %37
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = call %struct.inode* @d_inode(%struct.dentry* %46)
  %48 = call i64 @check_sticky(%struct.inode* %45, %struct.inode* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %44
  %51 = load %struct.dentry*, %struct.dentry** %6, align 8
  %52 = call %struct.inode* @d_inode(%struct.dentry* %51)
  %53 = call i64 @IS_APPEND(%struct.inode* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load %struct.dentry*, %struct.dentry** %6, align 8
  %57 = call %struct.inode* @d_inode(%struct.dentry* %56)
  %58 = call i64 @IS_IMMUTABLE(%struct.inode* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = call %struct.inode* @d_inode(%struct.dentry* %61)
  %63 = call i64 @IS_SWAPFILE(%struct.inode* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %55, %50, %44
  %66 = load i32, i32* @EPERM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %112

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load %struct.dentry*, %struct.dentry** %6, align 8
  %73 = call i64 @d_is_dir(%struct.dentry* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @ENOTDIR, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %112

78:                                               ; preds = %71
  %79 = load %struct.dentry*, %struct.dentry** %6, align 8
  %80 = call i64 @IS_ROOT(%struct.dentry* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %112

85:                                               ; preds = %78
  br label %94

86:                                               ; preds = %68
  %87 = load %struct.dentry*, %struct.dentry** %6, align 8
  %88 = call i64 @d_is_dir(%struct.dentry* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @EISDIR, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %112

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %85
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = call i64 @IS_DEADDIR(%struct.inode* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @ENOENT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %112

101:                                              ; preds = %94
  %102 = load %struct.dentry*, %struct.dentry** %6, align 8
  %103 = getelementptr inbounds %struct.dentry, %struct.dentry* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* @EBUSY, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %112

111:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %108, %98, %90, %82, %75, %65, %41, %35, %12
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @audit_inode_child(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @check_sticky(%struct.inode*, %struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_SWAPFILE(%struct.inode*) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local i64 @IS_DEADDIR(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
