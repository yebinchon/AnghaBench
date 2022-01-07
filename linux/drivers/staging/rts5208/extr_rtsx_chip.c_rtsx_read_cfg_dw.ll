; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_read_cfg_dw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_read_cfg_dw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@CFGADDR0 = common dso_local global i64 0, align 8
@CFGADDR1 = common dso_local global i64 0, align 8
@CFGRWCTL = common dso_local global i64 0, align 8
@MAX_RW_REG_CNT = common dso_local global i32 0, align 4
@CFGDATA0 = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_read_cfg_dw(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %15 = load i64, i64* @CFGADDR0, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @rtsx_write_register(%struct.rtsx_chip* %14, i64 %15, i32 255, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %99

22:                                               ; preds = %4
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %24 = load i64, i64* @CFGADDR1, align 8
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 8
  %27 = call i32 @rtsx_write_register(%struct.rtsx_chip* %23, i64 %24, i32 255, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %99

32:                                               ; preds = %22
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %34 = load i64, i64* @CFGRWCTL, align 8
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 3
  %37 = shl i32 %36, 4
  %38 = or i32 128, %37
  %39 = call i32 @rtsx_write_register(%struct.rtsx_chip* %33, i64 %34, i32 255, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %99

44:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %63, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @MAX_RW_REG_CNT, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %51 = load i64, i64* @CFGRWCTL, align 8
  %52 = call i32 @rtsx_read_register(%struct.rtsx_chip* %50, i64 %51, i32* %12)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %99

57:                                               ; preds = %49
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %58, 128
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %66

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %45

66:                                               ; preds = %61, %45
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %88, %66
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %91

70:                                               ; preds = %67
  %71 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %72 = load i64, i64* @CFGDATA0, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = call i32 @rtsx_read_register(%struct.rtsx_chip* %71, i64 %75, i32* %12)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %5, align 4
  br label %99

81:                                               ; preds = %70
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = mul nsw i32 %83, 8
  %85 = shl i32 %82, %84
  %86 = load i32, i32* %13, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %67

91:                                               ; preds = %67
  %92 = load i32*, i32** %9, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %13, align 4
  %96 = load i32*, i32** %9, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %97, %79, %55, %42, %30, %20
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i64, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
