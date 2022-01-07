; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_set_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_set_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer_dev = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Using interface %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.printer_dev*, i32)* @set_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_interface(%struct.printer_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.printer_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.printer_dev* %0, %struct.printer_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.printer_dev*, %struct.printer_dev** %3, align 8
  %7 = call i32 @printer_reset_interface(%struct.printer_dev* %6)
  %8 = load %struct.printer_dev*, %struct.printer_dev** %3, align 8
  %9 = call i32 @set_printer_interface(%struct.printer_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.printer_dev*, %struct.printer_dev** %3, align 8
  %14 = call i32 @printer_reset_interface(%struct.printer_dev* %13)
  br label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.printer_dev*, %struct.printer_dev** %3, align 8
  %18 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load %struct.printer_dev*, %struct.printer_dev** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @INFO(%struct.printer_dev* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @printer_reset_interface(%struct.printer_dev*) #1

declare dso_local i32 @set_printer_interface(%struct.printer_dev*) #1

declare dso_local i32 @INFO(%struct.printer_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
