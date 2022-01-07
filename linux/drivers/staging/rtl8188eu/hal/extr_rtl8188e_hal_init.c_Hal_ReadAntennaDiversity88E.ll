; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_Hal_ReadAntennaDiversity88E.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_Hal_ReadAntennaDiversity88E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.registry_priv, %struct.hal_data_8188e* }
%struct.registry_priv = type { i32, i32 }
%struct.hal_data_8188e = type { i32, i32 }

@EEPROM_RF_BOARD_OPTION_88E = common dso_local global i64 0, align 8
@EEPROM_DEFAULT_BOARD_OPTION = common dso_local global i32 0, align 4
@EEPROM_RF_ANTENNA_OPT_88E = common dso_local global i64 0, align 8
@CG_TRX_HW_ANTDIV = common dso_local global i32 0, align 4
@CGCS_RX_HW_ANTDIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"EEPROM : AntDivCfg = %x, TRxAntDivType = %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hal_ReadAntennaDiversity88E(%struct.adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hal_data_8188e*, align 8
  %8 = alloca %struct.registry_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  %11 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %10, align 8
  store %struct.hal_data_8188e* %11, %struct.hal_data_8188e** %7, align 8
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  store %struct.registry_priv* %13, %struct.registry_priv** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %91, label %16

16:                                               ; preds = %3
  %17 = load %struct.registry_priv*, %struct.registry_priv** %8, align 8
  %18 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* @EEPROM_RF_BOARD_OPTION_88E, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 24
  %27 = ashr i32 %26, 3
  %28 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %29 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i64, i64* @EEPROM_RF_BOARD_OPTION_88E, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 255
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load i32, i32* @EEPROM_DEFAULT_BOARD_OPTION, align 4
  %37 = and i32 %36, 24
  %38 = ashr i32 %37, 3
  %39 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %40 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %21
  br label %48

42:                                               ; preds = %16
  %43 = load %struct.registry_priv*, %struct.registry_priv** %8, align 8
  %44 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %47 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %41
  %49 = load %struct.registry_priv*, %struct.registry_priv** %8, align 8
  %50 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = load i64, i64* @EEPROM_RF_ANTENNA_OPT_88E, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %59 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %61 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 255
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load i32, i32* @CG_TRX_HW_ANTDIV, align 4
  %66 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %67 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %53
  br label %75

69:                                               ; preds = %48
  %70 = load %struct.registry_priv*, %struct.registry_priv** %8, align 8
  %71 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %74 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %68
  %76 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %77 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CG_TRX_HW_ANTDIV, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %83 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CGCS_RX_HW_ANTDIV, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81, %75
  %88 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %89 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %81
  br label %99

91:                                               ; preds = %3
  %92 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %93 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %92, i32 0, i32 0
  store i32 0, i32* %93, align 4
  %94 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %95 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %98 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %90
  %100 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %101 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %104 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @DBG_88E(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %105)
  ret void
}

declare dso_local i32 @DBG_88E(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
