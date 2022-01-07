; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_fscrypt_policy_from_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_fscrypt_policy_from_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.fscrypt_policy = type { %struct.fscrypt_policy_v2 }
%struct.fscrypt_policy_v2 = type { i32, i32, i32, i32, i32, i32 }
%union.fscrypt_context = type { %struct.fscrypt_context_v2 }
%struct.fscrypt_context_v2 = type { i32, i32, i32, i32, i32 }
%struct.fscrypt_context_v1 = type { i32, i32, i32, i32 }
%struct.fscrypt_policy_v1 = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FSCRYPT_POLICY_V1 = common dso_local global i32 0, align 4
@FSCRYPT_POLICY_V2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscrypt_policy_from_context(%union.fscrypt_policy* %0, %union.fscrypt_context* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.fscrypt_policy*, align 8
  %6 = alloca %union.fscrypt_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fscrypt_context_v1*, align 8
  %9 = alloca %struct.fscrypt_policy_v1*, align 8
  %10 = alloca %struct.fscrypt_context_v2*, align 8
  %11 = alloca %struct.fscrypt_policy_v2*, align 8
  store %union.fscrypt_policy* %0, %union.fscrypt_policy** %5, align 8
  store %union.fscrypt_context* %1, %union.fscrypt_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %union.fscrypt_policy*, %union.fscrypt_policy** %5, align 8
  %13 = call i32 @memset(%union.fscrypt_policy* %12, i32 0, i32 24)
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load %union.fscrypt_context*, %union.fscrypt_context** %6, align 8
  %19 = call i32 @fscrypt_context_size(%union.fscrypt_context* %18)
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %98

24:                                               ; preds = %16
  %25 = load %union.fscrypt_context*, %union.fscrypt_context** %6, align 8
  %26 = bitcast %union.fscrypt_context* %25 to i32*
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %95 [
    i32 129, label %28
    i32 128, label %58
  ]

28:                                               ; preds = %24
  %29 = load %union.fscrypt_context*, %union.fscrypt_context** %6, align 8
  %30 = bitcast %union.fscrypt_context* %29 to %struct.fscrypt_context_v1*
  store %struct.fscrypt_context_v1* %30, %struct.fscrypt_context_v1** %8, align 8
  %31 = load %union.fscrypt_policy*, %union.fscrypt_policy** %5, align 8
  %32 = bitcast %union.fscrypt_policy* %31 to %struct.fscrypt_policy_v1*
  store %struct.fscrypt_policy_v1* %32, %struct.fscrypt_policy_v1** %9, align 8
  %33 = load i32, i32* @FSCRYPT_POLICY_V1, align 4
  %34 = load %struct.fscrypt_policy_v1*, %struct.fscrypt_policy_v1** %9, align 8
  %35 = getelementptr inbounds %struct.fscrypt_policy_v1, %struct.fscrypt_policy_v1* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.fscrypt_context_v1*, %struct.fscrypt_context_v1** %8, align 8
  %37 = getelementptr inbounds %struct.fscrypt_context_v1, %struct.fscrypt_context_v1* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fscrypt_policy_v1*, %struct.fscrypt_policy_v1** %9, align 8
  %40 = getelementptr inbounds %struct.fscrypt_policy_v1, %struct.fscrypt_policy_v1* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.fscrypt_context_v1*, %struct.fscrypt_context_v1** %8, align 8
  %42 = getelementptr inbounds %struct.fscrypt_context_v1, %struct.fscrypt_context_v1* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fscrypt_policy_v1*, %struct.fscrypt_policy_v1** %9, align 8
  %45 = getelementptr inbounds %struct.fscrypt_policy_v1, %struct.fscrypt_policy_v1* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.fscrypt_context_v1*, %struct.fscrypt_context_v1** %8, align 8
  %47 = getelementptr inbounds %struct.fscrypt_context_v1, %struct.fscrypt_context_v1* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fscrypt_policy_v1*, %struct.fscrypt_policy_v1** %9, align 8
  %50 = getelementptr inbounds %struct.fscrypt_policy_v1, %struct.fscrypt_policy_v1* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.fscrypt_policy_v1*, %struct.fscrypt_policy_v1** %9, align 8
  %52 = getelementptr inbounds %struct.fscrypt_policy_v1, %struct.fscrypt_policy_v1* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fscrypt_context_v1*, %struct.fscrypt_context_v1** %8, align 8
  %55 = getelementptr inbounds %struct.fscrypt_context_v1, %struct.fscrypt_context_v1* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memcpy(i32 %53, i32 %56, i32 4)
  store i32 0, i32* %4, align 4
  br label %98

58:                                               ; preds = %24
  %59 = load %union.fscrypt_context*, %union.fscrypt_context** %6, align 8
  %60 = bitcast %union.fscrypt_context* %59 to %struct.fscrypt_context_v2*
  store %struct.fscrypt_context_v2* %60, %struct.fscrypt_context_v2** %10, align 8
  %61 = load %union.fscrypt_policy*, %union.fscrypt_policy** %5, align 8
  %62 = bitcast %union.fscrypt_policy* %61 to %struct.fscrypt_policy_v2*
  store %struct.fscrypt_policy_v2* %62, %struct.fscrypt_policy_v2** %11, align 8
  %63 = load i32, i32* @FSCRYPT_POLICY_V2, align 4
  %64 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %11, align 8
  %65 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.fscrypt_context_v2*, %struct.fscrypt_context_v2** %10, align 8
  %67 = getelementptr inbounds %struct.fscrypt_context_v2, %struct.fscrypt_context_v2* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %11, align 8
  %70 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.fscrypt_context_v2*, %struct.fscrypt_context_v2** %10, align 8
  %72 = getelementptr inbounds %struct.fscrypt_context_v2, %struct.fscrypt_context_v2* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %11, align 8
  %75 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.fscrypt_context_v2*, %struct.fscrypt_context_v2** %10, align 8
  %77 = getelementptr inbounds %struct.fscrypt_context_v2, %struct.fscrypt_context_v2* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %11, align 8
  %80 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %11, align 8
  %82 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fscrypt_context_v2*, %struct.fscrypt_context_v2** %10, align 8
  %85 = getelementptr inbounds %struct.fscrypt_context_v2, %struct.fscrypt_context_v2* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memcpy(i32 %83, i32 %86, i32 4)
  %88 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %11, align 8
  %89 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.fscrypt_context_v2*, %struct.fscrypt_context_v2** %10, align 8
  %92 = getelementptr inbounds %struct.fscrypt_context_v2, %struct.fscrypt_context_v2* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @memcpy(i32 %90, i32 %93, i32 4)
  store i32 0, i32* %4, align 4
  br label %98

95:                                               ; preds = %24
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %95, %58, %28, %21
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @memset(%union.fscrypt_policy*, i32, i32) #1

declare dso_local i32 @fscrypt_context_size(%union.fscrypt_context*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
