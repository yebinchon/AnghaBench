; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_init_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_init_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_ntb_dev = type { %struct.TYPE_5__, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }

@IDT_SW_TMPCTL = common dso_local global i32 0, align 4
@idt_temp_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Couldn't create hwmon device\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Temperature HWmon interface registered\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt_ntb_dev*)* @idt_init_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt_init_temp(%struct.idt_ntb_dev* %0) #0 {
  %2 = alloca %struct.idt_ntb_dev*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %2, align 8
  %4 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %5 = load i32, i32* @IDT_SW_TMPCTL, align 4
  %6 = call i32 @idt_sw_write(%struct.idt_ntb_dev* %4, i32 %5, i32 0)
  %7 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %8 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %7, i32 0, i32 2
  %9 = call i32 @mutex_init(i32* %8)
  %10 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %11 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %16 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %21 = load i32, i32* @idt_temp_groups, align 4
  %22 = call %struct.device* @devm_hwmon_device_register_with_groups(i32* %14, i32 %19, %struct.idt_ntb_dev* %20, i32 %21)
  store %struct.device* %22, %struct.device** %3, align 8
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i64 @IS_ERR(%struct.device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %28 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %40

33:                                               ; preds = %1
  %34 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %2, align 8
  %35 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %33, %26
  ret void
}

declare dso_local i32 @idt_sw_write(%struct.idt_ntb_dev*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(i32*, i32, %struct.idt_ntb_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
