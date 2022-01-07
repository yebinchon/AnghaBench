; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c__rtw_enqueue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c__rtw_enqueue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__queue = type { i32, i32 }
%struct.cmd_obj = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__queue*, %struct.cmd_obj*)* @_rtw_enqueue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtw_enqueue_cmd(%struct.__queue* %0, %struct.cmd_obj* %1) #0 {
  %3 = alloca %struct.__queue*, align 8
  %4 = alloca %struct.cmd_obj*, align 8
  %5 = alloca i64, align 8
  store %struct.__queue* %0, %struct.__queue** %3, align 8
  store %struct.cmd_obj* %1, %struct.cmd_obj** %4, align 8
  %6 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %7 = icmp ne %struct.cmd_obj* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %23

9:                                                ; preds = %2
  %10 = load %struct.__queue*, %struct.__queue** %3, align 8
  %11 = getelementptr inbounds %struct.__queue, %struct.__queue* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %15 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %14, i32 0, i32 0
  %16 = load %struct.__queue*, %struct.__queue** %3, align 8
  %17 = getelementptr inbounds %struct.__queue, %struct.__queue* %16, i32 0, i32 1
  %18 = call i32 @list_add_tail(i32* %15, i32* %17)
  %19 = load %struct.__queue*, %struct.__queue** %3, align 8
  %20 = getelementptr inbounds %struct.__queue, %struct.__queue* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  br label %23

23:                                               ; preds = %9, %8
  %24 = load i32, i32* @_SUCCESS, align 4
  ret i32 %24
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
