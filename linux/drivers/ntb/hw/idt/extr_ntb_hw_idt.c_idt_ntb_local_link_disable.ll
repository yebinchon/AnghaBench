; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_local_link_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_local_link_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_ntb_dev = type { i32, i32 }

@IDT_NT_NTCTL = common dso_local global i32 0, align 4
@IDT_NT_NTMTBLADDR = common dso_local global i32 0, align 4
@IDT_NT_NTMTBLDATA = common dso_local global i32 0, align 4
@IDT_NT_NTGSIGNAL = common dso_local global i32 0, align 4
@IDT_NTGSIGNAL_SET = common dso_local global i32 0, align 4
@IDT_SW_SEGSIGSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt_ntb_dev*)* @idt_ntb_local_link_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt_ntb_local_link_disable(%struct.idt_ntb_dev* %0) #0 {
  %2 = alloca %struct.idt_ntb_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %2, align 8
  %4 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %5 = load i32, i32* @IDT_NT_NTCTL, align 4
  %6 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %4, i32 %5, i32 0)
  %7 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %8 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %7, i32 0, i32 1
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %12 = load i32, i32* @IDT_NT_NTMTBLADDR, align 4
  %13 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %14 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %11, i32 %12, i32 %15)
  %17 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %18 = load i32, i32* @IDT_NT_NTMTBLDATA, align 4
  %19 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %17, i32 %18, i32 0)
  %20 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %21 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %25 = load i32, i32* @IDT_NT_NTGSIGNAL, align 4
  %26 = load i32, i32* @IDT_NTGSIGNAL_SET, align 4
  %27 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %24, i32 %25, i32 %26)
  %28 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %29 = load i32, i32* @IDT_SW_SEGSIGSTS, align 4
  %30 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %31 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  %34 = call i32 @idt_sw_write(%struct.idt_ntb_dev* %28, i32 %29, i32 %33)
  ret void
}

declare dso_local i32 @idt_nt_write(%struct.idt_ntb_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @idt_sw_write(%struct.idt_ntb_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
