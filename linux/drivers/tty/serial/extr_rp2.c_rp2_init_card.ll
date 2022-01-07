; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rp2.c_rp2_init_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rp2.c_rp2_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rp2_card = type { i64, i64 }

@RP2_FPGA_CTL0 = common dso_local global i64 0, align 8
@RP2_FPGA_CTL1 = common dso_local global i64 0, align 8
@PORTS_PER_ASIC = common dso_local global i64 0, align 8
@RP2_IRQ_MASK_EN_m = common dso_local global i32 0, align 4
@RP2_IRQ_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rp2_card*)* @rp2_init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rp2_init_card(%struct.rp2_card* %0) #0 {
  %2 = alloca %struct.rp2_card*, align 8
  store %struct.rp2_card* %0, %struct.rp2_card** %2, align 8
  %3 = load %struct.rp2_card*, %struct.rp2_card** %2, align 8
  %4 = getelementptr inbounds %struct.rp2_card, %struct.rp2_card* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RP2_FPGA_CTL0, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @writel(i32 4, i64 %7)
  %9 = load %struct.rp2_card*, %struct.rp2_card** %2, align 8
  %10 = getelementptr inbounds %struct.rp2_card, %struct.rp2_card* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RP2_FPGA_CTL1, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 0, i64 %13)
  %15 = load %struct.rp2_card*, %struct.rp2_card** %2, align 8
  %16 = call i32 @rp2_reset_asic(%struct.rp2_card* %15, i32 0)
  %17 = load %struct.rp2_card*, %struct.rp2_card** %2, align 8
  %18 = getelementptr inbounds %struct.rp2_card, %struct.rp2_card* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PORTS_PER_ASIC, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.rp2_card*, %struct.rp2_card** %2, align 8
  %24 = call i32 @rp2_reset_asic(%struct.rp2_card* %23, i32 1)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i32, i32* @RP2_IRQ_MASK_EN_m, align 4
  %27 = load %struct.rp2_card*, %struct.rp2_card** %2, align 8
  %28 = getelementptr inbounds %struct.rp2_card, %struct.rp2_card* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RP2_IRQ_MASK, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @rp2_reset_asic(%struct.rp2_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
