; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_write_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_write_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_ntb_dev = type { i32 }

@IDT_SW_TMPALARM = common dso_local global i32 0, align 4
@TMPALARM_LTEMP = common dso_local global i32 0, align 4
@IDT_TMPALARM_IRQ_MASK = common dso_local global i32 0, align 4
@TMPALARM_HTEMP = common dso_local global i32 0, align 4
@IDT_SW_TMPADJ = common dso_local global i32 0, align 4
@TMPADJ_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt_ntb_dev*, i32, i64)* @idt_write_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt_write_temp(%struct.idt_ntb_dev* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.idt_ntb_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @idt_temp_get_fmt(i64 %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %13 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %46 [
    i32 129, label %16
    i32 130, label %27
    i32 128, label %38
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @IDT_SW_TMPALARM, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @TMPALARM_LTEMP, align 4
  %19 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @idt_sw_read(%struct.idt_ntb_dev* %19, i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @SET_FIELD(i32 %18, i32 %21, i32 %22)
  %24 = load i32, i32* @IDT_TMPALARM_IRQ_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  store i32 %26, i32* %8, align 4
  br label %47

27:                                               ; preds = %3
  %28 = load i32, i32* @IDT_SW_TMPALARM, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @TMPALARM_HTEMP, align 4
  %30 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @idt_sw_read(%struct.idt_ntb_dev* %30, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @SET_FIELD(i32 %29, i32 %32, i32 %33)
  %35 = load i32, i32* @IDT_TMPALARM_IRQ_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  store i32 %37, i32* %8, align 4
  br label %47

38:                                               ; preds = %3
  %39 = load i32, i32* @IDT_SW_TMPADJ, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @TMPADJ_OFFSET, align 4
  %41 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @idt_sw_read(%struct.idt_ntb_dev* %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @SET_FIELD(i32 %40, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %47

46:                                               ; preds = %3
  br label %52

47:                                               ; preds = %38, %27, %16
  %48 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @idt_sw_write(%struct.idt_ntb_dev* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %46
  %53 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %4, align 8
  %54 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  ret void
}

declare dso_local i32 @idt_temp_get_fmt(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @idt_sw_read(%struct.idt_ntb_dev*, i32) #1

declare dso_local i32 @idt_sw_write(%struct.idt_ntb_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
