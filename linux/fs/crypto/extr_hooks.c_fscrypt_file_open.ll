; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_hooks.c_fscrypt_file_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_hooks.c_fscrypt_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Inconsistent encryption context (parent directory: %lu)\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscrypt_file_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @fscrypt_require_key(%struct.inode* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call i32 @file_dentry(%struct.file* %15)
  %17 = call %struct.dentry* @dget_parent(i32 %16)
  store %struct.dentry* %17, %struct.dentry** %7, align 8
  %18 = load %struct.dentry*, %struct.dentry** %7, align 8
  %19 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %18)
  %20 = call i64 @IS_ENCRYPTED(%struct.TYPE_4__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %14
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %23)
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i32 @fscrypt_has_permitted_context(%struct.TYPE_4__* %24, %struct.inode* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  %31 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fscrypt_warn(%struct.inode* %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %28, %22, %14
  %38 = load %struct.dentry*, %struct.dentry** %7, align 8
  %39 = call i32 @dput(%struct.dentry* %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @fscrypt_require_key(%struct.inode*) #1

declare dso_local %struct.dentry* @dget_parent(i32) #1

declare dso_local i32 @file_dentry(%struct.file*) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @fscrypt_has_permitted_context(%struct.TYPE_4__*, %struct.inode*) #1

declare dso_local i32 @fscrypt_warn(%struct.inode*, i8*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
