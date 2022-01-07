; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_local_link_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_local_link_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_ntb_dev = type { i32, i32 }

@IDT_NT_NTCTL = common dso_local global i32 0, align 4
@IDT_NTCTL_CPEN = common dso_local global i32 0, align 4
@IDT_NT_REQIDCAP = common dso_local global i32 0, align 4
@NTMTBLDATA_REQID = common dso_local global i32 0, align 4
@NTMTBLDATA_PART = common dso_local global i32 0, align 4
@IDT_NTMTBLDATA_VALID = common dso_local global i32 0, align 4
@IDT_NT_NTMTBLADDR = common dso_local global i32 0, align 4
@IDT_NT_NTMTBLDATA = common dso_local global i32 0, align 4
@IDT_NT_NTGSIGNAL = common dso_local global i32 0, align 4
@IDT_NTGSIGNAL_SET = common dso_local global i32 0, align 4
@IDT_SW_SEGSIGSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt_ntb_dev*)* @idt_ntb_local_link_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt_ntb_local_link_enable(%struct.idt_ntb_dev* %0) #0 {
  %2 = alloca %struct.idt_ntb_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %7 = load i32, i32* @IDT_NT_NTCTL, align 4
  %8 = load i32, i32* @IDT_NTCTL_CPEN, align 4
  %9 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %6, i32 %7, i32 %8)
  %10 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %11 = load i32, i32* @IDT_NT_REQIDCAP, align 4
  %12 = call i32 @idt_nt_read(%struct.idt_ntb_dev* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @NTMTBLDATA_REQID, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @SET_FIELD(i32 %13, i32 0, i32 %14)
  %16 = load i32, i32* @NTMTBLDATA_PART, align 4
  %17 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %18 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SET_FIELD(i32 %16, i32 0, i32 %19)
  %21 = or i32 %15, %20
  %22 = load i32, i32* @IDT_NTMTBLDATA_VALID, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %25 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %29 = load i32, i32* @IDT_NT_NTMTBLADDR, align 4
  %30 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %31 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %28, i32 %29, i32 %32)
  %34 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %35 = load i32, i32* @IDT_NT_NTMTBLDATA, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %34, i32 %35, i32 %36)
  %38 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %39 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %38, i32 0, i32 1
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %43 = load i32, i32* @IDT_NT_NTGSIGNAL, align 4
  %44 = load i32, i32* @IDT_NTGSIGNAL_SET, align 4
  %45 = call i32 @idt_nt_write(%struct.idt_ntb_dev* %42, i32 %43, i32 %44)
  %46 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %47 = load i32, i32* @IDT_SW_SEGSIGSTS, align 4
  %48 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %49 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  %52 = call i32 @idt_sw_write(%struct.idt_ntb_dev* %46, i32 %47, i32 %51)
  ret void
}

declare dso_local i32 @idt_nt_write(%struct.idt_ntb_dev*, i32, i32) #1

declare dso_local i32 @idt_nt_read(%struct.idt_ntb_dev*, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @idt_sw_write(%struct.idt_ntb_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
