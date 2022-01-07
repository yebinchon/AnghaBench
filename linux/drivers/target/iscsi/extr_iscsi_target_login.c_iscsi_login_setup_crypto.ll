; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_login_setup_crypto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_login_setup_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32*, i32* }
%struct.crypto_ahash = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"crc32c\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"crypto_alloc_ahash() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"ahash_request_alloc() failed for conn_rx_hash\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"ahash_request_alloc() failed for conn_tx_hash\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_login_setup_crypto(%struct.iscsi_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  %5 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %6 = call %struct.crypto_ahash* @crypto_alloc_ahash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 %5)
  store %struct.crypto_ahash* %6, %struct.crypto_ahash** %4, align 8
  %7 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %8 = call i64 @IS_ERR(%struct.crypto_ahash* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @ahash_request_alloc(%struct.crypto_ahash* %15, i32 %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %14
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %28 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %63

31:                                               ; preds = %14
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %33 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ahash_request_set_callback(i32* %34, i32 0, i32* null, i32* null)
  %36 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @ahash_request_alloc(%struct.crypto_ahash* %36, i32 %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %41 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %31
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %49 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @ahash_request_free(i32* %50)
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %53 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %55 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %63

58:                                               ; preds = %31
  %59 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %60 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @ahash_request_set_callback(i32* %61, i32 0, i32* null, i32* null)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %46, %25, %10
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.crypto_ahash* @crypto_alloc_ahash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_ahash*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @ahash_request_alloc(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_ahash*) #1

declare dso_local i32 @ahash_request_set_callback(i32*, i32, i32*, i32*) #1

declare dso_local i32 @ahash_request_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
