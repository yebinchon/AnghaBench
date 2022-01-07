; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_fscrypt_new_context_from_policy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_fscrypt_new_context_from_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.fscrypt_context = type { %struct.fscrypt_context_v2 }
%struct.fscrypt_context_v2 = type { i32, i32, i32, i32, i32, i32 }
%union.fscrypt_policy = type { %struct.fscrypt_policy_v2 }
%struct.fscrypt_policy_v2 = type { i32, i32, i32, i32 }
%struct.fscrypt_policy_v1 = type { i32, i32, i32, i32 }
%struct.fscrypt_context_v1 = type { i32, i32, i32, i32, i32, i32 }

@FSCRYPT_CONTEXT_V1 = common dso_local global i32 0, align 4
@FSCRYPT_CONTEXT_V2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.fscrypt_context*, %union.fscrypt_policy*)* @fscrypt_new_context_from_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fscrypt_new_context_from_policy(%union.fscrypt_context* %0, %union.fscrypt_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.fscrypt_context*, align 8
  %5 = alloca %union.fscrypt_policy*, align 8
  %6 = alloca %struct.fscrypt_policy_v1*, align 8
  %7 = alloca %struct.fscrypt_context_v1*, align 8
  %8 = alloca %struct.fscrypt_policy_v2*, align 8
  %9 = alloca %struct.fscrypt_context_v2*, align 8
  store %union.fscrypt_context* %0, %union.fscrypt_context** %4, align 8
  store %union.fscrypt_policy* %1, %union.fscrypt_policy** %5, align 8
  %10 = load %union.fscrypt_context*, %union.fscrypt_context** %4, align 8
  %11 = call i32 @memset(%union.fscrypt_context* %10, i32 0, i32 24)
  %12 = load %union.fscrypt_policy*, %union.fscrypt_policy** %5, align 8
  %13 = bitcast %union.fscrypt_policy* %12 to i32*
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %83 [
    i32 129, label %15
    i32 128, label %49
  ]

15:                                               ; preds = %2
  %16 = load %union.fscrypt_policy*, %union.fscrypt_policy** %5, align 8
  %17 = bitcast %union.fscrypt_policy* %16 to %struct.fscrypt_policy_v1*
  store %struct.fscrypt_policy_v1* %17, %struct.fscrypt_policy_v1** %6, align 8
  %18 = load %union.fscrypt_context*, %union.fscrypt_context** %4, align 8
  %19 = bitcast %union.fscrypt_context* %18 to %struct.fscrypt_context_v1*
  store %struct.fscrypt_context_v1* %19, %struct.fscrypt_context_v1** %7, align 8
  %20 = load i32, i32* @FSCRYPT_CONTEXT_V1, align 4
  %21 = load %struct.fscrypt_context_v1*, %struct.fscrypt_context_v1** %7, align 8
  %22 = getelementptr inbounds %struct.fscrypt_context_v1, %struct.fscrypt_context_v1* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.fscrypt_policy_v1*, %struct.fscrypt_policy_v1** %6, align 8
  %24 = getelementptr inbounds %struct.fscrypt_policy_v1, %struct.fscrypt_policy_v1* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fscrypt_context_v1*, %struct.fscrypt_context_v1** %7, align 8
  %27 = getelementptr inbounds %struct.fscrypt_context_v1, %struct.fscrypt_context_v1* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.fscrypt_policy_v1*, %struct.fscrypt_policy_v1** %6, align 8
  %29 = getelementptr inbounds %struct.fscrypt_policy_v1, %struct.fscrypt_policy_v1* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fscrypt_context_v1*, %struct.fscrypt_context_v1** %7, align 8
  %32 = getelementptr inbounds %struct.fscrypt_context_v1, %struct.fscrypt_context_v1* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.fscrypt_policy_v1*, %struct.fscrypt_policy_v1** %6, align 8
  %34 = getelementptr inbounds %struct.fscrypt_policy_v1, %struct.fscrypt_policy_v1* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fscrypt_context_v1*, %struct.fscrypt_context_v1** %7, align 8
  %37 = getelementptr inbounds %struct.fscrypt_context_v1, %struct.fscrypt_context_v1* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.fscrypt_context_v1*, %struct.fscrypt_context_v1** %7, align 8
  %39 = getelementptr inbounds %struct.fscrypt_context_v1, %struct.fscrypt_context_v1* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fscrypt_policy_v1*, %struct.fscrypt_policy_v1** %6, align 8
  %42 = getelementptr inbounds %struct.fscrypt_policy_v1, %struct.fscrypt_policy_v1* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %40, i32 %43, i32 4)
  %45 = load %struct.fscrypt_context_v1*, %struct.fscrypt_context_v1** %7, align 8
  %46 = getelementptr inbounds %struct.fscrypt_context_v1, %struct.fscrypt_context_v1* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @get_random_bytes(i32 %47, i32 4)
  store i32 24, i32* %3, align 4
  br label %85

49:                                               ; preds = %2
  %50 = load %union.fscrypt_policy*, %union.fscrypt_policy** %5, align 8
  %51 = bitcast %union.fscrypt_policy* %50 to %struct.fscrypt_policy_v2*
  store %struct.fscrypt_policy_v2* %51, %struct.fscrypt_policy_v2** %8, align 8
  %52 = load %union.fscrypt_context*, %union.fscrypt_context** %4, align 8
  %53 = bitcast %union.fscrypt_context* %52 to %struct.fscrypt_context_v2*
  store %struct.fscrypt_context_v2* %53, %struct.fscrypt_context_v2** %9, align 8
  %54 = load i32, i32* @FSCRYPT_CONTEXT_V2, align 4
  %55 = load %struct.fscrypt_context_v2*, %struct.fscrypt_context_v2** %9, align 8
  %56 = getelementptr inbounds %struct.fscrypt_context_v2, %struct.fscrypt_context_v2* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %8, align 8
  %58 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fscrypt_context_v2*, %struct.fscrypt_context_v2** %9, align 8
  %61 = getelementptr inbounds %struct.fscrypt_context_v2, %struct.fscrypt_context_v2* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %8, align 8
  %63 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fscrypt_context_v2*, %struct.fscrypt_context_v2** %9, align 8
  %66 = getelementptr inbounds %struct.fscrypt_context_v2, %struct.fscrypt_context_v2* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %8, align 8
  %68 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fscrypt_context_v2*, %struct.fscrypt_context_v2** %9, align 8
  %71 = getelementptr inbounds %struct.fscrypt_context_v2, %struct.fscrypt_context_v2* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.fscrypt_context_v2*, %struct.fscrypt_context_v2** %9, align 8
  %73 = getelementptr inbounds %struct.fscrypt_context_v2, %struct.fscrypt_context_v2* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %8, align 8
  %76 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memcpy(i32 %74, i32 %77, i32 4)
  %79 = load %struct.fscrypt_context_v2*, %struct.fscrypt_context_v2** %9, align 8
  %80 = getelementptr inbounds %struct.fscrypt_context_v2, %struct.fscrypt_context_v2* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @get_random_bytes(i32 %81, i32 4)
  store i32 24, i32* %3, align 4
  br label %85

83:                                               ; preds = %2
  %84 = call i32 (...) @BUG()
  br label %85

85:                                               ; preds = %83, %49, %15
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @memset(%union.fscrypt_context*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @get_random_bytes(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
