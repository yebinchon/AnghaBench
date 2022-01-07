; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_usb.c_rsi_reset_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_usb.c_rsi_reset_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_hw = type { i64 }

@INFO_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Resetting Card...\0A\00", align 1
@RSI_TA_HOLD_REG = common dso_local global i32 0, align 4
@SWBL_REGOUT = common dso_local global i32 0, align 4
@RSI_FW_WDT_DISABLE_REQ = common dso_local global i32 0, align 4
@RSI_COMMON_REG_SIZE = common dso_local global i32 0, align 4
@ERR_ZONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Disabling firmware watchdog timer failed\0A\00", align 1
@RSI_DEV_9116 = common dso_local global i64 0, align 8
@RSI_WATCH_DOG_TIMER_1 = common dso_local global i32 0, align 4
@RSI_ULP_WRITE_2 = common dso_local global i32 0, align 4
@RSI_WATCH_DOG_TIMER_2 = common dso_local global i32 0, align 4
@RSI_ULP_WRITE_0 = common dso_local global i32 0, align 4
@RSI_WATCH_DOG_DELAY_TIMER_1 = common dso_local global i32 0, align 4
@RSI_ULP_WRITE_50 = common dso_local global i32 0, align 4
@RSI_WATCH_DOG_DELAY_TIMER_2 = common dso_local global i32 0, align 4
@RSI_WATCH_DOG_TIMER_ENABLE = common dso_local global i32 0, align 4
@RSI_ULP_TIMER_ENABLE = common dso_local global i32 0, align 4
@NWP_WWD_INTERRUPT_TIMER = common dso_local global i32 0, align 4
@NWP_WWD_INT_TIMER_CLKS = common dso_local global i32 0, align 4
@RSI_9116_REG_SIZE = common dso_local global i32 0, align 4
@NWP_WWD_SYSTEM_RESET_TIMER = common dso_local global i32 0, align 4
@NWP_WWD_SYS_RESET_TIMER_CLKS = common dso_local global i32 0, align 4
@NWP_WWD_MODE_AND_RSTART = common dso_local global i32 0, align 4
@NWP_WWD_TIMER_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Reset card done\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Reset card failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsi_hw*)* @rsi_reset_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_reset_card(%struct.rsi_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsi_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.rsi_hw* %0, %struct.rsi_hw** %3, align 8
  %5 = load i32, i32* @INFO_ZONE, align 4
  %6 = call i32 @rsi_dbg(i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %8 = load i32, i32* @RSI_TA_HOLD_REG, align 4
  %9 = call i32 @rsi_usb_master_reg_write(%struct.rsi_hw* %7, i32 %8, i32 14, i32 4)
  %10 = call i32 @msleep(i32 100)
  %11 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %12 = load i32, i32* @SWBL_REGOUT, align 4
  %13 = load i32, i32* @RSI_FW_WDT_DISABLE_REQ, align 4
  %14 = load i32, i32* @RSI_COMMON_REG_SIZE, align 4
  %15 = call i32 @rsi_usb_master_reg_write(%struct.rsi_hw* %11, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ERR_ZONE, align 4
  %20 = call i32 @rsi_dbg(i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %97

21:                                               ; preds = %1
  %22 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %23 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RSI_DEV_9116, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %21
  %28 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %29 = load i32, i32* @RSI_WATCH_DOG_TIMER_1, align 4
  %30 = load i32, i32* @RSI_ULP_WRITE_2, align 4
  %31 = call i32 @usb_ulp_read_write(%struct.rsi_hw* %28, i32 %29, i32 %30, i32 32)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %97

35:                                               ; preds = %27
  %36 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %37 = load i32, i32* @RSI_WATCH_DOG_TIMER_2, align 4
  %38 = load i32, i32* @RSI_ULP_WRITE_0, align 4
  %39 = call i32 @usb_ulp_read_write(%struct.rsi_hw* %36, i32 %37, i32 %38, i32 32)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %97

43:                                               ; preds = %35
  %44 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %45 = load i32, i32* @RSI_WATCH_DOG_DELAY_TIMER_1, align 4
  %46 = load i32, i32* @RSI_ULP_WRITE_50, align 4
  %47 = call i32 @usb_ulp_read_write(%struct.rsi_hw* %44, i32 %45, i32 %46, i32 32)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %97

51:                                               ; preds = %43
  %52 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %53 = load i32, i32* @RSI_WATCH_DOG_DELAY_TIMER_2, align 4
  %54 = load i32, i32* @RSI_ULP_WRITE_0, align 4
  %55 = call i32 @usb_ulp_read_write(%struct.rsi_hw* %52, i32 %53, i32 %54, i32 32)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %97

59:                                               ; preds = %51
  %60 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %61 = load i32, i32* @RSI_WATCH_DOG_TIMER_ENABLE, align 4
  %62 = load i32, i32* @RSI_ULP_TIMER_ENABLE, align 4
  %63 = call i32 @usb_ulp_read_write(%struct.rsi_hw* %60, i32 %61, i32 %62, i32 32)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %97

67:                                               ; preds = %59
  br label %93

68:                                               ; preds = %21
  %69 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %70 = load i32, i32* @NWP_WWD_INTERRUPT_TIMER, align 4
  %71 = load i32, i32* @NWP_WWD_INT_TIMER_CLKS, align 4
  %72 = load i32, i32* @RSI_9116_REG_SIZE, align 4
  %73 = call i32 @rsi_usb_master_reg_write(%struct.rsi_hw* %69, i32 %70, i32 %71, i32 %72)
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %97

76:                                               ; preds = %68
  %77 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %78 = load i32, i32* @NWP_WWD_SYSTEM_RESET_TIMER, align 4
  %79 = load i32, i32* @NWP_WWD_SYS_RESET_TIMER_CLKS, align 4
  %80 = load i32, i32* @RSI_9116_REG_SIZE, align 4
  %81 = call i32 @rsi_usb_master_reg_write(%struct.rsi_hw* %77, i32 %78, i32 %79, i32 %80)
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %97

84:                                               ; preds = %76
  %85 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %86 = load i32, i32* @NWP_WWD_MODE_AND_RSTART, align 4
  %87 = load i32, i32* @NWP_WWD_TIMER_DISABLE, align 4
  %88 = load i32, i32* @RSI_9116_REG_SIZE, align 4
  %89 = call i32 @rsi_usb_master_reg_write(%struct.rsi_hw* %85, i32 %86, i32 %87, i32 %88)
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %97

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %67
  %94 = load i32, i32* @INFO_ZONE, align 4
  %95 = call i32 @rsi_dbg(i32 %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %101

97:                                               ; preds = %91, %83, %75, %66, %58, %50, %42, %34, %18
  %98 = load i32, i32* @ERR_ZONE, align 4
  %99 = call i32 @rsi_dbg(i32 %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %93
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @rsi_dbg(i32, i8*) #1

declare dso_local i32 @rsi_usb_master_reg_write(%struct.rsi_hw*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_ulp_read_write(%struct.rsi_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
