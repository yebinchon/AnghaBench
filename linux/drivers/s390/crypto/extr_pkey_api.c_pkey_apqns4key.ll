; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_apqns4key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_apqns4key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkey_apqn = type { i32 }
%struct.keytoken_header = type { i64, i64 }
%struct.secaeskeytoken = type { i32 }
%struct.cipherkeytoken = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TOKTYPE_CCA_INTERNAL = common dso_local global i64 0, align 8
@TOKVER_CCA_AES = common dso_local global i64 0, align 8
@TOKVER_CCA_VLSC = common dso_local global i64 0, align 8
@ZCRYPT_CEX3C = common dso_local global i32 0, align 4
@PKEY_FLAGS_MATCH_CUR_MKVP = common dso_local global i64 0, align 8
@PKEY_FLAGS_MATCH_ALT_MKVP = common dso_local global i64 0, align 8
@ZCRYPT_CEX6 = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, %struct.pkey_apqn*, i64*)* @pkey_apqns4key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_apqns4key(i32* %0, i64 %1, i64 %2, %struct.pkey_apqn* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pkey_apqn*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.keytoken_header*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.secaeskeytoken*, align 8
  %20 = alloca %struct.cipherkeytoken*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.pkey_apqn* %3, %struct.pkey_apqn** %10, align 8
  store i64* %4, i64** %11, align 8
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %12, align 4
  store i64* null, i64** %14, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = bitcast i32* %22 to %struct.keytoken_header*
  store %struct.keytoken_header* %23, %struct.keytoken_header** %15, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %24, 16
  br i1 %25, label %35, label %26

26:                                               ; preds = %5
  %27 = load %struct.keytoken_header*, %struct.keytoken_header** %15, align 8
  %28 = getelementptr inbounds %struct.keytoken_header, %struct.keytoken_header* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TOKTYPE_CCA_INTERNAL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %26, %5
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %134

38:                                               ; preds = %32
  %39 = load %struct.keytoken_header*, %struct.keytoken_header** %15, align 8
  %40 = getelementptr inbounds %struct.keytoken_header, %struct.keytoken_header* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TOKVER_CCA_AES, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.keytoken_header*, %struct.keytoken_header** %15, align 8
  %46 = getelementptr inbounds %struct.keytoken_header, %struct.keytoken_header* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TOKVER_CCA_VLSC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %129

50:                                               ; preds = %44, %38
  %51 = load i32, i32* @ZCRYPT_CEX3C, align 4
  store i32 %51, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %52 = load %struct.keytoken_header*, %struct.keytoken_header** %15, align 8
  %53 = getelementptr inbounds %struct.keytoken_header, %struct.keytoken_header* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TOKVER_CCA_AES, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %50
  %58 = load i32*, i32** %7, align 8
  %59 = bitcast i32* %58 to %struct.secaeskeytoken*
  store %struct.secaeskeytoken* %59, %struct.secaeskeytoken** %19, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @PKEY_FLAGS_MATCH_CUR_MKVP, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.secaeskeytoken*, %struct.secaeskeytoken** %19, align 8
  %66 = getelementptr inbounds %struct.secaeskeytoken, %struct.secaeskeytoken* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %17, align 4
  br label %68

68:                                               ; preds = %64, %57
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @PKEY_FLAGS_MATCH_ALT_MKVP, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.secaeskeytoken*, %struct.secaeskeytoken** %19, align 8
  %75 = getelementptr inbounds %struct.secaeskeytoken, %struct.secaeskeytoken* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %18, align 4
  br label %77

77:                                               ; preds = %73, %68
  br label %100

78:                                               ; preds = %50
  %79 = load i32*, i32** %7, align 8
  %80 = bitcast i32* %79 to %struct.cipherkeytoken*
  store %struct.cipherkeytoken* %80, %struct.cipherkeytoken** %20, align 8
  %81 = load i32, i32* @ZCRYPT_CEX6, align 4
  store i32 %81, i32* %16, align 4
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @PKEY_FLAGS_MATCH_CUR_MKVP, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load %struct.cipherkeytoken*, %struct.cipherkeytoken** %20, align 8
  %88 = getelementptr inbounds %struct.cipherkeytoken, %struct.cipherkeytoken* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %17, align 4
  br label %90

90:                                               ; preds = %86, %78
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @PKEY_FLAGS_MATCH_ALT_MKVP, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.cipherkeytoken*, %struct.cipherkeytoken** %20, align 8
  %97 = getelementptr inbounds %struct.cipherkeytoken, %struct.cipherkeytoken* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %18, align 4
  br label %99

99:                                               ; preds = %95, %90
  br label %100

100:                                              ; preds = %99, %77
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @cca_findcard2(i64** %14, i64* %13, i32 65535, i32 65535, i32 %101, i32 %102, i32 %103, i32 1)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %130

108:                                              ; preds = %100
  %109 = load %struct.pkey_apqn*, %struct.pkey_apqn** %10, align 8
  %110 = icmp ne %struct.pkey_apqn* %109, null
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = load i64*, i64** %11, align 8
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %13, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @ENOSPC, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %12, align 4
  br label %125

119:                                              ; preds = %111
  %120 = load %struct.pkey_apqn*, %struct.pkey_apqn** %10, align 8
  %121 = load i64*, i64** %14, align 8
  %122 = load i64, i64* %13, align 8
  %123 = mul i64 %122, 8
  %124 = call i32 @memcpy(%struct.pkey_apqn* %120, i64* %121, i64 %123)
  br label %125

125:                                              ; preds = %119, %116
  br label %126

126:                                              ; preds = %125, %108
  %127 = load i64, i64* %13, align 8
  %128 = load i64*, i64** %11, align 8
  store i64 %127, i64* %128, align 8
  br label %129

129:                                              ; preds = %126, %44
  br label %130

130:                                              ; preds = %129, %107
  %131 = load i64*, i64** %14, align 8
  %132 = call i32 @kfree(i64* %131)
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %130, %35
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @cca_findcard2(i64**, i64*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.pkey_apqn*, i64*, i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
