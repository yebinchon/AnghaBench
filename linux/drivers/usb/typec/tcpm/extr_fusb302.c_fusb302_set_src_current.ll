; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_set_src_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_set_src_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i32 }

@FUSB_REG_CONTROL0 = common dso_local global i32 0, align 4
@FUSB_REG_CONTROL0_HOST_CUR_MASK = common dso_local global i32 0, align 4
@FUSB_REG_CONTROL0_HOST_CUR_DEF = common dso_local global i32 0, align 4
@FUSB_REG_CONTROL0_HOST_CUR_MED = common dso_local global i32 0, align 4
@FUSB_REG_CONTROL0_HOST_CUR_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb302_chip*, i32)* @fusb302_set_src_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_set_src_current(%struct.fusb302_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.fusb302_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fusb302_chip* %0, %struct.fusb302_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %8 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %28 [
    i32 130, label %10
    i32 128, label %16
    i32 129, label %22
  ]

10:                                               ; preds = %2
  %11 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %12 = load i32, i32* @FUSB_REG_CONTROL0, align 4
  %13 = load i32, i32* @FUSB_REG_CONTROL0_HOST_CUR_MASK, align 4
  %14 = load i32, i32* @FUSB_REG_CONTROL0_HOST_CUR_DEF, align 4
  %15 = call i32 @fusb302_i2c_mask_write(%struct.fusb302_chip* %11, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %18 = load i32, i32* @FUSB_REG_CONTROL0, align 4
  %19 = load i32, i32* @FUSB_REG_CONTROL0_HOST_CUR_MASK, align 4
  %20 = load i32, i32* @FUSB_REG_CONTROL0_HOST_CUR_MED, align 4
  %21 = call i32 @fusb302_i2c_mask_write(%struct.fusb302_chip* %17, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %24 = load i32, i32* @FUSB_REG_CONTROL0, align 4
  %25 = load i32, i32* @FUSB_REG_CONTROL0_HOST_CUR_MASK, align 4
  %26 = load i32, i32* @FUSB_REG_CONTROL0_HOST_CUR_HIGH, align 4
  %27 = call i32 @fusb302_i2c_mask_write(%struct.fusb302_chip* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %22, %16, %10
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @fusb302_i2c_mask_write(%struct.fusb302_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
