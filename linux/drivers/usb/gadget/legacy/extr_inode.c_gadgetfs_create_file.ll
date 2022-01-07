; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_gadgetfs_create_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_gadgetfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.file_operations = type { i32 }
%struct.inode = type { i32 }

@S_IFREG = common dso_local global i32 0, align 4
@default_perm = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, i8*, i8*, %struct.file_operations*)* @gadgetfs_create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @gadgetfs_create_file(%struct.super_block* %0, i8* %1, i8* %2, %struct.file_operations* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.file_operations*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.file_operations* %3, %struct.file_operations** %9, align 8
  %12 = load %struct.super_block*, %struct.super_block** %6, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.dentry* @d_alloc_name(i32 %14, i8* %15)
  store %struct.dentry* %16, %struct.dentry** %10, align 8
  %17 = load %struct.dentry*, %struct.dentry** %10, align 8
  %18 = icmp ne %struct.dentry* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %40

20:                                               ; preds = %4
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %24 = load i32, i32* @S_IFREG, align 4
  %25 = load i32, i32* @default_perm, align 4
  %26 = load i32, i32* @S_IRWXUGO, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %24, %27
  %29 = call %struct.inode* @gadgetfs_make_inode(%struct.super_block* %21, i8* %22, %struct.file_operations* %23, i32 %28)
  store %struct.inode* %29, %struct.inode** %11, align 8
  %30 = load %struct.inode*, %struct.inode** %11, align 8
  %31 = icmp ne %struct.inode* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %20
  %33 = load %struct.dentry*, %struct.dentry** %10, align 8
  %34 = call i32 @dput(%struct.dentry* %33)
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %40

35:                                               ; preds = %20
  %36 = load %struct.dentry*, %struct.dentry** %10, align 8
  %37 = load %struct.inode*, %struct.inode** %11, align 8
  %38 = call i32 @d_add(%struct.dentry* %36, %struct.inode* %37)
  %39 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %39, %struct.dentry** %5, align 8
  br label %40

40:                                               ; preds = %35, %32, %19
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %41
}

declare dso_local %struct.dentry* @d_alloc_name(i32, i8*) #1

declare dso_local %struct.inode* @gadgetfs_make_inode(%struct.super_block*, i8*, %struct.file_operations*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
