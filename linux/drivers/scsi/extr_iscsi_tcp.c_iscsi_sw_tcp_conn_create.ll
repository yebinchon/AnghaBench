; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { i8*, %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { i8*, i8* }
%struct.iscsi_cls_session = type { i32 }
%struct.crypto_ahash = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"crc32c\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [126 x i8] c"Could not create connection due to crc32c loading error. Make sure the crc32c module is built as a module or into the kernel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_cls_conn* (%struct.iscsi_cls_session*, i32)* @iscsi_sw_tcp_conn_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_cls_conn* @iscsi_sw_tcp_conn_create(%struct.iscsi_cls_session* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.iscsi_cls_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_cls_conn*, align 8
  %8 = alloca %struct.iscsi_tcp_conn*, align 8
  %9 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %10 = alloca %struct.crypto_ahash*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.iscsi_cls_conn* @iscsi_tcp_conn_setup(%struct.iscsi_cls_session* %11, i32 16, i32 %12)
  store %struct.iscsi_cls_conn* %13, %struct.iscsi_cls_conn** %7, align 8
  %14 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %15 = icmp ne %struct.iscsi_cls_conn* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %3, align 8
  br label %84

17:                                               ; preds = %2
  %18 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %19 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %18, i32 0, i32 0
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %19, align 8
  store %struct.iscsi_conn* %20, %struct.iscsi_conn** %6, align 8
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 0
  %23 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %22, align 8
  store %struct.iscsi_tcp_conn* %23, %struct.iscsi_tcp_conn** %8, align 8
  %24 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %8, align 8
  %25 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %24, i32 0, i32 1
  %26 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %25, align 8
  store %struct.iscsi_sw_tcp_conn* %26, %struct.iscsi_sw_tcp_conn** %9, align 8
  %27 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %28 = call %struct.crypto_ahash* @crypto_alloc_ahash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 %27)
  store %struct.crypto_ahash* %28, %struct.crypto_ahash** %10, align 8
  %29 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %30 = call i64 @IS_ERR(%struct.crypto_ahash* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %78

33:                                               ; preds = %17
  %34 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @ahash_request_alloc(%struct.crypto_ahash* %34, i32 %35)
  %37 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %38 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %40 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %75

44:                                               ; preds = %33
  %45 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %46 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @ahash_request_set_callback(i8* %47, i32 0, i32* null, i32* null)
  %49 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @ahash_request_alloc(%struct.crypto_ahash* %49, i32 %50)
  %52 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %53 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %55 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %44
  br label %70

59:                                               ; preds = %44
  %60 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %61 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @ahash_request_set_callback(i8* %62, i32 0, i32* null, i32* null)
  %64 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %65 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %8, align 8
  %68 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  store %struct.iscsi_cls_conn* %69, %struct.iscsi_cls_conn** %3, align 8
  br label %84

70:                                               ; preds = %58
  %71 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %72 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @ahash_request_free(i8* %73)
  br label %75

75:                                               ; preds = %70, %43
  %76 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %77 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %76)
  br label %78

78:                                               ; preds = %75, %32
  %79 = load i32, i32* @KERN_ERR, align 4
  %80 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %81 = call i32 @iscsi_conn_printk(i32 %79, %struct.iscsi_conn* %80, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %83 = call i32 @iscsi_tcp_conn_teardown(%struct.iscsi_cls_conn* %82)
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %3, align 8
  br label %84

84:                                               ; preds = %78, %59, %16
  %85 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  ret %struct.iscsi_cls_conn* %85
}

declare dso_local %struct.iscsi_cls_conn* @iscsi_tcp_conn_setup(%struct.iscsi_cls_session*, i32, i32) #1

declare dso_local %struct.crypto_ahash* @crypto_alloc_ahash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_ahash*) #1

declare dso_local i8* @ahash_request_alloc(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @ahash_request_set_callback(i8*, i32, i32*, i32*) #1

declare dso_local i32 @ahash_request_free(i8*) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_ahash*) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*) #1

declare dso_local i32 @iscsi_tcp_conn_teardown(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
