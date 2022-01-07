; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_local_link_is_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_local_link_is_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_ntb_dev = type { i32, i32 }

@IDT_NT_PCICMDSTS = common dso_local global i32 0, align 4
@IDT_PCICMDSTS_BME = common dso_local global i32 0, align 4
@IDT_NT_NTCTL = common dso_local global i32 0, align 4
@IDT_NTCTL_CPEN = common dso_local global i32 0, align 4
@IDT_NT_NTMTBLADDR = common dso_local global i32 0, align 4
@IDT_NT_NTMTBLDATA = common dso_local global i32 0, align 4
@IDT_NTMTBLDATA_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_ntb_dev*)* @idt_ntb_local_link_is_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_ntb_local_link_is_up(%struct.idt_ntb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt_ntb_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %3, align 8
  %6 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %7 = load i32, i32* @IDT_NT_PCICMDSTS, align 4
  %8 = call i32 @idt_nt_read(%struct.idt_ntb_dev* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IDT_PCICMDSTS_BME, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %16 = load i32, i32* @IDT_NT_NTCTL, align 4
  %17 = call i32 @idt_nt_read(%struct.idt_ntb_dev* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IDT_NTCTL_CPEN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %48

23:                                               ; preds = %14
  %24 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %25 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %29 = load i32, i32* @IDT_NT_NTMTBLADDR, align 4
  %30 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %31 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %28, i32 %29, i32 %32)
  %34 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %35 = load i32, i32* @IDT_NT_NTMTBLDATA, align 4
  %36 = call i32 @idt_nt_read(%struct.idt_ntb_dev* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %38 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @IDT_NTMTBLDATA_VALID, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %23, %22, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @idt_nt_read(%struct.idt_ntb_dev*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idt_nt_write(%struct.idt_ntb_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
