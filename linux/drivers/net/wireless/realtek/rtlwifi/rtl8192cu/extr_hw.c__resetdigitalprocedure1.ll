; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__resetdigitalprocedure1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__resetdigitalprocedure1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32 }

@REG_MCUFWDL = common dso_local global i64 0, align 8
@REG_SYS_FUNC_EN = common dso_local global i64 0, align 8
@FEN_CPUEN = common dso_local global i32 0, align 4
@FEN_HWPDN = common dso_local global i32 0, align 4
@FEN_ELDR = common dso_local global i32 0, align 4
@REG_HMETFR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"8051 reset failed!.........................\0A\00", align 1
@REG_SYS_CLKR = common dso_local global i64 0, align 8
@REG_AFE_PLL_CTRL = common dso_local global i64 0, align 8
@REG_AFE_XTAL_CTRL = common dso_local global i64 0, align 8
@REG_SYS_ISO_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @_resetdigitalprocedure1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_resetdigitalprocedure1(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %12)
  store %struct.rtl_hal* %13, %struct.rtl_hal** %6, align 8
  %14 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %15 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 32
  br i1 %17, label %18, label %53

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %20 = load i64, i64* @REG_MCUFWDL, align 8
  %21 = call i32 @rtl_write_byte(%struct.rtl_priv* %19, i64 %20, i32 0)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %23 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %24 = call i32 @rtl_read_word(%struct.rtl_priv* %22, i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %26 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @FEN_CPUEN, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @rtl_write_word(%struct.rtl_priv* %25, i64 %26, i32 %30)
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %33 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %34 = call i32 @rtl_read_word(%struct.rtl_priv* %32, i64 %33)
  %35 = and i32 %34, 4095
  store i32 %35, i32* %7, align 4
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %37 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @FEN_HWPDN, align 4
  %40 = load i32, i32* @FEN_ELDR, align 4
  %41 = or i32 %39, %40
  %42 = or i32 %38, %41
  %43 = call i32 @rtl_write_word(%struct.rtl_priv* %36, i64 %37, i32 %42)
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %45 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %46 = call i32 @rtl_read_word(%struct.rtl_priv* %44, i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %48 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @FEN_CPUEN, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @rtl_write_word(%struct.rtl_priv* %47, i64 %48, i32 %51)
  br label %102

53:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %55 = load i64, i64* @REG_MCUFWDL, align 8
  %56 = call i32 @rtl_read_byte(%struct.rtl_priv* %54, i64 %55)
  %57 = call i32 @BIT(i32 1)
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %53
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %62 = load i64, i64* @REG_MCUFWDL, align 8
  %63 = call i32 @rtl_write_byte(%struct.rtl_priv* %61, i64 %62, i32 0)
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %65 = load i64, i64* @REG_HMETFR, align 8
  %66 = add nsw i64 %65, 3
  %67 = call i32 @rtl_write_byte(%struct.rtl_priv* %64, i64 %66, i32 32)
  br label %68

68:                                               ; preds = %81, %60
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = icmp slt i32 %69, 100
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* @FEN_CPUEN, align 4
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %75 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %76 = call i32 @rtl_read_word(%struct.rtl_priv* %74, i64 %75)
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %72, %68
  %80 = phi i1 [ false, %68 ], [ %78, %72 ]
  br i1 %80, label %81, label %83

81:                                               ; preds = %79
  %82 = call i32 @udelay(i32 50)
  br label %68

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = icmp sge i32 %84, 100
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %89 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %90 = add nsw i64 %89, 1
  %91 = call i32 @rtl_write_byte(%struct.rtl_priv* %88, i64 %90, i32 80)
  %92 = call i32 @udelay(i32 100)
  br label %93

93:                                               ; preds = %86, %83
  br label %94

94:                                               ; preds = %93, %53
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %96 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %97 = add nsw i64 %96, 1
  %98 = call i32 @rtl_write_byte(%struct.rtl_priv* %95, i64 %97, i32 84)
  %99 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %100 = load i64, i64* @REG_MCUFWDL, align 8
  %101 = call i32 @rtl_write_byte(%struct.rtl_priv* %99, i64 %100, i32 0)
  br label %102

102:                                              ; preds = %94, %18
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %107 = load i64, i64* @REG_SYS_CLKR, align 8
  %108 = call i32 @rtl_write_word(%struct.rtl_priv* %106, i64 %107, i32 28835)
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %110 = load i64, i64* @REG_AFE_PLL_CTRL, align 8
  %111 = call i32 @rtl_write_byte(%struct.rtl_priv* %109, i64 %110, i32 128)
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %113 = load i64, i64* @REG_AFE_XTAL_CTRL, align 8
  %114 = call i32 @rtl_write_word(%struct.rtl_priv* %112, i64 %113, i32 34831)
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %116 = load i64, i64* @REG_SYS_ISO_CTRL, align 8
  %117 = call i32 @rtl_write_byte(%struct.rtl_priv* %115, i64 %116, i32 249)
  br label %118

118:                                              ; preds = %105, %102
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_read_word(%struct.rtl_priv*, i64) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
