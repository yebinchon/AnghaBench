; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_put_crypt_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_put_crypt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_info = type { i32, %struct.key*, i32*, i32*, i32, i64 }
%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fscrypt_master_key** }
%struct.fscrypt_master_key = type { i32, i32 }

@fscrypt_info_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fscrypt_info*)* @put_crypt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_crypt_info(%struct.fscrypt_info* %0) #0 {
  %2 = alloca %struct.fscrypt_info*, align 8
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.fscrypt_master_key*, align 8
  store %struct.fscrypt_info* %0, %struct.fscrypt_info** %2, align 8
  %5 = load %struct.fscrypt_info*, %struct.fscrypt_info** %2, align 8
  %6 = icmp ne %struct.fscrypt_info* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %79

8:                                                ; preds = %1
  %9 = load %struct.fscrypt_info*, %struct.fscrypt_info** %2, align 8
  %10 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.fscrypt_info*, %struct.fscrypt_info** %2, align 8
  %15 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @fscrypt_put_direct_key(i64 %16)
  br label %43

18:                                               ; preds = %8
  %19 = load %struct.fscrypt_info*, %struct.fscrypt_info** %2, align 8
  %20 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.fscrypt_info*, %struct.fscrypt_info** %2, align 8
  %25 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %23, %18
  %29 = load %struct.fscrypt_info*, %struct.fscrypt_info** %2, align 8
  %30 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %29, i32 0, i32 4
  %31 = call i32 @fscrypt_is_direct_key_policy(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load %struct.fscrypt_info*, %struct.fscrypt_info** %2, align 8
  %35 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @crypto_free_skcipher(i32* %36)
  %38 = load %struct.fscrypt_info*, %struct.fscrypt_info** %2, align 8
  %39 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @crypto_free_cipher(i32* %40)
  br label %42

42:                                               ; preds = %33, %28, %23
  br label %43

43:                                               ; preds = %42, %13
  %44 = load %struct.fscrypt_info*, %struct.fscrypt_info** %2, align 8
  %45 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %44, i32 0, i32 1
  %46 = load %struct.key*, %struct.key** %45, align 8
  store %struct.key* %46, %struct.key** %3, align 8
  %47 = load %struct.key*, %struct.key** %3, align 8
  %48 = icmp ne %struct.key* %47, null
  br i1 %48, label %49, label %75

49:                                               ; preds = %43
  %50 = load %struct.key*, %struct.key** %3, align 8
  %51 = getelementptr inbounds %struct.key, %struct.key* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.fscrypt_master_key**, %struct.fscrypt_master_key*** %52, align 8
  %54 = getelementptr inbounds %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %53, i64 0
  %55 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %54, align 8
  store %struct.fscrypt_master_key* %55, %struct.fscrypt_master_key** %4, align 8
  %56 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %4, align 8
  %57 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %56, i32 0, i32 1
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.fscrypt_info*, %struct.fscrypt_info** %2, align 8
  %60 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %59, i32 0, i32 0
  %61 = call i32 @list_del(i32* %60)
  %62 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %4, align 8
  %63 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %4, align 8
  %66 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %65, i32 0, i32 0
  %67 = call i64 @refcount_dec_and_test(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %49
  %70 = load %struct.key*, %struct.key** %3, align 8
  %71 = call i32 @key_invalidate(%struct.key* %70)
  br label %72

72:                                               ; preds = %69, %49
  %73 = load %struct.key*, %struct.key** %3, align 8
  %74 = call i32 @key_put(%struct.key* %73)
  br label %75

75:                                               ; preds = %72, %43
  %76 = load i32, i32* @fscrypt_info_cachep, align 4
  %77 = load %struct.fscrypt_info*, %struct.fscrypt_info** %2, align 8
  %78 = call i32 @kmem_cache_free(i32 %76, %struct.fscrypt_info* %77)
  br label %79

79:                                               ; preds = %75, %7
  ret void
}

declare dso_local i32 @fscrypt_put_direct_key(i64) #1

declare dso_local i32 @fscrypt_is_direct_key_policy(i32*) #1

declare dso_local i32 @crypto_free_skcipher(i32*) #1

declare dso_local i32 @crypto_free_cipher(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @key_invalidate(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fscrypt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
