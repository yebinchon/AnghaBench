; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_urb.c_urb_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_urb.c_urb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kref = type { i32 }
%struct.urb = type { i32, %struct.urb* }

@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kref*)* @urb_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urb_destroy(%struct.kref* %0) #0 {
  %2 = alloca %struct.kref*, align 8
  %3 = alloca %struct.urb*, align 8
  store %struct.kref* %0, %struct.kref** %2, align 8
  %4 = load %struct.kref*, %struct.kref** %2, align 8
  %5 = call %struct.urb* @to_urb(%struct.kref* %4)
  store %struct.urb* %5, %struct.urb** %3, align 8
  %6 = load %struct.urb*, %struct.urb** %3, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @URB_FREE_BUFFER, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.urb*, %struct.urb** %3, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 1
  %15 = load %struct.urb*, %struct.urb** %14, align 8
  %16 = call i32 @kfree(%struct.urb* %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.urb*, %struct.urb** %3, align 8
  %19 = call i32 @kfree(%struct.urb* %18)
  ret void
}

declare dso_local %struct.urb* @to_urb(%struct.kref*) #1

declare dso_local i32 @kfree(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
