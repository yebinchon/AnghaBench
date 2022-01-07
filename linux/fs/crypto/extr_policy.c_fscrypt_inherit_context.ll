; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_fscrypt_inherit_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_fscrypt_inherit_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.inode*, %union.fscrypt_context*, i32, i8*)* }
%union.fscrypt_context = type { i32 }
%struct.fscrypt_info = type { i32 }

@ENOKEY = common dso_local global i32 0, align 4
@FSCRYPT_SET_CONTEXT_MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscrypt_inherit_context(%struct.inode* %0, %struct.inode* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.fscrypt_context, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fscrypt_info*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call i32 @fscrypt_get_encryption_info(%struct.inode* %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %5, align 4
  br label %63

20:                                               ; preds = %4
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.fscrypt_info* @READ_ONCE(i32 %23)
  store %struct.fscrypt_info* %24, %struct.fscrypt_info** %12, align 8
  %25 = load %struct.fscrypt_info*, %struct.fscrypt_info** %12, align 8
  %26 = icmp eq %struct.fscrypt_info* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOKEY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %63

30:                                               ; preds = %20
  %31 = load %struct.fscrypt_info*, %struct.fscrypt_info** %12, align 8
  %32 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %31, i32 0, i32 0
  %33 = call i32 @fscrypt_new_context_from_policy(%union.fscrypt_context* %10, i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @FSCRYPT_SET_CONTEXT_MAX_SIZE, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 4, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUILD_BUG_ON(i32 %37)
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.inode*, %union.fscrypt_context*, i32, i8*)*, i32 (%struct.inode*, %union.fscrypt_context*, i32, i8*)** %44, align 8
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 %45(%struct.inode* %46, %union.fscrypt_context* %10, i32 %47, i8* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %30
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %5, align 4
  br label %63

54:                                               ; preds = %30
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = call i32 @fscrypt_get_encryption_info(%struct.inode* %58)
  br label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %59, %57 ], [ 0, %60 ]
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %52, %27, %18
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @fscrypt_get_encryption_info(%struct.inode*) #1

declare dso_local %struct.fscrypt_info* @READ_ONCE(i32) #1

declare dso_local i32 @fscrypt_new_context_from_policy(%union.fscrypt_context*, i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
