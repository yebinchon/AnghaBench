; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_oprofilefs.c___oprofilefs_create_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_oprofilefs.c___oprofilefs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }
%struct.inode = type { i8*, %struct.file_operations* }

@ENOMEM = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, %struct.file_operations*, i32, i8*)* @__oprofilefs_create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__oprofilefs_create_file(%struct.dentry* %0, i8* %1, %struct.file_operations* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.file_operations*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.file_operations* %2, %struct.file_operations** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load %struct.dentry*, %struct.dentry** %7, align 8
  %15 = icmp ne %struct.dentry* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %65

19:                                               ; preds = %5
  %20 = load %struct.dentry*, %struct.dentry** %7, align 8
  %21 = call i32 @d_inode(%struct.dentry* %20)
  %22 = call i32 @inode_lock(i32 %21)
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call %struct.dentry* @d_alloc_name(%struct.dentry* %23, i8* %24)
  store %struct.dentry* %25, %struct.dentry** %12, align 8
  %26 = load %struct.dentry*, %struct.dentry** %12, align 8
  %27 = icmp ne %struct.dentry* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = call i32 @d_inode(%struct.dentry* %29)
  %31 = call i32 @inode_unlock(i32 %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %65

34:                                               ; preds = %19
  %35 = load %struct.dentry*, %struct.dentry** %7, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @S_IFREG, align 4
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %38, %39
  %41 = call %struct.inode* @oprofilefs_get_inode(i32 %37, i32 %40)
  store %struct.inode* %41, %struct.inode** %13, align 8
  %42 = load %struct.inode*, %struct.inode** %13, align 8
  %43 = icmp ne %struct.inode* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %34
  %45 = load %struct.dentry*, %struct.dentry** %12, align 8
  %46 = call i32 @dput(%struct.dentry* %45)
  %47 = load %struct.dentry*, %struct.dentry** %7, align 8
  %48 = call i32 @d_inode(%struct.dentry* %47)
  %49 = call i32 @inode_unlock(i32 %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %65

52:                                               ; preds = %34
  %53 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %54 = load %struct.inode*, %struct.inode** %13, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  store %struct.file_operations* %53, %struct.file_operations** %55, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load %struct.inode*, %struct.inode** %13, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.dentry*, %struct.dentry** %12, align 8
  %60 = load %struct.inode*, %struct.inode** %13, align 8
  %61 = call i32 @d_add(%struct.dentry* %59, %struct.inode* %60)
  %62 = load %struct.dentry*, %struct.dentry** %7, align 8
  %63 = call i32 @d_inode(%struct.dentry* %62)
  %64 = call i32 @inode_unlock(i32 %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %52, %44, %28, %16
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i8*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local %struct.inode* @oprofilefs_get_inode(i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
