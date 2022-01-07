; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_endp_queue_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_endp_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u132 = type { i32 }
%struct.u132_endp = type { i32, i32 }

@workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.u132*, %struct.u132_endp*, i32)* @u132_endp_queue_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u132_endp_queue_work(%struct.u132* %0, %struct.u132_endp* %1, i32 %2) #0 {
  %4 = alloca %struct.u132*, align 8
  %5 = alloca %struct.u132_endp*, align 8
  %6 = alloca i32, align 4
  store %struct.u132* %0, %struct.u132** %4, align 8
  store %struct.u132_endp* %1, %struct.u132_endp** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @workqueue, align 4
  %8 = load %struct.u132_endp*, %struct.u132_endp** %5, align 8
  %9 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %8, i32 0, i32 1
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @queue_delayed_work(i32 %7, i32* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.u132_endp*, %struct.u132_endp** %5, align 8
  %15 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %14, i32 0, i32 0
  %16 = call i32 @kref_get(i32* %15)
  br label %17

17:                                               ; preds = %13, %3
  ret void
}

declare dso_local i64 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
