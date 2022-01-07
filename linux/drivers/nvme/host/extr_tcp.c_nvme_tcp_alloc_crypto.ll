; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_alloc_crypto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_alloc_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_queue = type { i8*, i8* }
%struct.crypto_ahash = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"crc32c\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_tcp_queue*)* @nvme_tcp_alloc_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_alloc_crypto(%struct.nvme_tcp_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_tcp_queue*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  store %struct.nvme_tcp_queue* %0, %struct.nvme_tcp_queue** %3, align 8
  %5 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %6 = call %struct.crypto_ahash* @crypto_alloc_ahash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 %5)
  store %struct.crypto_ahash* %6, %struct.crypto_ahash** %4, align 8
  %7 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %8 = call i64 @IS_ERR(%struct.crypto_ahash* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %12 = call i32 @PTR_ERR(%struct.crypto_ahash* %11)
  store i32 %12, i32* %2, align 4
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @ahash_request_alloc(%struct.crypto_ahash* %14, i32 %15)
  %17 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %18 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %20 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %49

24:                                               ; preds = %13
  %25 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @ahash_request_set_callback(i8* %27, i32 0, i32* null, i32* null)
  %29 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @ahash_request_alloc(%struct.crypto_ahash* %29, i32 %30)
  %32 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %33 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %35 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  br label %44

39:                                               ; preds = %24
  %40 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %41 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @ahash_request_set_callback(i8* %42, i32 0, i32* null, i32* null)
  store i32 0, i32* %2, align 4
  br label %54

44:                                               ; preds = %38
  %45 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %46 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @ahash_request_free(i8* %47)
  br label %49

49:                                               ; preds = %44, %23
  %50 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %51 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %39, %10
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.crypto_ahash* @crypto_alloc_ahash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_ahash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_ahash*) #1

declare dso_local i8* @ahash_request_alloc(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @ahash_request_set_callback(i8*, i32, i32*, i32*) #1

declare dso_local i32 @ahash_request_free(i8*) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_ahash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
