; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_fscrypt_supported_policy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_fscrypt_supported_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.fscrypt_policy = type { %struct.fscrypt_policy_v2 }
%struct.fscrypt_policy_v2 = type { i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.fscrypt_policy_v1 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"Unsupported encryption modes (contents %d, filenames %d)\00", align 1
@FSCRYPT_POLICY_FLAGS_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unsupported encryption flags (0x%02x)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Reserved bits set in encryption policy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscrypt_supported_policy(%union.fscrypt_policy* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.fscrypt_policy*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.fscrypt_policy_v1*, align 8
  %7 = alloca %struct.fscrypt_policy_v2*, align 8
  store %union.fscrypt_policy* %0, %union.fscrypt_policy** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %8 = load %union.fscrypt_policy*, %union.fscrypt_policy** %4, align 8
  %9 = bitcast %union.fscrypt_policy* %8 to i32*
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %90 [
    i32 129, label %11
    i32 128, label %46
  ]

11:                                               ; preds = %2
  %12 = load %union.fscrypt_policy*, %union.fscrypt_policy** %4, align 8
  %13 = bitcast %union.fscrypt_policy* %12 to %struct.fscrypt_policy_v1*
  store %struct.fscrypt_policy_v1* %13, %struct.fscrypt_policy_v1** %6, align 8
  %14 = load %struct.fscrypt_policy_v1*, %struct.fscrypt_policy_v1** %6, align 8
  %15 = getelementptr inbounds %struct.fscrypt_policy_v1, %struct.fscrypt_policy_v1* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fscrypt_policy_v1*, %struct.fscrypt_policy_v1** %6, align 8
  %18 = getelementptr inbounds %struct.fscrypt_policy_v1, %struct.fscrypt_policy_v1* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fscrypt_valid_enc_modes(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %11
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = load %struct.fscrypt_policy_v1*, %struct.fscrypt_policy_v1** %6, align 8
  %25 = getelementptr inbounds %struct.fscrypt_policy_v1, %struct.fscrypt_policy_v1* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fscrypt_policy_v1*, %struct.fscrypt_policy_v1** %6, align 8
  %28 = getelementptr inbounds %struct.fscrypt_policy_v1, %struct.fscrypt_policy_v1* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.inode*, i8*, ...) @fscrypt_warn(%struct.inode* %23, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  store i32 0, i32* %3, align 4
  br label %91

31:                                               ; preds = %11
  %32 = load %struct.fscrypt_policy_v1*, %struct.fscrypt_policy_v1** %6, align 8
  %33 = getelementptr inbounds %struct.fscrypt_policy_v1, %struct.fscrypt_policy_v1* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FSCRYPT_POLICY_FLAGS_VALID, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = load %struct.fscrypt_policy_v1*, %struct.fscrypt_policy_v1** %6, align 8
  %42 = getelementptr inbounds %struct.fscrypt_policy_v1, %struct.fscrypt_policy_v1* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.inode*, i8*, ...) @fscrypt_warn(%struct.inode* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i32 0, i32* %3, align 4
  br label %91

45:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %91

46:                                               ; preds = %2
  %47 = load %union.fscrypt_policy*, %union.fscrypt_policy** %4, align 8
  %48 = bitcast %union.fscrypt_policy* %47 to %struct.fscrypt_policy_v2*
  store %struct.fscrypt_policy_v2* %48, %struct.fscrypt_policy_v2** %7, align 8
  %49 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %7, align 8
  %50 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %7, align 8
  %53 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @fscrypt_valid_enc_modes(i32 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %46
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %7, align 8
  %60 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %7, align 8
  %63 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.inode*, i8*, ...) @fscrypt_warn(%struct.inode* %58, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64)
  store i32 0, i32* %3, align 4
  br label %91

66:                                               ; preds = %46
  %67 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %7, align 8
  %68 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @FSCRYPT_POLICY_FLAGS_VALID, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %7, align 8
  %77 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (%struct.inode*, i8*, ...) @fscrypt_warn(%struct.inode* %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i32 0, i32* %3, align 4
  br label %91

80:                                               ; preds = %66
  %81 = load %struct.fscrypt_policy_v2*, %struct.fscrypt_policy_v2** %7, align 8
  %82 = getelementptr inbounds %struct.fscrypt_policy_v2, %struct.fscrypt_policy_v2* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @memchr_inv(i32 %83, i32 0, i32 4)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = call i32 (%struct.inode*, i8*, ...) @fscrypt_warn(%struct.inode* %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %91

89:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %91

90:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %89, %86, %74, %57, %45, %39, %22
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @fscrypt_valid_enc_modes(i32, i32) #1

declare dso_local i32 @fscrypt_warn(%struct.inode*, i8*, ...) #1

declare dso_local i32 @memchr_inv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
