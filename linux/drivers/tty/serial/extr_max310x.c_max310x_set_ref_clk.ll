; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_set_ref_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_set_ref_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max310x_port = type { i32 }

@MAX310X_CLKSRC_EXTCLK_BIT = common dso_local global i32 0, align 4
@MAX310X_CLKSRC_CRYST_BIT = common dso_local global i32 0, align 4
@MAX310X_CLKSRC_PLL_BIT = common dso_local global i32 0, align 4
@MAX310X_PLLCFG_REG = common dso_local global i32 0, align 4
@MAX310X_CLKSRC_PLLBYP_BIT = common dso_local global i32 0, align 4
@MAX310X_CLKSRC_REG = common dso_local global i32 0, align 4
@MAX310X_STS_IRQSTS_REG = common dso_local global i32 0, align 4
@MAX310X_STS_CLKREADY_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"clock is not stable yet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.max310x_port*, i64, i32)* @max310x_set_ref_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max310x_set_ref_clk(%struct.device* %0, %struct.max310x_port* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.max310x_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.max310x_port* %1, %struct.max310x_port** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i64 -1, i64* %12, align 8
  %17 = load i64, i64* %7, align 8
  store i64 %17, i64* %15, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @max310x_update_best_err(i64 %18, i64* %12)
  store i32 1, i32* %9, align 4
  br label %20

20:                                               ; preds = %100, %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ule i32 %21, 63
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* %12, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ false, %20 ], [ %25, %23 ]
  br i1 %27, label %28, label %103

28:                                               ; preds = %26
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @DIV_ROUND_CLOSEST(i64 %29, i32 %30)
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = mul i64 %32, 6
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp uge i64 %34, 500000
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load i64, i64* %13, align 8
  %38 = icmp ule i64 %37, 800000
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i64, i64* %14, align 8
  %41 = call i32 @max310x_update_best_err(i64 %40, i64* %12)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = or i32 0, %44
  store i32 %45, i32* %11, align 4
  %46 = load i64, i64* %14, align 8
  store i64 %46, i64* %15, align 8
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %36, %28
  %49 = load i64, i64* %13, align 8
  %50 = mul i64 %49, 48
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %13, align 8
  %52 = icmp uge i64 %51, 850000
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load i64, i64* %13, align 8
  %55 = icmp ule i64 %54, 1200000
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @max310x_update_best_err(i64 %57, i64* %12)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = or i32 64, %61
  store i32 %62, i32* %11, align 4
  %63 = load i64, i64* %14, align 8
  store i64 %63, i64* %15, align 8
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %53, %48
  %66 = load i64, i64* %13, align 8
  %67 = mul i64 %66, 96
  store i64 %67, i64* %14, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp uge i64 %68, 425000
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load i64, i64* %13, align 8
  %72 = icmp ule i64 %71, 1000000
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i64, i64* %14, align 8
  %75 = call i32 @max310x_update_best_err(i64 %74, i64* %12)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = or i32 128, %78
  store i32 %79, i32* %11, align 4
  %80 = load i64, i64* %14, align 8
  store i64 %80, i64* %15, align 8
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %81, %70, %65
  %83 = load i64, i64* %13, align 8
  %84 = mul i64 %83, 144
  store i64 %84, i64* %14, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp uge i64 %85, 390000
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load i64, i64* %13, align 8
  %89 = icmp ule i64 %88, 667000
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i64, i64* %14, align 8
  %92 = call i32 @max310x_update_best_err(i64 %91, i64* %12)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = or i32 192, %95
  store i32 %96, i32* %11, align 4
  %97 = load i64, i64* %14, align 8
  store i64 %97, i64* %15, align 8
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %87, %82
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %9, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %20

103:                                              ; preds = %26
  %104 = load i32, i32* @MAX310X_CLKSRC_EXTCLK_BIT, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @MAX310X_CLKSRC_CRYST_BIT, align 4
  br label %110

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ]
  %112 = or i32 %104, %111
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load i32, i32* @MAX310X_CLKSRC_PLL_BIT, align 4
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load %struct.max310x_port*, %struct.max310x_port** %6, align 8
  %120 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MAX310X_PLLCFG_REG, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @regmap_write(i32 %121, i32 %122, i32 %123)
  br label %129

125:                                              ; preds = %110
  %126 = load i32, i32* @MAX310X_CLKSRC_PLLBYP_BIT, align 4
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %125, %115
  %130 = load %struct.max310x_port*, %struct.max310x_port** %6, align 8
  %131 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @MAX310X_CLKSRC_REG, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @regmap_write(i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %129
  %139 = call i32 @msleep(i32 10)
  %140 = load %struct.max310x_port*, %struct.max310x_port** %6, align 8
  %141 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MAX310X_STS_IRQSTS_REG, align 4
  %144 = call i32 @regmap_read(i32 %142, i32 %143, i32* %16)
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* @MAX310X_STS_CLKREADY_BIT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %138
  %150 = load %struct.device*, %struct.device** %5, align 8
  %151 = call i32 @dev_warn(%struct.device* %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %138
  br label %153

153:                                              ; preds = %152, %129
  %154 = load i64, i64* %15, align 8
  %155 = trunc i64 %154 to i32
  ret i32 %155
}

declare dso_local i32 @max310x_update_best_err(i64, i64*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
