; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_sossi.c_sossi_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_sossi.c_sossi_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@sossi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@WR_ACCESS = common dso_local global i32 0, align 4
@SOSSI_INIT1_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sossi_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sossi_write_data(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 0), align 4
  %6 = call i32 @clk_enable(i32 %5)
  %7 = load i32, i32* @WR_ACCESS, align 4
  %8 = call i32 @set_timing(i32 %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 2), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 1), align 4
  %11 = call i32 @_set_bits_per_cycle(i32 %9, i32 %10)
  %12 = load i32, i32* @SOSSI_INIT1_REG, align 4
  %13 = call i32 @sossi_set_bits(i32 %12, i32 262144)
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @set_cycles(i32 %14)
  %16 = call i32 (...) @sossi_start_transfer()
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @send_data(i8* %17, i32 %18)
  %20 = call i32 (...) @sossi_stop_transfer()
  %21 = call i32 (...) @wait_end_of_write()
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 0), align 4
  %23 = call i32 @clk_disable(i32 %22)
  ret void
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @set_timing(i32) #1

declare dso_local i32 @_set_bits_per_cycle(i32, i32) #1

declare dso_local i32 @sossi_set_bits(i32, i32) #1

declare dso_local i32 @set_cycles(i32) #1

declare dso_local i32 @sossi_start_transfer(...) #1

declare dso_local i32 @send_data(i8*, i32) #1

declare dso_local i32 @sossi_stop_transfer(...) #1

declare dso_local i32 @wait_end_of_write(...) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
