; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_exec_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_exec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrb_hba = type { i32, i32 (%struct.myrb_hba*, %struct.myrb_cmdblk*)* }
%struct.myrb_cmdblk = type opaque
%struct.myrb_cmdblk.0 = type { i16, i32* }

@cmpl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.myrb_hba*, %struct.myrb_cmdblk.0*)* @myrb_exec_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @myrb_exec_cmd(%struct.myrb_hba* %0, %struct.myrb_cmdblk.0* %1) #0 {
  %3 = alloca %struct.myrb_hba*, align 8
  %4 = alloca %struct.myrb_cmdblk.0*, align 8
  %5 = alloca i64, align 8
  store %struct.myrb_hba* %0, %struct.myrb_hba** %3, align 8
  store %struct.myrb_cmdblk.0* %1, %struct.myrb_cmdblk.0** %4, align 8
  %6 = load i32, i32* @cmpl, align 4
  %7 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %6)
  %8 = load %struct.myrb_cmdblk.0*, %struct.myrb_cmdblk.0** %4, align 8
  %9 = getelementptr inbounds %struct.myrb_cmdblk.0, %struct.myrb_cmdblk.0* %8, i32 0, i32 1
  store i32* @cmpl, i32** %9, align 8
  %10 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %11 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %15 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %14, i32 0, i32 1
  %16 = load i32 (%struct.myrb_hba*, %struct.myrb_cmdblk*)*, i32 (%struct.myrb_hba*, %struct.myrb_cmdblk*)** %15, align 8
  %17 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %18 = load %struct.myrb_cmdblk.0*, %struct.myrb_cmdblk.0** %4, align 8
  %19 = bitcast %struct.myrb_cmdblk.0* %18 to %struct.myrb_cmdblk*
  %20 = call i32 %16(%struct.myrb_hba* %17, %struct.myrb_cmdblk* %19)
  %21 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %22 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = call i32 (...) @in_interrupt()
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = call i32 @wait_for_completion(i32* @cmpl)
  %28 = load %struct.myrb_cmdblk.0*, %struct.myrb_cmdblk.0** %4, align 8
  %29 = getelementptr inbounds %struct.myrb_cmdblk.0, %struct.myrb_cmdblk.0* %28, i32 0, i32 0
  %30 = load i16, i16* %29, align 8
  ret i16 %30
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

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
