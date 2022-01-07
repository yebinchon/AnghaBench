; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_machine_without_vbus_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_machine_without_vbus_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @machine_without_vbus_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machine_without_vbus_sense() #0 {
  %1 = call i64 (...) @machine_is_omap_innovator()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  %4 = call i64 (...) @machine_is_omap_osk()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = call i64 (...) @machine_is_omap_palmte()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = call i64 (...) @machine_is_sx1()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = call i64 (...) @cpu_is_omap7xx()
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %12, %9, %6, %3, %0
  %16 = phi i1 [ true, %9 ], [ true, %6 ], [ true, %3 ], [ true, %0 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i64 @machine_is_omap_innovator(...) #1

declare dso_local i64 @machine_is_omap_osk(...) #1

declare dso_local i64 @machine_is_omap_palmte(...) #1

declare dso_local i64 @machine_is_sx1(...) #1

declare dso_local i64 @cpu_is_omap7xx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
