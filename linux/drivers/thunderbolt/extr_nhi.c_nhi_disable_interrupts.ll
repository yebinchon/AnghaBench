; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_nhi_disable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_nhi_disable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_nhi = type { i64 }

@REG_RING_INTERRUPT_BASE = common dso_local global i64 0, align 8
@REG_RING_NOTIFY_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_nhi*)* @nhi_disable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nhi_disable_interrupts(%struct.tb_nhi* %0) #0 {
  %2 = alloca %struct.tb_nhi*, align 8
  %3 = alloca i32, align 4
  store %struct.tb_nhi* %0, %struct.tb_nhi** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %7 = call i32 @RING_INTERRUPT_REG_COUNT(%struct.tb_nhi* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %4
  %10 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %11 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @REG_RING_INTERRUPT_BASE, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 4, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = call i32 @iowrite32(i32 0, i64 %18)
  br label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4

23:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %27 = call i32 @RING_NOTIFY_REG_COUNT(%struct.tb_nhi* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %31 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @REG_RING_NOTIFY_BASE, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* %3, align 4
  %36 = mul nsw i32 4, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i32 @ioread32(i64 %38)
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %24

43:                                               ; preds = %24
  ret void
}

declare dso_local i32 @RING_INTERRUPT_REG_COUNT(%struct.tb_nhi*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @RING_NOTIFY_REG_COUNT(%struct.tb_nhi*) #1

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
