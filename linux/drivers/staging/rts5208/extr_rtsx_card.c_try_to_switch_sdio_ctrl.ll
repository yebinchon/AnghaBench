; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_try_to_switch_sdio_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_try_to_switch_sdio_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"reg 0xFF34: 0x%x, reg 0xFF38: 0x%x\0A\00", align 1
@SDIO_CTRL = common dso_local global i32 0, align 4
@SDIO_BUS_CTRL = common dso_local global i32 0, align 4
@SDIO_CD_CTRL = common dso_local global i32 0, align 4
@PWR_GATE_CTRL = common dso_local global i32 0, align 4
@LDO3318_PWR_MASK = common dso_local global i32 0, align 4
@LDO_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @try_to_switch_sdio_ctrl(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %6 = call i32 @rtsx_read_register(%struct.rtsx_chip* %5, i32 65332, i32* %3)
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %8 = call i32 @rtsx_read_register(%struct.rtsx_chip* %7, i32 65336, i32* %4)
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %10 = call i32 @rtsx_dev(%struct.rtsx_chip* %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 192
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 192
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %23 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %25 = load i32, i32* @SDIO_CTRL, align 4
  %26 = load i32, i32* @SDIO_BUS_CTRL, align 4
  %27 = load i32, i32* @SDIO_CD_CTRL, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @rtsx_write_register(%struct.rtsx_chip* %24, i32 %25, i32 255, i32 %28)
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %31 = load i32, i32* @PWR_GATE_CTRL, align 4
  %32 = load i32, i32* @LDO3318_PWR_MASK, align 4
  %33 = load i32, i32* @LDO_ON, align 4
  %34 = call i32 @rtsx_write_register(%struct.rtsx_chip* %30, i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %21, %17, %1
  ret void
}

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
