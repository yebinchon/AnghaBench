; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_enter_ss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_enter_ss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"Enter Selective Suspend State!\0A\00", align 1
@IRQSTAT0 = common dso_local global i32 0, align 4
@LINK_RDY_INT = common dso_local global i32 0, align 4
@SSC_PDCTL = common dso_local global i32 0, align 4
@OC_PDCTL = common dso_local global i32 0, align 4
@HOST_SLEEP_STATE = common dso_local global i32 0, align 4
@RTSX_BIER = common dso_local global i32 0, align 4
@CARD_INT = common dso_local global i32 0, align 4
@CHANGE_LINK_STATE = common dso_local global i32 0, align 4
@RTSX_STAT_SS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_enter_ss(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %4 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %5 = call i32 @rtsx_dev(%struct.rtsx_chip* %4)
  %6 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %8 = load i32, i32* @IRQSTAT0, align 4
  %9 = load i32, i32* @LINK_RDY_INT, align 4
  %10 = load i32, i32* @LINK_RDY_INT, align 4
  %11 = call i32 @rtsx_write_register(%struct.rtsx_chip* %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %13 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %18 = call i32 @rtsx_power_off_card(%struct.rtsx_chip* %17)
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %20 = load i32, i32* @SSC_PDCTL, align 4
  %21 = load i32, i32* @OC_PDCTL, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @rtsx_force_power_down(%struct.rtsx_chip* %19, i32 %22)
  br label %24

24:                                               ; preds = %16, %1
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %26 = call i64 @CHK_SDIO_EXIST(%struct.rtsx_chip* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %31 = call i64 @CHECK_PID(%struct.rtsx_chip* %30, i32 21128)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2, i32 1
  %35 = call i32 @rtsx_write_cfg_dw(%struct.rtsx_chip* %29, i32 %34, i32 192, i32 65280, i32 256)
  br label %36

36:                                               ; preds = %28, %24
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %38 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %43 = load i32, i32* @HOST_SLEEP_STATE, align 4
  %44 = call i32 @rtsx_write_register(%struct.rtsx_chip* %42, i32 %43, i32 1, i32 1)
  br label %65

45:                                               ; preds = %36
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %47 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %45
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %52 = load i32, i32* @RTSX_BIER, align 4
  %53 = call i32 @rtsx_readl(%struct.rtsx_chip* %51, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @CARD_INT, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %58 = load i32, i32* @RTSX_BIER, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @rtsx_writel(%struct.rtsx_chip* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %50, %45
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %63 = load i32, i32* @CHANGE_LINK_STATE, align 4
  %64 = call i32 @rtsx_write_register(%struct.rtsx_chip* %62, i32 %63, i32 2, i32 0)
  br label %65

65:                                               ; preds = %61, %41
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %67 = call i32 @rtsx_enter_L1(%struct.rtsx_chip* %66)
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %69 = call i32 @RTSX_CLR_DELINK(%struct.rtsx_chip* %68)
  %70 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %71 = load i32, i32* @RTSX_STAT_SS, align 4
  %72 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %70, i32 %71)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_power_off_card(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_force_power_down(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @CHK_SDIO_EXIST(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_cfg_dw(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_readl(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_writel(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_enter_L1(%struct.rtsx_chip*) #1

declare dso_local i32 @RTSX_CLR_DELINK(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
