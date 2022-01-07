; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_allocate_filesystem_keyring.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_allocate_filesystem_keyring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64 }
%struct.key = type { i32 }

@FSCRYPT_FS_KEYRING_DESCRIPTION_SIZE = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@KEY_POS_SEARCH = common dso_local global i32 0, align 4
@KEY_USR_SEARCH = common dso_local global i32 0, align 4
@KEY_USR_READ = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_ALLOC_NOT_IN_QUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @allocate_filesystem_keyring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_filesystem_keyring(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %8 = load i32, i32* @FSCRYPT_FS_KEYRING_DESCRIPTION_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %43

17:                                               ; preds = %1
  %18 = load %struct.super_block*, %struct.super_block** %3, align 8
  %19 = call i32 @format_fs_keyring_description(i8* %11, %struct.super_block* %18)
  %20 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %21 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %22 = call i32 (...) @current_cred()
  %23 = load i32, i32* @KEY_POS_SEARCH, align 4
  %24 = load i32, i32* @KEY_USR_SEARCH, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @KEY_USR_READ, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @KEY_USR_VIEW, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @KEY_ALLOC_NOT_IN_QUOTA, align 4
  %31 = call %struct.key* @keyring_alloc(i8* %11, i32 %20, i32 %21, i32 %22, i32 %29, i32 %30, i32* null, i32* null)
  store %struct.key* %31, %struct.key** %6, align 8
  %32 = load %struct.key*, %struct.key** %6, align 8
  %33 = call i64 @IS_ERR(%struct.key* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load %struct.key*, %struct.key** %6, align 8
  %37 = call i32 @PTR_ERR(%struct.key* %36)
  store i32 %37, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %43

38:                                               ; preds = %17
  %39 = load %struct.super_block*, %struct.super_block** %3, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 0
  %41 = load %struct.key*, %struct.key** %6, align 8
  %42 = call i32 @smp_store_release(i64* %40, %struct.key* %41)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %35, %16
  %44 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @format_fs_keyring_description(i8*, %struct.super_block*) #2

declare dso_local %struct.key* @keyring_alloc(i8*, i32, i32, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @current_cred(...) #2

declare dso_local i64 @IS_ERR(%struct.key*) #2

declare dso_local i32 @PTR_ERR(%struct.key*) #2

declare dso_local i32 @smp_store_release(i64*, %struct.key*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
