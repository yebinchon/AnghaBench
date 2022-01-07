; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_efuse.c_EFUSE_Read1Byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_efuse.c_EFUSE_Read1Byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@EFUSE_WIFI = common dso_local global i32 0, align 4
@TYPE_EFUSE_REAL_CONTENT_LEN = common dso_local global i32 0, align 4
@EFUSE_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EFUSE_Read1Byte(%struct.adapter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = load i32, i32* @EFUSE_WIFI, align 4
  %12 = load i32, i32* @TYPE_EFUSE_REAL_CONTENT_LEN, align 4
  %13 = bitcast i64* %9 to i8*
  %14 = call i32 @EFUSE_GetEfuseDefinition(%struct.adapter* %10, i32 %11, i32 %12, i8* %13, i32 0)
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %79

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = load i64, i64* @EFUSE_CTRL, align 8
  %24 = add nsw i64 %23, 1
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @rtw_write8(%struct.adapter* %22, i64 %24, i32 %25)
  %27 = load %struct.adapter*, %struct.adapter** %4, align 8
  %28 = load i64, i64* @EFUSE_CTRL, align 8
  %29 = add nsw i64 %28, 2
  %30 = call i32 @rtw_read8(%struct.adapter* %27, i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i64, i64* %5, align 8
  %32 = ashr i64 %31, 8
  %33 = and i64 %32, 3
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 252
  %36 = sext i32 %35 to i64
  %37 = or i64 %33, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load %struct.adapter*, %struct.adapter** %4, align 8
  %40 = load i64, i64* @EFUSE_CTRL, align 8
  %41 = add nsw i64 %40, 2
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @rtw_write8(%struct.adapter* %39, i64 %41, i32 %42)
  %44 = load %struct.adapter*, %struct.adapter** %4, align 8
  %45 = load i64, i64* @EFUSE_CTRL, align 8
  %46 = add nsw i64 %45, 3
  %47 = call i32 @rtw_read8(%struct.adapter* %44, i64 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 127
  store i32 %49, i32* %7, align 4
  %50 = load %struct.adapter*, %struct.adapter** %4, align 8
  %51 = load i64, i64* @EFUSE_CTRL, align 8
  %52 = add nsw i64 %51, 3
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @rtw_write8(%struct.adapter* %50, i64 %52, i32 %53)
  %55 = load %struct.adapter*, %struct.adapter** %4, align 8
  %56 = load i64, i64* @EFUSE_CTRL, align 8
  %57 = add nsw i64 %56, 3
  %58 = call i32 @rtw_read8(%struct.adapter* %55, i64 %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %74, %18
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 128
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.adapter*, %struct.adapter** %4, align 8
  %66 = load i64, i64* @EFUSE_CTRL, align 8
  %67 = add nsw i64 %66, 3
  %68 = call i32 @rtw_read8(%struct.adapter* %65, i64 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 1000
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %75

74:                                               ; preds = %64
  br label %59

75:                                               ; preds = %73, %59
  %76 = load %struct.adapter*, %struct.adapter** %4, align 8
  %77 = load i64, i64* @EFUSE_CTRL, align 8
  %78 = call i32 @rtw_read8(%struct.adapter* %76, i64 %77)
  store i32 %78, i32* %3, align 4
  br label %80

79:                                               ; preds = %2
  store i32 255, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %75
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @EFUSE_GetEfuseDefinition(%struct.adapter*, i32, i32, i8*, i32) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i64, i32) #1

declare dso_local i32 @rtw_read8(%struct.adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
