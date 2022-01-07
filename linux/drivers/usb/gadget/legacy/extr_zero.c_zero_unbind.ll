; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_zero.c_zero_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_zero.c_zero_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_composite_dev = type { i32 }

@autoresume_timer = common dso_local global i32 0, align 4
@func_ss = common dso_local global i32 0, align 4
@func_inst_ss = common dso_local global i32 0, align 4
@func_lb = common dso_local global i32 0, align 4
@func_inst_lb = common dso_local global i32 0, align 4
@otg_desc = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_composite_dev*)* @zero_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zero_unbind(%struct.usb_composite_dev* %0) #0 {
  %2 = alloca %struct.usb_composite_dev*, align 8
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %2, align 8
  %3 = call i32 @del_timer_sync(i32* @autoresume_timer)
  %4 = load i32, i32* @func_ss, align 4
  %5 = call i32 @IS_ERR_OR_NULL(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @func_ss, align 4
  %9 = call i32 @usb_put_function(i32 %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* @func_inst_ss, align 4
  %12 = call i32 @usb_put_function_instance(i32 %11)
  %13 = load i32, i32* @func_lb, align 4
  %14 = call i32 @IS_ERR_OR_NULL(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @func_lb, align 4
  %18 = call i32 @usb_put_function(i32 %17)
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i32, i32* @func_inst_lb, align 4
  %21 = call i32 @usb_put_function_instance(i32 %20)
  %22 = load i32**, i32*** @otg_desc, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @kfree(i32* %24)
  %26 = load i32**, i32*** @otg_desc, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  store i32* null, i32** %27, align 8
  ret i32 0
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @usb_put_function(i32) #1

declare dso_local i32 @usb_put_function_instance(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
