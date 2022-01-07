; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_clear_ccnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_clear_ccnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_battery_info = type { i32 }
%struct.ccnt = type { i32 }

@CCNT_POS1 = common dso_local global i32 0, align 4
@CCNT_POS2 = common dso_local global i32 0, align 4
@CCNT_NEG1 = common dso_local global i32 0, align 4
@CCNT_NEG2 = common dso_local global i32 0, align 4
@CCNT_SPOS = common dso_local global i32 0, align 4
@CCNT_SNEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm860x_battery_info*, %struct.ccnt*)* @clear_ccnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_ccnt(%struct.pm860x_battery_info* %0, %struct.ccnt* %1) #0 {
  %3 = alloca %struct.pm860x_battery_info*, align 8
  %4 = alloca %struct.ccnt*, align 8
  %5 = alloca i32, align 4
  store %struct.pm860x_battery_info* %0, %struct.pm860x_battery_info** %3, align 8
  store %struct.ccnt* %1, %struct.ccnt** %4, align 8
  %6 = load %struct.ccnt*, %struct.ccnt** %4, align 8
  %7 = call i32 @memset(%struct.ccnt* %6, i32 0, i32 4)
  %8 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %9 = load i32, i32* @CCNT_POS1, align 4
  %10 = call i32 @read_ccnt(%struct.pm860x_battery_info* %8, i32 %9, i32* %5)
  %11 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %12 = load i32, i32* @CCNT_POS2, align 4
  %13 = call i32 @read_ccnt(%struct.pm860x_battery_info* %11, i32 %12, i32* %5)
  %14 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %15 = load i32, i32* @CCNT_NEG1, align 4
  %16 = call i32 @read_ccnt(%struct.pm860x_battery_info* %14, i32 %15, i32* %5)
  %17 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %18 = load i32, i32* @CCNT_NEG2, align 4
  %19 = call i32 @read_ccnt(%struct.pm860x_battery_info* %17, i32 %18, i32* %5)
  %20 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %21 = load i32, i32* @CCNT_SPOS, align 4
  %22 = call i32 @read_ccnt(%struct.pm860x_battery_info* %20, i32 %21, i32* %5)
  %23 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %24 = load i32, i32* @CCNT_SNEG, align 4
  %25 = call i32 @read_ccnt(%struct.pm860x_battery_info* %23, i32 %24, i32* %5)
  ret i32 0
}

declare dso_local i32 @memset(%struct.ccnt*, i32, i32) #1

declare dso_local i32 @read_ccnt(%struct.pm860x_battery_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
