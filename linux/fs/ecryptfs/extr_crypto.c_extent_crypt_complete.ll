; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_extent_crypt_complete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_extent_crypt_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.extent_crypt_result* }
%struct.extent_crypt_result = type { i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @extent_crypt_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extent_crypt_complete(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.extent_crypt_result*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %7 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %6, i32 0, i32 0
  %8 = load %struct.extent_crypt_result*, %struct.extent_crypt_result** %7, align 8
  store %struct.extent_crypt_result* %8, %struct.extent_crypt_result** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EINPROGRESS, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.extent_crypt_result*, %struct.extent_crypt_result** %5, align 8
  %17 = getelementptr inbounds %struct.extent_crypt_result, %struct.extent_crypt_result* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.extent_crypt_result*, %struct.extent_crypt_result** %5, align 8
  %19 = getelementptr inbounds %struct.extent_crypt_result, %struct.extent_crypt_result* %18, i32 0, i32 1
  %20 = call i32 @complete(i32* %19)
  br label %21

21:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
