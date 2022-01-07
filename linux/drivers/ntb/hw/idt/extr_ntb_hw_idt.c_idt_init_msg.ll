; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_init_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_init_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_ntb_dev = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IDT_MSG_CNT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [26 x i8] c"NTB Messaging initialized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt_ntb_dev*)* @idt_init_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt_init_msg(%struct.idt_ntb_dev* %0) #0 {
  %2 = alloca %struct.idt_ntb_dev*, align 8
  %3 = alloca i8, align 1
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %2, align 8
  store i8 0, i8* %3, align 1
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @IDT_MSG_CNT, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %12 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @spin_lock_init(i32* %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i8, i8* %3, align 1
  %20 = add i8 %19, 1
  store i8 %20, i8* %3, align 1
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %23 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
