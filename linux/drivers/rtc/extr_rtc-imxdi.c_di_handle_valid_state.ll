; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_di_handle_valid_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_di_handle_valid_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxdi_dev = type { i32 }

@DCAMR_UNSET = common dso_local global i32 0, align 4
@DCAMR = common dso_local global i32 0, align 4
@DCALR = common dso_local global i32 0, align 4
@DSR_CAF = common dso_local global i32 0, align 4
@DSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imxdi_dev*, i32)* @di_handle_valid_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @di_handle_valid_state(%struct.imxdi_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.imxdi_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.imxdi_dev* %0, %struct.imxdi_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.imxdi_dev*, %struct.imxdi_dev** %3, align 8
  %6 = load i32, i32* @DCAMR_UNSET, align 4
  %7 = load i32, i32* @DCAMR, align 4
  %8 = call i32 @di_write_busy_wait(%struct.imxdi_dev* %5, i32 %6, i32 %7)
  %9 = load %struct.imxdi_dev*, %struct.imxdi_dev** %3, align 8
  %10 = load i32, i32* @DCALR, align 4
  %11 = call i32 @di_write_busy_wait(%struct.imxdi_dev* %9, i32 0, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @DSR_CAF, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.imxdi_dev*, %struct.imxdi_dev** %3, align 8
  %18 = load i32, i32* @DSR_CAF, align 4
  %19 = load i32, i32* @DSR, align 4
  %20 = call i32 @di_write_busy_wait(%struct.imxdi_dev* %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %2
  ret i32 0
}

declare dso_local i32 @di_write_busy_wait(%struct.imxdi_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
