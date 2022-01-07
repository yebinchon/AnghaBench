; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { i32 }

@stop_timer = common dso_local global i32 0, align 4
@udc_timer = common dso_local global i32 0, align 4
@on_exit = common dso_local global i32 0, align 4
@stop_pollstall_timer = common dso_local global i32 0, align 4
@udc_pollstall_timer = common dso_local global i32 0, align 4
@on_pollstall_exit = common dso_local global i32 0, align 4
@udc = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udc_remove(%struct.udc* %0) #0 {
  %2 = alloca %struct.udc*, align 8
  store %struct.udc* %0, %struct.udc** %2, align 8
  %3 = load i32, i32* @stop_timer, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @stop_timer, align 4
  %5 = call i64 @timer_pending(i32* @udc_timer)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @wait_for_completion(i32* @on_exit)
  br label %9

9:                                                ; preds = %7, %1
  %10 = call i32 @del_timer_sync(i32* @udc_timer)
  %11 = load i32, i32* @stop_pollstall_timer, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @stop_pollstall_timer, align 4
  %13 = call i64 @timer_pending(i32* @udc_pollstall_timer)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 @wait_for_completion(i32* @on_pollstall_exit)
  br label %17

17:                                               ; preds = %15, %9
  %18 = call i32 @del_timer_sync(i32* @udc_pollstall_timer)
  store i32* null, i32** @udc, align 8
  ret void
}

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
