; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_gadgetfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_gadgetfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_data = type { i32, %struct.super_block* }
%struct.super_block = type { i32, i32, i32*, i32, i32, i32 }
%struct.fs_context = type { i32 }
%struct.inode = type { i32* }

@the_device = common dso_local global %struct.dev_data* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@CHIP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GADGETFS_MAGIC = common dso_local global i32 0, align 4
@gadget_fs_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@ep0_operations = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @gadgetfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gadgetfs_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dev_data*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %8 = load %struct.dev_data*, %struct.dev_data** @the_device, align 8
  %9 = icmp ne %struct.dev_data* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ESRCH, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %80

13:                                               ; preds = %2
  %14 = call i32 (...) @usb_get_gadget_udc_name()
  store i32 %14, i32* @CHIP, align 4
  %15 = load i32, i32* @CHIP, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %80

20:                                               ; preds = %13
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @GADGETFS_MAGIC, align 4
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = getelementptr inbounds %struct.super_block, %struct.super_block* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.super_block*, %struct.super_block** %4, align 8
  %31 = getelementptr inbounds %struct.super_block, %struct.super_block* %30, i32 0, i32 2
  store i32* @gadget_fs_operations, i32** %31, align 8
  %32 = load %struct.super_block*, %struct.super_block** %4, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = load i32, i32* @S_IFDIR, align 4
  %36 = load i32, i32* @S_IRUGO, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @S_IXUGO, align 4
  %39 = or i32 %37, %38
  %40 = call %struct.inode* @gadgetfs_make_inode(%struct.super_block* %34, i32* null, i32* @simple_dir_operations, i32 %39)
  store %struct.inode* %40, %struct.inode** %6, align 8
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = icmp ne %struct.inode* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %20
  br label %77

44:                                               ; preds = %20
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  store i32* @simple_dir_inode_operations, i32** %46, align 8
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = call i32 @d_make_root(%struct.inode* %47)
  %49 = load %struct.super_block*, %struct.super_block** %4, align 8
  %50 = getelementptr inbounds %struct.super_block, %struct.super_block* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = icmp ne i32 %48, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %77

53:                                               ; preds = %44
  %54 = call %struct.dev_data* (...) @dev_new()
  store %struct.dev_data* %54, %struct.dev_data** %7, align 8
  %55 = load %struct.dev_data*, %struct.dev_data** %7, align 8
  %56 = icmp ne %struct.dev_data* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %77

58:                                               ; preds = %53
  %59 = load %struct.super_block*, %struct.super_block** %4, align 8
  %60 = load %struct.dev_data*, %struct.dev_data** %7, align 8
  %61 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %60, i32 0, i32 1
  store %struct.super_block* %59, %struct.super_block** %61, align 8
  %62 = load %struct.super_block*, %struct.super_block** %4, align 8
  %63 = load i32, i32* @CHIP, align 4
  %64 = load %struct.dev_data*, %struct.dev_data** %7, align 8
  %65 = call i32 @gadgetfs_create_file(%struct.super_block* %62, i32 %63, %struct.dev_data* %64, i32* @ep0_operations)
  %66 = load %struct.dev_data*, %struct.dev_data** %7, align 8
  %67 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.dev_data*, %struct.dev_data** %7, align 8
  %69 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %58
  %73 = load %struct.dev_data*, %struct.dev_data** %7, align 8
  %74 = call i32 @put_dev(%struct.dev_data* %73)
  br label %77

75:                                               ; preds = %58
  %76 = load %struct.dev_data*, %struct.dev_data** %7, align 8
  store %struct.dev_data* %76, %struct.dev_data** @the_device, align 8
  store i32 0, i32* %3, align 4
  br label %80

77:                                               ; preds = %72, %57, %52, %43
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %75, %17, %10
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @usb_get_gadget_udc_name(...) #1

declare dso_local %struct.inode* @gadgetfs_make_inode(%struct.super_block*, i32*, i32*, i32) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

declare dso_local %struct.dev_data* @dev_new(...) #1

declare dso_local i32 @gadgetfs_create_file(%struct.super_block*, i32, %struct.dev_data*, i32*) #1

declare dso_local i32 @put_dev(%struct.dev_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
