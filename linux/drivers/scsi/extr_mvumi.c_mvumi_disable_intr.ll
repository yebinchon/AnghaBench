; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_disable_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_disable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { %struct.mvumi_hw_regs* }
%struct.mvumi_hw_regs = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvumi_hba*)* @mvumi_disable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvumi_disable_intr(%struct.mvumi_hba* %0) #0 {
  %2 = alloca %struct.mvumi_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvumi_hw_regs*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %2, align 8
  %5 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %6 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %5, i32 0, i32 0
  %7 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %6, align 8
  store %struct.mvumi_hw_regs* %7, %struct.mvumi_hw_regs** %4, align 8
  %8 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %4, align 8
  %9 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @iowrite32(i32 0, i32 %10)
  %12 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %4, align 8
  %13 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ioread32(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %4, align 8
  %17 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %4, align 8
  %20 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  %23 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %4, align 8
  %24 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %4, align 8
  %32 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @iowrite32(i32 %30, i32 %33)
  ret void
}

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @ioread32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
