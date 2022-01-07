; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.h_wsm_set_operational_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.h_wsm_set_operational_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.wsm_operational_mode = type { i64, i64, i32 }

@WSM_MIB_ID_OPERATIONAL_POWER_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_operational_mode*)* @wsm_set_operational_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_set_operational_mode(%struct.cw1200_common* %0, %struct.wsm_operational_mode* %1) #0 {
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca %struct.wsm_operational_mode*, align 8
  %5 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store %struct.wsm_operational_mode* %1, %struct.wsm_operational_mode** %4, align 8
  %6 = load %struct.wsm_operational_mode*, %struct.wsm_operational_mode** %4, align 8
  %7 = getelementptr inbounds %struct.wsm_operational_mode, %struct.wsm_operational_mode* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.wsm_operational_mode*, %struct.wsm_operational_mode** %4, align 8
  %10 = getelementptr inbounds %struct.wsm_operational_mode, %struct.wsm_operational_mode* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @BIT(i32 4)
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.wsm_operational_mode*, %struct.wsm_operational_mode** %4, align 8
  %19 = getelementptr inbounds %struct.wsm_operational_mode, %struct.wsm_operational_mode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = call i32 @BIT(i32 5)
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %28 = load i32, i32* @WSM_MIB_ID_OPERATIONAL_POWER_MODE, align 4
  %29 = call i32 @wsm_write_mib(%struct.cw1200_common* %27, i32 %28, i32* %5, i32 4)
  ret i32 %29
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wsm_write_mib(%struct.cw1200_common*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
