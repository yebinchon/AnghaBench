; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_disconnect_gadget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_disconnect_gadget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_disconnect_gadget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_disconnect_gadget(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %3 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %4 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %9 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32*)*, i32 (i32*)** %11, align 8
  %13 = icmp ne i32 (i32*)* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %7
  %15 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %16 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %19 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32*)*, i32 (i32*)** %21, align 8
  %23 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %24 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %23, i32 0, i32 1
  %25 = call i32 %22(i32* %24)
  %26 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %27 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  br label %29

29:                                               ; preds = %14, %7, %1
  ret void
}

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
