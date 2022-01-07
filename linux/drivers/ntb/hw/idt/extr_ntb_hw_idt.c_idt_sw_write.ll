; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_sw_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_sw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_ntb_dev = type { i32, i64 }

@IDT_REG_SW_MAX = common dso_local global i32 0, align 4
@IDT_REG_ALIGN = common dso_local global i32 0, align 4
@IDT_NT_GASAADDR = common dso_local global i64 0, align 8
@IDT_NT_GASADATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt_ntb_dev*, i32, i32)* @idt_sw_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt_sw_write(%struct.idt_ntb_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.idt_ntb_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @IDT_REG_SW_MAX, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IDT_REG_ALIGN, align 4
  %14 = call i32 @IS_ALIGNED(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i1 [ true, %3 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %50

23:                                               ; preds = %17
  %24 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %25 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %30 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IDT_NT_GASAADDR, align 8
  %33 = trunc i64 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = call i32 @iowrite32(i32 %28, i64 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %39 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IDT_NT_GASADATA, align 8
  %42 = trunc i64 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = call i32 @iowrite32(i32 %37, i64 %44)
  %46 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %47 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  br label %50

50:                                               ; preds = %23, %22
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
