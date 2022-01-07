; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_send_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_send_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@SCF_SCSI_TMR_CDB = common dso_local global i32 0, align 4
@SAM_STAT_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_send_busy(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %3 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %4 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @SCF_SCSI_TMR_CDB, align 4
  %7 = and i32 %5, %6
  %8 = call i32 @WARN_ON_ONCE(i32 %7)
  %9 = load i32, i32* @SAM_STAT_BUSY, align 4
  %10 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %13 = call i32 @trace_target_cmd_complete(%struct.se_cmd* %12)
  %14 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.se_cmd*)**
  %19 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %18, align 8
  %20 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %21 = call i32 %19(%struct.se_cmd* %20)
  ret i32 %21
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @trace_target_cmd_complete(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
