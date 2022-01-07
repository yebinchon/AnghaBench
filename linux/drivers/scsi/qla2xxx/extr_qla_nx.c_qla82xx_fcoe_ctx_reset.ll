; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_fcoe_ctx_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_fcoe_ctx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla82xx_fcoe_ctx_reset(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = call i32 @qla2x00_abort_isp_cleanup(%struct.TYPE_8__* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = call i32 @qla2x00_try_to_stop_firmware(%struct.TYPE_8__* %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = call i32 @qla82xx_restart_isp(%struct.TYPE_8__* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @qla2x00_abort_isp_cleanup(%struct.TYPE_8__*) #1

declare dso_local i32 @qla2x00_try_to_stop_firmware(%struct.TYPE_8__*) #1

declare dso_local i32 @qla82xx_restart_isp(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
