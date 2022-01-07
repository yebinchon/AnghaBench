; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-cmdq-helper.c_cmdq_pkt_wfe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-cmdq-helper.c_cmdq_pkt_wfe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_pkt = type { i32 }

@CMDQ_MAX_EVENT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CMDQ_WFE_UPDATE = common dso_local global i32 0, align 4
@CMDQ_WFE_WAIT = common dso_local global i32 0, align 4
@CMDQ_WFE_WAIT_VALUE = common dso_local global i32 0, align 4
@CMDQ_CODE_WFE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdq_pkt_wfe(%struct.cmdq_pkt* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmdq_pkt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cmdq_pkt* %0, %struct.cmdq_pkt** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @CMDQ_MAX_EVENT, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load i32, i32* @CMDQ_WFE_UPDATE, align 4
  %15 = load i32, i32* @CMDQ_WFE_WAIT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CMDQ_WFE_WAIT_VALUE, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %4, align 8
  %20 = load i32, i32* @CMDQ_CODE_WFE, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @cmdq_pkt_append_command(%struct.cmdq_pkt* %19, i32 %20, i64 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %13, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @cmdq_pkt_append_command(%struct.cmdq_pkt*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
