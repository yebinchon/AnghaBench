; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_tgt_agent_rw_unsolicited_status_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_tgt_agent_rw_unsolicited_status_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.sbp_target_agent = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"tgt_agent UNSOLICITED_STATUS_ENABLE\0A\00", align 1
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, i32, i8*, %struct.sbp_target_agent*)* @tgt_agent_rw_unsolicited_status_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgt_agent_rw_unsolicited_status_enable(%struct.fw_card* %0, i32 %1, i8* %2, %struct.sbp_target_agent* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sbp_target_agent*, align 8
  store %struct.fw_card* %0, %struct.fw_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.sbp_target_agent* %3, %struct.sbp_target_agent** %9, align 8
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %16 [
    i32 128, label %11
    i32 129, label %14
  ]

11:                                               ; preds = %4
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %13, i32* %5, align 4
  br label %18

14:                                               ; preds = %4
  %15 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %15, i32* %5, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %16, %14, %11
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
