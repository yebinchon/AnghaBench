; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_exec_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_exec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { i32 }
%struct.myrs_cmdblk = type { i32* }

@complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrs_hba*, %struct.myrs_cmdblk*)* @myrs_exec_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrs_exec_cmd(%struct.myrs_hba* %0, %struct.myrs_cmdblk* %1) #0 {
  %3 = alloca %struct.myrs_hba*, align 8
  %4 = alloca %struct.myrs_cmdblk*, align 8
  %5 = alloca i64, align 8
  store %struct.myrs_hba* %0, %struct.myrs_hba** %3, align 8
  store %struct.myrs_cmdblk* %1, %struct.myrs_cmdblk** %4, align 8
  %6 = load i32, i32* @complete, align 4
  %7 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %6)
  %8 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %4, align 8
  %9 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %8, i32 0, i32 0
  store i32* @complete, i32** %9, align 8
  %10 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %11 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %15 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %4, align 8
  %16 = call i32 @myrs_qcmd(%struct.myrs_hba* %14, %struct.myrs_cmdblk* %15)
  %17 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %18 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = call i32 (...) @in_interrupt()
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = call i32 @wait_for_completion(i32* @complete)
  ret void
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @myrs_qcmd(%struct.myrs_hba*, %struct.myrs_cmdblk*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
