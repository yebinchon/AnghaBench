; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_write_cfg_dw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_write_cfg_dw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@CFGDATA0 = common dso_local global i64 0, align 8
@CFGADDR0 = common dso_local global i64 0, align 8
@CFGADDR1 = common dso_local global i64 0, align 8
@CFGRWCTL = common dso_local global i64 0, align 8
@MAX_RW_REG_CNT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_write_cfg_dw(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtsx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %48, %5
  %17 = load i32, i32* %15, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %51

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %20, 255
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %25 = load i64, i64* @CFGDATA0, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %29, %30
  %32 = and i32 %31, 255
  %33 = call i32 @rtsx_write_register(%struct.rtsx_chip* %24, i64 %28, i32 255, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %112

38:                                               ; preds = %23
  %39 = load i32, i32* %15, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* %13, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %38, %19
  %44 = load i32, i32* %10, align 4
  %45 = ashr i32 %44, 8
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = ashr i32 %46, 8
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %15, align 4
  br label %16

51:                                               ; preds = %16
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %110

54:                                               ; preds = %51
  %55 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %56 = load i64, i64* @CFGADDR0, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @rtsx_write_register(%struct.rtsx_chip* %55, i64 %56, i32 255, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %6, align 4
  br label %112

63:                                               ; preds = %54
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %65 = load i64, i64* @CFGADDR1, align 8
  %66 = load i32, i32* %9, align 4
  %67 = ashr i32 %66, 8
  %68 = call i32 @rtsx_write_register(%struct.rtsx_chip* %64, i64 %65, i32 255, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %112

73:                                               ; preds = %63
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %75 = load i64, i64* @CFGRWCTL, align 8
  %76 = load i32, i32* %13, align 4
  %77 = or i32 128, %76
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 3
  %80 = shl i32 %79, 4
  %81 = or i32 %77, %80
  %82 = call i32 @rtsx_write_register(%struct.rtsx_chip* %74, i64 %75, i32 255, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %6, align 4
  br label %112

87:                                               ; preds = %73
  store i32 0, i32* %15, align 4
  br label %88

88:                                               ; preds = %106, %87
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @MAX_RW_REG_CNT, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %88
  %93 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %94 = load i64, i64* @CFGRWCTL, align 8
  %95 = call i32 @rtsx_read_register(%struct.rtsx_chip* %93, i64 %94, i32* %14)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %6, align 4
  br label %112

100:                                              ; preds = %92
  %101 = load i32, i32* %14, align 4
  %102 = and i32 %101, 128
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %109

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %88

109:                                              ; preds = %104, %88
  br label %110

110:                                              ; preds = %109, %51
  %111 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %110, %98, %85, %71, %61, %36
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i64, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
