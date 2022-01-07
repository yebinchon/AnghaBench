; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_sb_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_sb_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32*, i32, i32, i32, %struct.ffs_data* }
%struct.ffs_data = type { %struct.super_block* }
%struct.fs_context = type { %struct.ffs_sb_fill_data* }
%struct.ffs_sb_fill_data = type { %struct.TYPE_2__, i32, %struct.ffs_data* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@FUNCTIONFS_MAGIC = common dso_local global i32 0, align 4
@ffs_sb_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ep0\00", align 1
@ffs_ep0_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @ffs_sb_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_sb_fill(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.ffs_sb_fill_data*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ffs_data*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %10 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %9, i32 0, i32 0
  %11 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %10, align 8
  store %struct.ffs_sb_fill_data* %11, %struct.ffs_sb_fill_data** %6, align 8
  %12 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %6, align 8
  %13 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %12, i32 0, i32 2
  %14 = load %struct.ffs_data*, %struct.ffs_data** %13, align 8
  store %struct.ffs_data* %14, %struct.ffs_data** %8, align 8
  %15 = call i32 (...) @ENTER()
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = load %struct.ffs_data*, %struct.ffs_data** %8, align 8
  %18 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %17, i32 0, i32 0
  store %struct.super_block* %16, %struct.super_block** %18, align 8
  %19 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %6, align 8
  %20 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %19, i32 0, i32 2
  store %struct.ffs_data* null, %struct.ffs_data** %20, align 8
  %21 = load %struct.ffs_data*, %struct.ffs_data** %8, align 8
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 6
  store %struct.ffs_data* %21, %struct.ffs_data** %23, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = getelementptr inbounds %struct.super_block, %struct.super_block* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @FUNCTIONFS_MAGIC, align 4
  %31 = load %struct.super_block*, %struct.super_block** %4, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.super_block*, %struct.super_block** %4, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 2
  store i32* @ffs_sb_operations, i32** %34, align 8
  %35 = load %struct.super_block*, %struct.super_block** %4, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %6, align 8
  %38 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %6, align 8
  %41 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %6, align 8
  %45 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %44, i32 0, i32 0
  %46 = call %struct.inode* @ffs_sb_make_inode(%struct.super_block* %43, i32* null, i32* @simple_dir_operations, i32* @simple_dir_inode_operations, %struct.TYPE_2__* %45)
  store %struct.inode* %46, %struct.inode** %7, align 8
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = call i32 @d_make_root(%struct.inode* %47)
  %49 = load %struct.super_block*, %struct.super_block** %4, align 8
  %50 = getelementptr inbounds %struct.super_block, %struct.super_block* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.super_block*, %struct.super_block** %4, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %2
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %75

62:                                               ; preds = %2
  %63 = load %struct.super_block*, %struct.super_block** %4, align 8
  %64 = load %struct.ffs_data*, %struct.ffs_data** %8, align 8
  %65 = call i32 @ffs_sb_create_file(%struct.super_block* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.ffs_data* %64, i32* @ffs_ep0_operations)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %71, %59
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ENTER(...) #1

declare dso_local %struct.inode* @ffs_sb_make_inode(%struct.super_block*, i32*, i32*, i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ffs_sb_create_file(%struct.super_block*, i8*, %struct.ffs_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
