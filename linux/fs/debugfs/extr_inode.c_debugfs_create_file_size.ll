; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_create_file_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_create_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @debugfs_create_file_size(i8* %0, i32 %1, %struct.dentry* %2, i8* %3, %struct.file_operations* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.file_operations*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dentry*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.dentry* %2, %struct.dentry** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.file_operations* %4, %struct.file_operations** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.dentry*, %struct.dentry** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %19 = call %struct.dentry* @debugfs_create_file(i8* %14, i32 %15, %struct.dentry* %16, i8* %17, %struct.file_operations* %18)
  store %struct.dentry* %19, %struct.dentry** %13, align 8
  %20 = load %struct.dentry*, %struct.dentry** %13, align 8
  %21 = icmp ne %struct.dentry* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.dentry*, %struct.dentry** %13, align 8
  %25 = call %struct.TYPE_2__* @d_inode(%struct.dentry* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %6
  %28 = load %struct.dentry*, %struct.dentry** %13, align 8
  ret %struct.dentry* %28
}

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, i8*, %struct.file_operations*) #1

declare dso_local %struct.TYPE_2__* @d_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
