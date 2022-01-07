; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_fscrypt_has_permitted_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_fscrypt_has_permitted_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%union.fscrypt_policy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscrypt_has_permitted_context(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %union.fscrypt_policy, align 4
  %7 = alloca %union.fscrypt_policy, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @S_ISREG(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @S_ISDIR(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @S_ISLNK(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %63

27:                                               ; preds = %20, %14, %2
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call i32 @IS_ENCRYPTED(%struct.inode* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %63

32:                                               ; preds = %27
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call i32 @IS_ENCRYPTED(%struct.inode* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %63

37:                                               ; preds = %32
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = call i32 @fscrypt_get_encryption_info(%struct.inode* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %63

43:                                               ; preds = %37
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = call i32 @fscrypt_get_encryption_info(%struct.inode* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %63

49:                                               ; preds = %43
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = call i32 @fscrypt_get_policy(%struct.inode* %50, %union.fscrypt_policy* %6)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %63

55:                                               ; preds = %49
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = call i32 @fscrypt_get_policy(%struct.inode* %56, %union.fscrypt_policy* %7)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %63

61:                                               ; preds = %55
  %62 = call i32 @fscrypt_policies_equal(%union.fscrypt_policy* %6, %union.fscrypt_policy* %7)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %60, %54, %48, %42, %36, %31, %26
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @fscrypt_get_encryption_info(%struct.inode*) #1

declare dso_local i32 @fscrypt_get_policy(%struct.inode*, %union.fscrypt_policy*) #1

declare dso_local i32 @fscrypt_policies_equal(%union.fscrypt_policy*, %union.fscrypt_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
