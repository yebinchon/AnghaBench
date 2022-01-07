; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i32 }

@FUSB_REG_RESET = common dso_local global i32 0, align 4
@FUSB_REG_RESET_SW_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot sw reset the chip, ret=%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"sw reset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb302_chip*)* @fusb302_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_sw_reset(%struct.fusb302_chip* %0) #0 {
  %2 = alloca %struct.fusb302_chip*, align 8
  %3 = alloca i32, align 4
  store %struct.fusb302_chip* %0, %struct.fusb302_chip** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.fusb302_chip*, %struct.fusb302_chip** %2, align 8
  %5 = load i32, i32* @FUSB_REG_RESET, align 4
  %6 = load i32, i32* @FUSB_REG_RESET_SW_RESET, align 4
  %7 = call i32 @fusb302_i2c_write(%struct.fusb302_chip* %4, i32 %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.fusb302_chip*, %struct.fusb302_chip** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 (%struct.fusb302_chip*, i8*, ...) @fusb302_log(%struct.fusb302_chip* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.fusb302_chip*, %struct.fusb302_chip** %2, align 8
  %16 = call i32 (%struct.fusb302_chip*, i8*, ...) @fusb302_log(%struct.fusb302_chip* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @fusb302_i2c_write(%struct.fusb302_chip*, i32, i32) #1

declare dso_local i32 @fusb302_log(%struct.fusb302_chip*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
