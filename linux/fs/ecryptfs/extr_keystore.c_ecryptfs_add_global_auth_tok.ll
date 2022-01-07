; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_keystore.c_ecryptfs_add_global_auth_tok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_keystore.c_ecryptfs_add_global_auth_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_mount_crypt_stat = type { i32, i32 }
%struct.ecryptfs_global_auth_tok = type { i8*, i32, i32 }

@ecryptfs_global_auth_tok_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ECRYPTFS_SIG_SIZE_HEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_add_global_auth_tok(%struct.ecryptfs_mount_crypt_stat* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecryptfs_mount_crypt_stat*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecryptfs_global_auth_tok*, align 8
  store %struct.ecryptfs_mount_crypt_stat* %0, %struct.ecryptfs_mount_crypt_stat** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @ecryptfs_global_auth_tok_cache, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ecryptfs_global_auth_tok* @kmem_cache_zalloc(i32 %9, i32 %10)
  store %struct.ecryptfs_global_auth_tok* %11, %struct.ecryptfs_global_auth_tok** %8, align 8
  %12 = load %struct.ecryptfs_global_auth_tok*, %struct.ecryptfs_global_auth_tok** %8, align 8
  %13 = icmp ne %struct.ecryptfs_global_auth_tok* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %43

17:                                               ; preds = %3
  %18 = load %struct.ecryptfs_global_auth_tok*, %struct.ecryptfs_global_auth_tok** %8, align 8
  %19 = getelementptr inbounds %struct.ecryptfs_global_auth_tok, %struct.ecryptfs_global_auth_tok* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* @ECRYPTFS_SIG_SIZE_HEX, align 8
  %23 = call i32 @memcpy(i8* %20, i8* %21, i64 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.ecryptfs_global_auth_tok*, %struct.ecryptfs_global_auth_tok** %8, align 8
  %26 = getelementptr inbounds %struct.ecryptfs_global_auth_tok, %struct.ecryptfs_global_auth_tok* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ecryptfs_global_auth_tok*, %struct.ecryptfs_global_auth_tok** %8, align 8
  %28 = getelementptr inbounds %struct.ecryptfs_global_auth_tok, %struct.ecryptfs_global_auth_tok* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i64, i64* @ECRYPTFS_SIG_SIZE_HEX, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %5, align 8
  %33 = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, %struct.ecryptfs_mount_crypt_stat* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.ecryptfs_global_auth_tok*, %struct.ecryptfs_global_auth_tok** %8, align 8
  %36 = getelementptr inbounds %struct.ecryptfs_global_auth_tok, %struct.ecryptfs_global_auth_tok* %35, i32 0, i32 1
  %37 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %5, align 8
  %38 = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, %struct.ecryptfs_mount_crypt_stat* %37, i32 0, i32 1
  %39 = call i32 @list_add(i32* %36, i32* %38)
  %40 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %5, align 8
  %41 = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, %struct.ecryptfs_mount_crypt_stat* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %17, %14
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.ecryptfs_global_auth_tok* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
