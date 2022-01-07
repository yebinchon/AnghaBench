; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_db_read_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_db_read_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.idt_ntb_dev = type { i32 }

@IDT_NT_INDBELLMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*)* @idt_ntb_db_read_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_ntb_db_read_mask(%struct.ntb_dev* %0) #0 {
  %2 = alloca %struct.ntb_dev*, align 8
  %3 = alloca %struct.idt_ntb_dev*, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %2, align 8
  %4 = load %struct.ntb_dev*, %struct.ntb_dev** %2, align 8
  %5 = call %struct.idt_ntb_dev* @to_ndev_ntb(%struct.ntb_dev* %4)
  store %struct.idt_ntb_dev* %5, %struct.idt_ntb_dev** %3, align 8
  %6 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %7 = load i32, i32* @IDT_NT_INDBELLMSK, align 4
  %8 = call i32 @idt_nt_read(%struct.idt_ntb_dev* %6, i32 %7)
  ret i32 %8
}

declare dso_local %struct.idt_ntb_dev* @to_ndev_ntb(%struct.ntb_dev*) #1

declare dso_local i32 @idt_nt_read(%struct.idt_ntb_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
