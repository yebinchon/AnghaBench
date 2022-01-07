; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_ntb_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32* }
%struct.TYPE_3__ = type { i32 }

@idt_ntb_ops = common dso_local global i32 0, align 4
@NTB_TOPO_SWITCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to register NTB device\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"NTB device successfully registered\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_ntb_dev*)* @idt_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_register_device(%struct.idt_ntb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt_ntb_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %3, align 8
  %5 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %6 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32* @idt_ntb_ops, i32** %7, align 8
  %8 = load i32, i32* @NTB_TOPO_SWITCH, align 4
  %9 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %10 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 8
  %12 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %13 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %12, i32 0, i32 0
  %14 = call i32 @ntb_register_device(%struct.TYPE_4__* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %19 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %32

25:                                               ; preds = %1
  %26 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %27 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %25, %17
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @ntb_register_device(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
