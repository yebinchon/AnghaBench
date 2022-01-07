; ModuleID = '/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_devpts_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_devpts_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32, i32*, i32, i32*, i32*, i32, i32 }
%struct.inode = type { i32, i32, i32*, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SB_I_NODEV = common dso_local global i32 0, align 4
@DEVPTS_SUPER_MAGIC = common dso_local global i32 0, align 4
@devpts_sops = common dso_local global i32 0, align 4
@simple_dentry_operations = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PARSE_MOUNT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"get root dentry failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @devpts_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devpts_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @SB_I_NODEV, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  store i32 1024, i32* %17, align 8
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 1
  store i32 10, i32* %19, align 4
  %20 = load i32, i32* @DEVPTS_SUPER_MAGIC, align 4
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 6
  store i32* @devpts_sops, i32** %24, align 8
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 5
  store i32* @simple_dentry_operations, i32** %26, align 8
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = call i32 @new_pts_fs_info(%struct.super_block* %31)
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %3
  br label %108

40:                                               ; preds = %3
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @PARSE_MOUNT, align 4
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = call %struct.TYPE_2__* @DEVPTS_SB(%struct.super_block* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @parse_mount_options(i8* %41, i32 %42, i32* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %108

50:                                               ; preds = %40
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = call %struct.inode* @new_inode(%struct.super_block* %53)
  store %struct.inode* %54, %struct.inode** %8, align 8
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = icmp ne %struct.inode* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %108

58:                                               ; preds = %50
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = call i32 @current_time(%struct.inode* %61)
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 5
  store i32 %62, i32* %66, align 4
  %67 = load %struct.inode*, %struct.inode** %8, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 6
  store i32 %62, i32* %68, align 8
  %69 = load i32, i32* @S_IFDIR, align 4
  %70 = load i32, i32* @S_IRUGO, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @S_IXUGO, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @S_IWUSR, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.inode*, %struct.inode** %8, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 3
  store i32* @simple_dir_inode_operations, i32** %79, align 8
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 2
  store i32* @simple_dir_operations, i32** %81, align 8
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = call i32 @set_nlink(%struct.inode* %82, i32 2)
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = call i32* @d_make_root(%struct.inode* %84)
  %86 = load %struct.super_block*, %struct.super_block** %5, align 8
  %87 = getelementptr inbounds %struct.super_block, %struct.super_block* %86, i32 0, i32 3
  store i32* %85, i32** %87, align 8
  %88 = load %struct.super_block*, %struct.super_block** %5, align 8
  %89 = getelementptr inbounds %struct.super_block, %struct.super_block* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %58
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %108

94:                                               ; preds = %58
  %95 = load %struct.super_block*, %struct.super_block** %5, align 8
  %96 = call i32 @mknod_ptmx(%struct.super_block* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %101

100:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %110

101:                                              ; preds = %99
  %102 = load %struct.super_block*, %struct.super_block** %5, align 8
  %103 = getelementptr inbounds %struct.super_block, %struct.super_block* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @dput(i32* %104)
  %106 = load %struct.super_block*, %struct.super_block** %5, align 8
  %107 = getelementptr inbounds %struct.super_block, %struct.super_block* %106, i32 0, i32 3
  store i32* null, i32** %107, align 8
  br label %108

108:                                              ; preds = %101, %92, %57, %49, %39
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %100
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @new_pts_fs_info(%struct.super_block*) #1

declare dso_local i32 @parse_mount_options(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @DEVPTS_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32* @d_make_root(%struct.inode*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mknod_ptmx(%struct.super_block*) #1

declare dso_local i32 @dput(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
