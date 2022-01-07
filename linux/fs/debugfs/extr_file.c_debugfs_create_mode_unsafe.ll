; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_debugfs_create_mode_unsafe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_debugfs_create_mode_unsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }

@S_IWUGO = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (i8*, i32, %struct.dentry*, i8*, %struct.file_operations*, %struct.file_operations*, %struct.file_operations*)* @debugfs_create_mode_unsafe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @debugfs_create_mode_unsafe(i8* %0, i32 %1, %struct.dentry* %2, i8* %3, %struct.file_operations* %4, %struct.file_operations* %5, %struct.file_operations* %6) #0 {
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.file_operations*, align 8
  %14 = alloca %struct.file_operations*, align 8
  %15 = alloca %struct.file_operations*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.dentry* %2, %struct.dentry** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.file_operations* %4, %struct.file_operations** %13, align 8
  store %struct.file_operations* %5, %struct.file_operations** %14, align 8
  store %struct.file_operations* %6, %struct.file_operations** %15, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @S_IWUGO, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %7
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.dentry*, %struct.dentry** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load %struct.file_operations*, %struct.file_operations** %14, align 8
  %26 = call %struct.dentry* @debugfs_create_file_unsafe(i8* %21, i32 %22, %struct.dentry* %23, i8* %24, %struct.file_operations* %25)
  store %struct.dentry* %26, %struct.dentry** %8, align 8
  br label %46

27:                                               ; preds = %7
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @S_IRUGO, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.dentry*, %struct.dentry** %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load %struct.file_operations*, %struct.file_operations** %15, align 8
  %38 = call %struct.dentry* @debugfs_create_file_unsafe(i8* %33, i32 %34, %struct.dentry* %35, i8* %36, %struct.file_operations* %37)
  store %struct.dentry* %38, %struct.dentry** %8, align 8
  br label %46

39:                                               ; preds = %27
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.dentry*, %struct.dentry** %11, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load %struct.file_operations*, %struct.file_operations** %13, align 8
  %45 = call %struct.dentry* @debugfs_create_file_unsafe(i8* %40, i32 %41, %struct.dentry* %42, i8* %43, %struct.file_operations* %44)
  store %struct.dentry* %45, %struct.dentry** %8, align 8
  br label %46

46:                                               ; preds = %39, %32, %20
  %47 = load %struct.dentry*, %struct.dentry** %8, align 8
  ret %struct.dentry* %47
}

declare dso_local %struct.dentry* @debugfs_create_file_unsafe(i8*, i32, %struct.dentry*, i8*, %struct.file_operations*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
