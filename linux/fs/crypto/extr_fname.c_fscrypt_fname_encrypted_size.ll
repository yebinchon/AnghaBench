; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_fname.c_fscrypt_fname_encrypted_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_fname.c_fscrypt_fname_encrypted_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.fscrypt_info* }
%struct.fscrypt_info = type { i32 }

@FSCRYPT_POLICY_FLAGS_PAD_MASK = common dso_local global i32 0, align 4
@FS_CRYPTO_BLOCK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscrypt_fname_encrypted_size(%struct.inode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fscrypt_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.fscrypt_info*, %struct.fscrypt_info** %14, align 8
  store %struct.fscrypt_info* %15, %struct.fscrypt_info** %10, align 8
  %16 = load %struct.fscrypt_info*, %struct.fscrypt_info** %10, align 8
  %17 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %16, i32 0, i32 0
  %18 = call i32 @fscrypt_policy_flags(i32* %17)
  %19 = load i32, i32* @FSCRYPT_POLICY_FLAGS_PAD_MASK, align 4
  %20 = and i32 %18, %19
  %21 = shl i32 4, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %38

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load i64, i64* @FS_CRYPTO_BLOCK_SIZE, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @max(i32 %27, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @round_up(i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @min(i32 %34, i32 %35)
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %26, %25
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @fscrypt_policy_flags(i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
