; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_whc-rc.c_whcrc_pre_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_whc-rc.c_whcrc_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umc_dev = type { i32 }
%struct.whcrc = type { %struct.uwb_rc* }
%struct.uwb_rc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umc_dev*)* @whcrc_pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whcrc_pre_reset(%struct.umc_dev* %0) #0 {
  %2 = alloca %struct.umc_dev*, align 8
  %3 = alloca %struct.whcrc*, align 8
  %4 = alloca %struct.uwb_rc*, align 8
  store %struct.umc_dev* %0, %struct.umc_dev** %2, align 8
  %5 = load %struct.umc_dev*, %struct.umc_dev** %2, align 8
  %6 = call %struct.whcrc* @umc_get_drvdata(%struct.umc_dev* %5)
  store %struct.whcrc* %6, %struct.whcrc** %3, align 8
  %7 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %8 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %7, i32 0, i32 0
  %9 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  store %struct.uwb_rc* %9, %struct.uwb_rc** %4, align 8
  %10 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %11 = call i32 @uwb_rc_pre_reset(%struct.uwb_rc* %10)
  ret i32 0
}

declare dso_local %struct.whcrc* @umc_get_drvdata(%struct.umc_dev*) #1

declare dso_local i32 @uwb_rc_pre_reset(%struct.uwb_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
