; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_GetEfuseDefinition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_GetEfuseDefinition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@EFUSE_WIFI = common dso_local global i32 0, align 4
@EFUSE_MAX_SECTION_8723B = common dso_local global i32 0, align 4
@EFUSE_BT_MAX_SECTION = common dso_local global i32 0, align 4
@EFUSE_REAL_CONTENT_LEN_8723B = common dso_local global i8* null, align 8
@EFUSE_BT_REAL_CONTENT_LEN = common dso_local global i32 0, align 4
@EFUSE_OOB_PROTECT_BYTES = common dso_local global i8* null, align 8
@EFUSE_BT_REAL_BANK_CONTENT_LEN = common dso_local global i32 0, align 4
@EFUSE_PROTECT_BYTES_BANK = common dso_local global i32 0, align 4
@EFUSE_MAX_MAP_LEN = common dso_local global i32 0, align 4
@EFUSE_BT_MAP_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i32, i8*, i32)* @Hal_GetEfuseDefinition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Hal_GetEfuseDefinition(%struct.adapter* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %129 [
    i32 130, label %20
    i32 128, label %33
    i32 134, label %47
    i32 133, label %67
    i32 131, label %88
    i32 129, label %101
    i32 132, label %115
  ]

20:                                               ; preds = %5
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @EFUSE_WIFI, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EFUSE_MAX_SECTION_8723B, align 4
  %28 = load i32*, i32** %11, align 8
  store i32 %27, i32* %28, align 4
  br label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EFUSE_BT_MAX_SECTION, align 4
  %31 = load i32*, i32** %11, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  br label %133

33:                                               ; preds = %5
  %34 = load i8*, i8** %9, align 8
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %12, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @EFUSE_WIFI, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i8*, i8** @EFUSE_REAL_CONTENT_LEN_8723B, align 8
  %41 = ptrtoint i8* %40 to i32
  %42 = load i32*, i32** %12, align 8
  store i32 %41, i32* %42, align 4
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @EFUSE_BT_REAL_CONTENT_LEN, align 4
  %45 = load i32*, i32** %12, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %39
  br label %133

47:                                               ; preds = %5
  %48 = load i8*, i8** %9, align 8
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %13, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @EFUSE_WIFI, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i8*, i8** @EFUSE_REAL_CONTENT_LEN_8723B, align 8
  %55 = load i8*, i8** @EFUSE_OOB_PROTECT_BYTES, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %13, align 8
  store i32 %59, i32* %60, align 4
  br label %66

61:                                               ; preds = %47
  %62 = load i32, i32* @EFUSE_BT_REAL_BANK_CONTENT_LEN, align 4
  %63 = load i32, i32* @EFUSE_PROTECT_BYTES_BANK, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i32*, i32** %13, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %53
  br label %133

67:                                               ; preds = %5
  %68 = load i8*, i8** %9, align 8
  %69 = bitcast i8* %68 to i32*
  store i32* %69, i32** %14, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @EFUSE_WIFI, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i8*, i8** @EFUSE_REAL_CONTENT_LEN_8723B, align 8
  %75 = load i8*, i8** @EFUSE_OOB_PROTECT_BYTES, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = load i32*, i32** %14, align 8
  store i32 %79, i32* %80, align 4
  br label %87

81:                                               ; preds = %67
  %82 = load i32, i32* @EFUSE_BT_REAL_CONTENT_LEN, align 4
  %83 = load i32, i32* @EFUSE_PROTECT_BYTES_BANK, align 4
  %84 = mul nsw i32 %83, 3
  %85 = sub nsw i32 %82, %84
  %86 = load i32*, i32** %14, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %73
  br label %133

88:                                               ; preds = %5
  %89 = load i8*, i8** %9, align 8
  %90 = bitcast i8* %89 to i32*
  store i32* %90, i32** %15, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @EFUSE_WIFI, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @EFUSE_MAX_MAP_LEN, align 4
  %96 = load i32*, i32** %15, align 8
  store i32 %95, i32* %96, align 4
  br label %100

97:                                               ; preds = %88
  %98 = load i32, i32* @EFUSE_BT_MAP_LEN, align 4
  %99 = load i32*, i32** %15, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %94
  br label %133

101:                                              ; preds = %5
  %102 = load i8*, i8** %9, align 8
  %103 = bitcast i8* %102 to i32*
  store i32* %103, i32** %16, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @EFUSE_WIFI, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i8*, i8** @EFUSE_OOB_PROTECT_BYTES, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = load i32*, i32** %16, align 8
  store i32 %109, i32* %110, align 4
  br label %114

111:                                              ; preds = %101
  %112 = load i32, i32* @EFUSE_PROTECT_BYTES_BANK, align 4
  %113 = load i32*, i32** %16, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %107
  br label %133

115:                                              ; preds = %5
  %116 = load i8*, i8** %9, align 8
  %117 = bitcast i8* %116 to i32*
  store i32* %117, i32** %17, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @EFUSE_WIFI, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i8*, i8** @EFUSE_REAL_CONTENT_LEN_8723B, align 8
  %123 = ptrtoint i8* %122 to i32
  %124 = load i32*, i32** %17, align 8
  store i32 %123, i32* %124, align 4
  br label %128

125:                                              ; preds = %115
  %126 = load i32, i32* @EFUSE_BT_REAL_BANK_CONTENT_LEN, align 4
  %127 = load i32*, i32** %17, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %121
  br label %133

129:                                              ; preds = %5
  %130 = load i8*, i8** %9, align 8
  %131 = bitcast i8* %130 to i32*
  store i32* %131, i32** %18, align 8
  %132 = load i32*, i32** %18, align 8
  store i32 0, i32* %132, align 4
  br label %133

133:                                              ; preds = %129, %128, %114, %100, %87, %66, %46, %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
