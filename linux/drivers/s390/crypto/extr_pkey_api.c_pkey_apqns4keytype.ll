; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_apqns4keytype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_apqns4keytype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkey_apqn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PKEY_TYPE_CCA_DATA = common dso_local global i32 0, align 4
@PKEY_TYPE_CCA_CIPHER = common dso_local global i32 0, align 4
@ZCRYPT_CEX3C = common dso_local global i32 0, align 4
@PKEY_FLAGS_MATCH_CUR_MKVP = common dso_local global i32 0, align 4
@PKEY_FLAGS_MATCH_ALT_MKVP = common dso_local global i32 0, align 4
@ZCRYPT_CEX6 = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32, %struct.pkey_apqn*, i64*)* @pkey_apqns4keytype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_apqns4keytype(i32 %0, i32* %1, i32* %2, i32 %3, %struct.pkey_apqn* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pkey_apqn*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.pkey_apqn* %4, %struct.pkey_apqn** %11, align 8
  store i64* %5, i64** %12, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  store i32* null, i32** %15, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @PKEY_TYPE_CCA_DATA, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @PKEY_TYPE_CCA_CIPHER, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %86

28:                                               ; preds = %24, %6
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %29 = load i32, i32* @ZCRYPT_CEX3C, align 4
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @PKEY_FLAGS_MATCH_CUR_MKVP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i64, i64* %16, align 8
  %36 = inttoptr i64 %35 to i64*
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %16, align 8
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @PKEY_FLAGS_MATCH_ALT_MKVP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32*, i32** %9, align 8
  %45 = bitcast i32* %44 to i64*
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %17, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @PKEY_TYPE_CCA_CIPHER, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @ZCRYPT_CEX6, align 4
  store i32 %52, i32* %18, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i32, i32* %18, align 4
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* %17, align 8
  %57 = call i32 @cca_findcard2(i32** %15, i32* %14, i32 65535, i32 65535, i32 %54, i64 %55, i64 %56, i32 1)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %87

61:                                               ; preds = %53
  %62 = load %struct.pkey_apqn*, %struct.pkey_apqn** %11, align 8
  %63 = icmp ne %struct.pkey_apqn* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %61
  %65 = load i64*, i64** %12, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @ENOSPC, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %13, align 4
  br label %81

73:                                               ; preds = %64
  %74 = load %struct.pkey_apqn*, %struct.pkey_apqn** %11, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memcpy(%struct.pkey_apqn* %74, i32* %75, i32 %79)
  br label %81

81:                                               ; preds = %73, %70
  br label %82

82:                                               ; preds = %81, %61
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64*, i64** %12, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %24
  br label %87

87:                                               ; preds = %86, %60
  %88 = load i32*, i32** %15, align 8
  %89 = call i32 @kfree(i32* %88)
  %90 = load i32, i32* %13, align 4
  ret i32 %90
}

declare dso_local i32 @cca_findcard2(i32**, i32*, i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @memcpy(%struct.pkey_apqn*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
