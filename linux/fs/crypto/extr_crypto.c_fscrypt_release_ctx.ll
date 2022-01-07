; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_crypto.c_fscrypt_release_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_crypto.c_fscrypt_release_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_ctx = type { i32, i32 }

@FS_CTX_REQUIRES_FREE_ENCRYPT_FL = common dso_local global i32 0, align 4
@fscrypt_ctx_cachep = common dso_local global i32 0, align 4
@fscrypt_ctx_lock = common dso_local global i32 0, align 4
@fscrypt_free_ctxs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fscrypt_release_ctx(%struct.fscrypt_ctx* %0) #0 {
  %2 = alloca %struct.fscrypt_ctx*, align 8
  %3 = alloca i64, align 8
  store %struct.fscrypt_ctx* %0, %struct.fscrypt_ctx** %2, align 8
  %4 = load %struct.fscrypt_ctx*, %struct.fscrypt_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.fscrypt_ctx, %struct.fscrypt_ctx* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FS_CTX_REQUIRES_FREE_ENCRYPT_FL, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @fscrypt_ctx_cachep, align 4
  %12 = load %struct.fscrypt_ctx*, %struct.fscrypt_ctx** %2, align 8
  %13 = call i32 @kmem_cache_free(i32 %11, %struct.fscrypt_ctx* %12)
  br label %22

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @fscrypt_ctx_lock, i64 %15)
  %17 = load %struct.fscrypt_ctx*, %struct.fscrypt_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.fscrypt_ctx, %struct.fscrypt_ctx* %17, i32 0, i32 1
  %19 = call i32 @list_add(i32* %18, i32* @fscrypt_free_ctxs)
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @fscrypt_ctx_lock, i64 %20)
  br label %22

22:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32 @kmem_cache_free(i32, %struct.fscrypt_ctx*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
