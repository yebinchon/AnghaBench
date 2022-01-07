; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup_v1.c_setup_v1_file_key_direct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup_v1.c_setup_v1_file_key_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_info = type { i32, %struct.fscrypt_direct_key*, i32, %struct.TYPE_4__, %struct.fscrypt_mode* }
%struct.fscrypt_direct_key = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.fscrypt_mode = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Direct key mode not allowed with %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Direct key mode not allowed with different contents and filenames modes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fscrypt_info*, i32*)* @setup_v1_file_key_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_v1_file_key_direct(%struct.fscrypt_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fscrypt_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fscrypt_mode*, align 8
  %7 = alloca %struct.fscrypt_direct_key*, align 8
  store %struct.fscrypt_info* %0, %struct.fscrypt_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %9 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %8, i32 0, i32 4
  %10 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %9, align 8
  store %struct.fscrypt_mode* %10, %struct.fscrypt_mode** %6, align 8
  %11 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %6, align 8
  %12 = call i32 @fscrypt_mode_supports_direct_key(%struct.fscrypt_mode* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %16 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %6, align 8
  %19 = getelementptr inbounds %struct.fscrypt_mode, %struct.fscrypt_mode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @fscrypt_warn(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %2
  %25 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %26 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %31 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %29, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %38 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, ...) @fscrypt_warn(i32 %39, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %71

43:                                               ; preds = %24
  %44 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %6, align 8
  %45 = getelementptr inbounds %struct.fscrypt_mode, %struct.fscrypt_mode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %71

52:                                               ; preds = %43
  %53 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call %struct.fscrypt_direct_key* @fscrypt_get_direct_key(%struct.fscrypt_info* %53, i32* %54)
  store %struct.fscrypt_direct_key* %55, %struct.fscrypt_direct_key** %7, align 8
  %56 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %7, align 8
  %57 = call i64 @IS_ERR(%struct.fscrypt_direct_key* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %7, align 8
  %61 = call i32 @PTR_ERR(%struct.fscrypt_direct_key* %60)
  store i32 %61, i32* %3, align 4
  br label %71

62:                                               ; preds = %52
  %63 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %7, align 8
  %64 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %65 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %64, i32 0, i32 1
  store %struct.fscrypt_direct_key* %63, %struct.fscrypt_direct_key** %65, align 8
  %66 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %7, align 8
  %67 = getelementptr inbounds %struct.fscrypt_direct_key, %struct.fscrypt_direct_key* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %70 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %62, %59, %49, %36, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @fscrypt_mode_supports_direct_key(%struct.fscrypt_mode*) #1

declare dso_local i32 @fscrypt_warn(i32, i8*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.fscrypt_direct_key* @fscrypt_get_direct_key(%struct.fscrypt_info*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.fscrypt_direct_key*) #1

declare dso_local i32 @PTR_ERR(%struct.fscrypt_direct_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
