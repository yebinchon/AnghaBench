; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to create file inlower filesystem\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @ecryptfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.inode* @ecryptfs_do_create(%struct.inode* %11, %struct.dentry* %12, i32 %13)
  store %struct.inode* %14, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %9, align 8
  %16 = call i64 @IS_ERR(%struct.inode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i32, i32* @KERN_WARNING, align 4
  %20 = call i32 @ecryptfs_printk(i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = call i32 @PTR_ERR(%struct.inode* %21)
  store i32 %22, i32* %10, align 4
  br label %40

23:                                               ; preds = %4
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = call i32 @ecryptfs_initialize_file(%struct.dentry* %24, %struct.inode* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = call i32 @ecryptfs_do_unlink(%struct.inode* %30, %struct.dentry* %31, %struct.inode* %32)
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = call i32 @iget_failed(%struct.inode* %34)
  br label %40

36:                                               ; preds = %23
  %37 = load %struct.dentry*, %struct.dentry** %6, align 8
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = call i32 @d_instantiate_new(%struct.dentry* %37, %struct.inode* %38)
  br label %40

40:                                               ; preds = %36, %29, %18
  %41 = load i32, i32* %10, align 4
  ret i32 %41
}

declare dso_local %struct.inode* @ecryptfs_do_create(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @ecryptfs_printk(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @ecryptfs_initialize_file(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ecryptfs_do_unlink(%struct.inode*, %struct.dentry*, %struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
