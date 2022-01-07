; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_hooks.c___fscrypt_prepare_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_hooks.c___fscrypt_prepare_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, i32, i32 }
%struct.fscrypt_name = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@DCACHE_ENCRYPTED_NAME = common dso_local global i32 0, align 4
@fscrypt_d_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fscrypt_prepare_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.fscrypt_name* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.fscrypt_name*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.fscrypt_name* %2, %struct.fscrypt_name** %7, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 2
  %12 = load %struct.fscrypt_name*, %struct.fscrypt_name** %7, align 8
  %13 = call i32 @fscrypt_setup_filename(%struct.inode* %9, i32* %11, i32 1, %struct.fscrypt_name* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %44

23:                                               ; preds = %16, %3
  %24 = load %struct.fscrypt_name*, %struct.fscrypt_name** %7, align 8
  %25 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load i32, i32* @DCACHE_ENCRYPTED_NAME, align 4
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.dentry*, %struct.dentry** %6, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = call i32 @d_set_d_op(%struct.dentry* %40, i32* @fscrypt_d_ops)
  br label %42

42:                                               ; preds = %28, %23
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %21
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @fscrypt_setup_filename(%struct.inode*, i32*, i32, %struct.fscrypt_name*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @d_set_d_op(%struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
