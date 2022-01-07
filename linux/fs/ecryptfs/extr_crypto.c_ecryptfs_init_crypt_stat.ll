; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_init_crypt_stat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_init_crypt_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_crypt_stat = type { i32, %struct.crypto_shash*, i32, i32, i32, i32 }
%struct.crypto_shash = type { i32 }

@ECRYPTFS_DEFAULT_HASH = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Error attempting to allocate crypto context; rc = [%d]\0A\00", align 1
@ECRYPTFS_STRUCT_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_init_crypt_stat(%struct.ecryptfs_crypt_stat* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %4 = alloca %struct.crypto_shash*, align 8
  %5 = alloca i32, align 4
  store %struct.ecryptfs_crypt_stat* %0, %struct.ecryptfs_crypt_stat** %3, align 8
  %6 = load i32, i32* @ECRYPTFS_DEFAULT_HASH, align 4
  %7 = call %struct.crypto_shash* @crypto_alloc_shash(i32 %6, i32 0, i32 0)
  store %struct.crypto_shash* %7, %struct.crypto_shash** %4, align 8
  %8 = load %struct.crypto_shash*, %struct.crypto_shash** %4, align 8
  %9 = call i64 @IS_ERR(%struct.crypto_shash* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.crypto_shash*, %struct.crypto_shash** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.crypto_shash* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @KERN_ERR, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ecryptfs_printk(i32 %14, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %42

18:                                               ; preds = %1
  %19 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %20 = bitcast %struct.ecryptfs_crypt_stat* %19 to i8*
  %21 = call i32 @memset(i8* %20, i32 0, i32 32)
  %22 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %23 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %22, i32 0, i32 5
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %26 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %25, i32 0, i32 4
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %29 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %28, i32 0, i32 3
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %32 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %31, i32 0, i32 2
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.crypto_shash*, %struct.crypto_shash** %4, align 8
  %35 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %36 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %35, i32 0, i32 1
  store %struct.crypto_shash* %34, %struct.crypto_shash** %36, align 8
  %37 = load i32, i32* @ECRYPTFS_STRUCT_INITIALIZED, align 4
  %38 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %39 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %18, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @ecryptfs_printk(i32, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
