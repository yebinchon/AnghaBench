; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_charger.c_start_fastcharge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_charger.c_start_fastcharge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_charger_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Start Fast-charging!\0A\00", align 1
@PM8607_CHG_CTRL1 = common dso_local global i32 0, align 4
@CC1_MODE_OFF = common dso_local global i32 0, align 4
@CC1_ITERM_60MA = common dso_local global i32 0, align 4
@CC1_VFCHG_4_2V = common dso_local global i32 0, align 4
@PM8606_PREREGULATORA = common dso_local global i32 0, align 4
@PREREG1_540MA = common dso_local global i32 0, align 4
@PREREG1_VSYS_4_5V = common dso_local global i32 0, align 4
@PM8607_CHG_CTRL2 = common dso_local global i32 0, align 4
@CC2_ICHG_500MA = common dso_local global i32 0, align 4
@PM8607_CHG_CTRL3 = common dso_local global i32 0, align 4
@CC3_270MIN_TIMEOUT = common dso_local global i32 0, align 4
@PM8607_CHG_CTRL4 = common dso_local global i32 0, align 4
@CC4_IFCHG_MON_EN = common dso_local global i32 0, align 4
@CC4_BTEMP_MON_EN = common dso_local global i32 0, align 4
@PM8607_CHG_CTRL6 = common dso_local global i32 0, align 4
@CC6_BAT_OV_EN = common dso_local global i32 0, align 4
@CC6_BAT_UV_EN = common dso_local global i32 0, align 4
@CC6_UV_VBAT_SET = common dso_local global i32 0, align 4
@PM8607_CHG_CTRL7 = common dso_local global i32 0, align 4
@CC7_BAT_REM_EN = common dso_local global i32 0, align 4
@CC7_IFSM_EN = common dso_local global i32 0, align 4
@CC1_MODE_FASTCHARGE = common dso_local global i32 0, align 4
@VCHG_NORMAL_LOW = common dso_local global i32 0, align 4
@VCHG_NORMAL_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm860x_charger_info*)* @start_fastcharge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_fastcharge(%struct.pm860x_charger_info* %0) #0 {
  %2 = alloca %struct.pm860x_charger_info*, align 8
  %3 = alloca i32, align 4
  store %struct.pm860x_charger_info* %0, %struct.pm860x_charger_info** %2, align 8
  %4 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %2, align 8
  %5 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @dev_dbg(i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %2, align 8
  %9 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PM8607_CHG_CTRL1, align 4
  %12 = load i32, i32* @CC1_MODE_OFF, align 4
  %13 = load i32, i32* @CC1_ITERM_60MA, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CC1_VFCHG_4_2V, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @pm860x_reg_write(i32 %10, i32 %11, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %113

21:                                               ; preds = %1
  %22 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %2, align 8
  %23 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PM8606_PREREGULATORA, align 4
  %26 = load i32, i32* @PREREG1_540MA, align 4
  %27 = load i32, i32* @PREREG1_VSYS_4_5V, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @pm860x_reg_write(i32 %24, i32 %25, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %113

33:                                               ; preds = %21
  %34 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %2, align 8
  %35 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PM8607_CHG_CTRL2, align 4
  %38 = load i32, i32* @CC2_ICHG_500MA, align 4
  %39 = call i32 @pm860x_set_bits(i32 %36, i32 %37, i32 31, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %113

43:                                               ; preds = %33
  %44 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %2, align 8
  %45 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PM8607_CHG_CTRL3, align 4
  %48 = load i32, i32* @CC3_270MIN_TIMEOUT, align 4
  %49 = call i32 @pm860x_set_bits(i32 %46, i32 %47, i32 240, i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %113

53:                                               ; preds = %43
  %54 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %2, align 8
  %55 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PM8607_CHG_CTRL4, align 4
  %58 = load i32, i32* @CC4_IFCHG_MON_EN, align 4
  %59 = load i32, i32* @CC4_BTEMP_MON_EN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @CC4_IFCHG_MON_EN, align 4
  %62 = load i32, i32* @CC4_BTEMP_MON_EN, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @pm860x_set_bits(i32 %56, i32 %57, i32 %60, i32 %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %113

68:                                               ; preds = %53
  %69 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %2, align 8
  %70 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PM8607_CHG_CTRL6, align 4
  %73 = load i32, i32* @CC6_BAT_OV_EN, align 4
  %74 = load i32, i32* @CC6_BAT_UV_EN, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @CC6_UV_VBAT_SET, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @CC6_BAT_OV_EN, align 4
  %79 = load i32, i32* @CC6_BAT_UV_EN, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @CC6_UV_VBAT_SET, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @pm860x_set_bits(i32 %71, i32 %72, i32 %77, i32 %82)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %68
  br label %113

87:                                               ; preds = %68
  %88 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %2, align 8
  %89 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PM8607_CHG_CTRL7, align 4
  %92 = load i32, i32* @CC7_BAT_REM_EN, align 4
  %93 = load i32, i32* @CC7_IFSM_EN, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @CC7_BAT_REM_EN, align 4
  %96 = load i32, i32* @CC7_IFSM_EN, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @pm860x_set_bits(i32 %90, i32 %91, i32 %94, i32 %97)
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  br label %113

102:                                              ; preds = %87
  %103 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %2, align 8
  %104 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PM8607_CHG_CTRL1, align 4
  %107 = load i32, i32* @CC1_MODE_FASTCHARGE, align 4
  %108 = call i32 @pm860x_set_bits(i32 %105, i32 %106, i32 3, i32 %107)
  store i32 %108, i32* %3, align 4
  %109 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %2, align 8
  %110 = load i32, i32* @VCHG_NORMAL_LOW, align 4
  %111 = load i32, i32* @VCHG_NORMAL_HIGH, align 4
  %112 = call i32 @set_vchg_threshold(%struct.pm860x_charger_info* %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %102, %101, %86, %67, %52, %42, %32, %20
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @pm860x_reg_write(i32, i32, i32) #1

declare dso_local i32 @pm860x_set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @set_vchg_threshold(%struct.pm860x_charger_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
