; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sh_mobile_lcdc_priv = type { i32 }

@_LDCNT1R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sh_mobile_lcdc_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.sh_mobile_lcdc_priv* @dev_get_drvdata(%struct.device* %4)
  store %struct.sh_mobile_lcdc_priv* %5, %struct.sh_mobile_lcdc_priv** %3, align 8
  %6 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %3, align 8
  %7 = load i32, i32* @_LDCNT1R, align 4
  %8 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %6, i32 %7, i32 0)
  ret i32 0
}

declare dso_local %struct.sh_mobile_lcdc_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @lcdc_write(%struct.sh_mobile_lcdc_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
