; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_do_crypto_hash_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_do_crypto_hash_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*, i8*, i64, i64, i8*, i8*)* @iscsit_do_crypto_hash_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsit_do_crypto_hash_buf(%struct.ahash_request* %0, i8* %1, i64 %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.ahash_request*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [2 x %struct.scatterlist], align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %13, i64 0, i64 0
  %15 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %13, i64 0, i64 0
  %16 = call i32 @ARRAY_SIZE(%struct.scatterlist* %15)
  %17 = call i32 @sg_init_table(%struct.scatterlist* %14, i32 %16)
  %18 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %13, i64 0, i64 0
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @sg_set_buf(%struct.scatterlist* %18, i8* %19, i64 %20)
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %6
  %25 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %13, i64 0, i64 0
  %26 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %25, i64 1
  %27 = load i8*, i8** %11, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @sg_set_buf(%struct.scatterlist* %26, i8* %27, i64 %28)
  br label %30

30:                                               ; preds = %24, %6
  %31 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %32 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %13, i64 0, i64 0
  %33 = load i8*, i8** %12, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %31, %struct.scatterlist* %32, i8* %33, i64 %36)
  %38 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %39 = call i32 @crypto_ahash_digest(%struct.ahash_request* %38)
  ret void
}

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.scatterlist*) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i8*, i64) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, i8*, i64) #1

declare dso_local i32 @crypto_ahash_digest(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
