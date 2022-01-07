; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_hooks.c___fscrypt_prepare_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_hooks.c___fscrypt_prepare_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@DCACHE_ENCRYPTED_NAME = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@RENAME_EXCHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fscrypt_prepare_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = call i32 @fscrypt_require_key(%struct.inode* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %6, align 4
  br label %77

19:                                               ; preds = %5
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = call i32 @fscrypt_require_key(%struct.inode* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %6, align 4
  br label %77

26:                                               ; preds = %19
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dentry*, %struct.dentry** %10, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = load i32, i32* @DCACHE_ENCRYPTED_NAME, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @ENOKEY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %77

40:                                               ; preds = %26
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = icmp ne %struct.inode* %41, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %40
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = call i64 @IS_ENCRYPTED(%struct.inode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.inode*, %struct.inode** %9, align 8
  %50 = load %struct.dentry*, %struct.dentry** %8, align 8
  %51 = call i32 @d_inode(%struct.dentry* %50)
  %52 = call i32 @fscrypt_has_permitted_context(%struct.inode* %49, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @EXDEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %77

57:                                               ; preds = %48, %44
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @RENAME_EXCHANGE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = call i64 @IS_ENCRYPTED(%struct.inode* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = load %struct.dentry*, %struct.dentry** %10, align 8
  %69 = call i32 @d_inode(%struct.dentry* %68)
  %70 = call i32 @fscrypt_has_permitted_context(%struct.inode* %67, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @EXDEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %77

75:                                               ; preds = %66, %62, %57
  br label %76

76:                                               ; preds = %75, %40
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %72, %54, %37, %24, %17
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @fscrypt_require_key(%struct.inode*) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @fscrypt_has_permitted_context(%struct.inode*, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
