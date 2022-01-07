; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicfas408.c_qlogicfas408_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicfas408.c_qlogicfas408_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.qlogicfas408_priv = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlogicfas408_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.qlogicfas408_priv*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %4 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %5 = call %struct.qlogicfas408_priv* @get_priv_by_cmd(%struct.scsi_cmnd* %4)
  store %struct.qlogicfas408_priv* %5, %struct.qlogicfas408_priv** %3, align 8
  %6 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %3, align 8
  %7 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %3, align 8
  %9 = call i32 @ql_zap(%struct.qlogicfas408_priv* %8)
  %10 = load i32, i32* @SUCCESS, align 4
  ret i32 %10
}

declare dso_local %struct.qlogicfas408_priv* @get_priv_by_cmd(%struct.scsi_cmnd*) #1

declare dso_local i32 @ql_zap(%struct.qlogicfas408_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
