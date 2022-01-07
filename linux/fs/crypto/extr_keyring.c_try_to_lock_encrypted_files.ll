; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_try_to_lock_encrypted_files.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_try_to_lock_encrypted_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fscrypt_master_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fscrypt_master_key*)* @try_to_lock_encrypted_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_lock_encrypted_files(%struct.super_block* %0, %struct.fscrypt_master_key* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.fscrypt_master_key*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.fscrypt_master_key* %1, %struct.fscrypt_master_key** %4, align 8
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 0
  %9 = call i32 @down_read(i32* %8)
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call i32 @sync_filesystem(%struct.super_block* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = call i32 @up_read(i32* %13)
  %15 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %4, align 8
  %16 = call i32 @evict_dentries_for_decrypted_inodes(%struct.fscrypt_master_key* %15)
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %4, align 8
  %19 = call i32 @check_for_busy_inodes(%struct.super_block* %17, %struct.fscrypt_master_key* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ %20, %22 ], [ %24, %23 ]
  ret i32 %26
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @sync_filesystem(%struct.super_block*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @evict_dentries_for_decrypted_inodes(%struct.fscrypt_master_key*) #1

declare dso_local i32 @check_for_busy_inodes(%struct.super_block*, %struct.fscrypt_master_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
