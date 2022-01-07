; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_hid.c_ghid_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_hid.c_ghid_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@major = common dso_local global i64 0, align 8
@minors = common dso_local global i64 0, align 8
@hidg_class = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghid_cleanup() #0 {
  %1 = load i64, i64* @major, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i64, i64* @major, align 8
  %5 = call i32 @MKDEV(i64 %4, i32 0)
  %6 = load i64, i64* @minors, align 8
  %7 = call i32 @unregister_chrdev_region(i32 %5, i64 %6)
  store i64 0, i64* @minors, align 8
  store i64 0, i64* @major, align 8
  br label %8

8:                                                ; preds = %3, %0
  %9 = load i32*, i32** @hidg_class, align 8
  %10 = call i32 @class_destroy(i32* %9)
  store i32* null, i32** @hidg_class, align 8
  ret void
}

declare dso_local i32 @unregister_chrdev_region(i32, i64) #1

declare dso_local i32 @MKDEV(i64, i32) #1

declare dso_local i32 @class_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
