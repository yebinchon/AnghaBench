; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_whc-rc.c_whcrc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_whc-rc.c_whcrc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umc_dev = type { i32 }
%struct.whcrc = type { %struct.uwb_rc* }
%struct.uwb_rc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.umc_dev*)* @whcrc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whcrc_remove(%struct.umc_dev* %0) #0 {
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
  %10 = load %struct.umc_dev*, %struct.umc_dev** %2, align 8
  %11 = call i32 @umc_set_drvdata(%struct.umc_dev* %10, i32* null)
  %12 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %13 = call i32 @uwb_rc_rm(%struct.uwb_rc* %12)
  %14 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %15 = call i32 @whcrc_release_rc_umc(%struct.whcrc* %14)
  %16 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %17 = call i32 @kfree(%struct.whcrc* %16)
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %19 = call i32 @uwb_rc_put(%struct.uwb_rc* %18)
  ret void
}

declare dso_local %struct.whcrc* @umc_get_drvdata(%struct.umc_dev*) #1

declare dso_local i32 @umc_set_drvdata(%struct.umc_dev*, i32*) #1

declare dso_local i32 @uwb_rc_rm(%struct.uwb_rc*) #1

declare dso_local i32 @whcrc_release_rc_umc(%struct.whcrc*) #1

declare dso_local i32 @kfree(%struct.whcrc*) #1

declare dso_local i32 @uwb_rc_put(%struct.uwb_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
