; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_fill_pull_ctl_stage1_barossa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_fill_pull_ctl_stage1_barossa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@QFN = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_PULL_CTL1 = common dso_local global i32 0, align 4
@CARD_PULL_CTL2 = common dso_local global i32 0, align 4
@CARD_PULL_CTL3 = common dso_local global i32 0, align 4
@CARD_PULL_CTL4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*)* @xd_fill_pull_ctl_stage1_barossa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xd_fill_pull_ctl_stage1_barossa(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %3 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %4 = load i32, i32* @QFN, align 4
  %5 = call i64 @CHECK_BARO_PKG(%struct.rtsx_chip* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %9 = load i32, i32* @WRITE_REG_CMD, align 4
  %10 = load i32, i32* @CARD_PULL_CTL1, align 4
  %11 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %8, i32 %9, i32 %10, i32 255, i32 85)
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %13 = load i32, i32* @WRITE_REG_CMD, align 4
  %14 = load i32, i32* @CARD_PULL_CTL2, align 4
  %15 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %12, i32 %13, i32 %14, i32 255, i32 85)
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %17 = load i32, i32* @WRITE_REG_CMD, align 4
  %18 = load i32, i32* @CARD_PULL_CTL3, align 4
  %19 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %16, i32 %17, i32 %18, i32 255, i32 75)
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %21 = load i32, i32* @WRITE_REG_CMD, align 4
  %22 = load i32, i32* @CARD_PULL_CTL4, align 4
  %23 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %20, i32 %21, i32 %22, i32 255, i32 85)
  br label %24

24:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @CHECK_BARO_PKG(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
