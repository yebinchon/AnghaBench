; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { %struct.mvumi_hw_regs* }
%struct.mvumi_hw_regs = type { i32, i32, i32 }

@HANDSHAKE_DONESTATE = common dso_local global i64 0, align 8
@DRBL_SOFT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvumi_hba*)* @mvumi_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvumi_reset(%struct.mvumi_hba* %0) #0 {
  %2 = alloca %struct.mvumi_hba*, align 8
  %3 = alloca %struct.mvumi_hw_regs*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %2, align 8
  %4 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %5 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %4, i32 0, i32 0
  %6 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  store %struct.mvumi_hw_regs* %6, %struct.mvumi_hw_regs** %3, align 8
  %7 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %3, align 8
  %8 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @iowrite32(i32 0, i32 %9)
  %11 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %3, align 8
  %12 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ioread32(i32 %13)
  %15 = load i64, i64* @HANDSHAKE_DONESTATE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @DRBL_SOFT_RESET, align 4
  %20 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %3, align 8
  %21 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iowrite32(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i64 @ioread32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
