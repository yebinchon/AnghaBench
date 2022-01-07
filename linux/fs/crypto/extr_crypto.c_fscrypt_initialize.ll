; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_crypto.c_fscrypt_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_crypto.c_fscrypt_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_ctx = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FS_CFLG_OWN_PAGES = common dso_local global i32 0, align 4
@fscrypt_init_mutex = common dso_local global i32 0, align 4
@fscrypt_bounce_page_pool = common dso_local global i64 0, align 8
@num_prealloc_crypto_ctxs = common dso_local global i32 0, align 4
@fscrypt_ctx_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@fscrypt_free_ctxs = common dso_local global i32 0, align 4
@num_prealloc_crypto_pages = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscrypt_initialize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fscrypt_ctx*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @FS_CFLG_OWN_PAGES, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = call i32 @mutex_lock(i32* @fscrypt_init_mutex)
  %16 = load i64, i64* @fscrypt_bounce_page_pool, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %45

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @num_prealloc_crypto_ctxs, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i32, i32* @fscrypt_ctx_cachep, align 4
  %26 = load i32, i32* @GFP_NOFS, align 4
  %27 = call %struct.fscrypt_ctx* @kmem_cache_zalloc(i32 %25, i32 %26)
  store %struct.fscrypt_ctx* %27, %struct.fscrypt_ctx** %6, align 8
  %28 = load %struct.fscrypt_ctx*, %struct.fscrypt_ctx** %6, align 8
  %29 = icmp ne %struct.fscrypt_ctx* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %47

31:                                               ; preds = %24
  %32 = load %struct.fscrypt_ctx*, %struct.fscrypt_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.fscrypt_ctx, %struct.fscrypt_ctx* %32, i32 0, i32 0
  %34 = call i32 @list_add(i32* %33, i32* @fscrypt_free_ctxs)
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load i32, i32* @num_prealloc_crypto_pages, align 4
  %40 = call i64 @mempool_create_page_pool(i32 %39, i32 0)
  store i64 %40, i64* @fscrypt_bounce_page_pool, align 8
  %41 = load i64, i64* @fscrypt_bounce_page_pool, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %47

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %18
  %46 = call i32 @mutex_unlock(i32* @fscrypt_init_mutex)
  store i32 0, i32* %2, align 4
  br label %51

47:                                               ; preds = %43, %30
  %48 = call i32 (...) @fscrypt_destroy()
  %49 = call i32 @mutex_unlock(i32* @fscrypt_init_mutex)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %45, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fscrypt_ctx* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @mempool_create_page_pool(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fscrypt_destroy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
