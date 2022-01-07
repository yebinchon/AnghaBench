; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_add_master_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_add_master_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fscrypt_master_key_secret = type { i32 }
%struct.fscrypt_key_specifier = type { i32 }
%struct.key = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@add_master_key.fscrypt_add_key_mutex = internal global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@KEY_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fscrypt_master_key_secret*, %struct.fscrypt_key_specifier*)* @add_master_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_master_key(%struct.super_block* %0, %struct.fscrypt_master_key_secret* %1, %struct.fscrypt_key_specifier* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fscrypt_master_key_secret*, align 8
  %6 = alloca %struct.fscrypt_key_specifier*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fscrypt_master_key_secret* %1, %struct.fscrypt_master_key_secret** %5, align 8
  store %struct.fscrypt_key_specifier* %2, %struct.fscrypt_key_specifier** %6, align 8
  %9 = call i32 @mutex_lock(i32* @add_master_key.fscrypt_add_key_mutex)
  br label %10

10:                                               ; preds = %56, %3
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = load %struct.fscrypt_key_specifier*, %struct.fscrypt_key_specifier** %6, align 8
  %13 = call %struct.key* @fscrypt_find_master_key(%struct.super_block* %11, %struct.fscrypt_key_specifier* %12)
  store %struct.key* %13, %struct.key** %7, align 8
  %14 = load %struct.key*, %struct.key** %7, align 8
  %15 = call i64 @IS_ERR(%struct.key* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %10
  %18 = load %struct.key*, %struct.key** %7, align 8
  %19 = call i32 @PTR_ERR(%struct.key* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @ENOKEY, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %65

25:                                               ; preds = %17
  %26 = load %struct.super_block*, %struct.super_block** %4, align 8
  %27 = call i32 @allocate_filesystem_keyring(%struct.super_block* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %65

31:                                               ; preds = %25
  %32 = load %struct.fscrypt_master_key_secret*, %struct.fscrypt_master_key_secret** %5, align 8
  %33 = load %struct.fscrypt_key_specifier*, %struct.fscrypt_key_specifier** %6, align 8
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @add_new_master_key(%struct.fscrypt_master_key_secret* %32, %struct.fscrypt_key_specifier* %33, i32 %36)
  store i32 %37, i32* %8, align 4
  br label %64

38:                                               ; preds = %10
  %39 = load %struct.key*, %struct.key** %7, align 8
  %40 = getelementptr inbounds %struct.key, %struct.key* %39, i32 0, i32 0
  %41 = call i32 @down_write(i32* %40)
  %42 = load %struct.key*, %struct.key** %7, align 8
  %43 = getelementptr inbounds %struct.key, %struct.key* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fscrypt_master_key_secret*, %struct.fscrypt_master_key_secret** %5, align 8
  %49 = call i32 @add_existing_master_key(i32 %47, %struct.fscrypt_master_key_secret* %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.key*, %struct.key** %7, align 8
  %51 = getelementptr inbounds %struct.key, %struct.key* %50, i32 0, i32 0
  %52 = call i32 @up_write(i32* %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @KEY_DEAD, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %38
  %57 = load %struct.key*, %struct.key** %7, align 8
  %58 = call i32 @key_invalidate(%struct.key* %57)
  %59 = load %struct.key*, %struct.key** %7, align 8
  %60 = call i32 @key_put(%struct.key* %59)
  br label %10

61:                                               ; preds = %38
  %62 = load %struct.key*, %struct.key** %7, align 8
  %63 = call i32 @key_put(%struct.key* %62)
  br label %64

64:                                               ; preds = %61, %31
  br label %65

65:                                               ; preds = %64, %30, %24
  %66 = call i32 @mutex_unlock(i32* @add_master_key.fscrypt_add_key_mutex)
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.key* @fscrypt_find_master_key(%struct.super_block*, %struct.fscrypt_key_specifier*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @allocate_filesystem_keyring(%struct.super_block*) #1

declare dso_local i32 @add_new_master_key(%struct.fscrypt_master_key_secret*, %struct.fscrypt_key_specifier*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @add_existing_master_key(i32, %struct.fscrypt_master_key_secret*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @key_invalidate(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
