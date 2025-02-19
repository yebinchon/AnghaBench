; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_hooks.c___fscrypt_prepare_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_hooks.c___fscrypt_prepare_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@DCACHE_ENCRYPTED_NAME = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fscrypt_prepare_link(%struct.inode* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %9 = load %struct.inode*, %struct.inode** %6, align 8
  %10 = call i32 @fscrypt_require_key(%struct.inode* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DCACHE_ENCRYPTED_NAME, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOKEY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %34

25:                                               ; preds = %15
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call i32 @fscrypt_has_permitted_context(%struct.inode* %26, %struct.inode* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EXDEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %34

33:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %30, %22, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @fscrypt_require_key(%struct.inode*) #1

declare dso_local i32 @fscrypt_has_permitted_context(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
