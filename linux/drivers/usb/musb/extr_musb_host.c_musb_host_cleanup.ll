; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_host.c_musb_host_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_host.c_musb_host_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i64, i32 }

@MUSB_PERIPHERAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @musb_host_cleanup(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  store %struct.musb* %0, %struct.musb** %2, align 8
  %3 = load %struct.musb*, %struct.musb** %2, align 8
  %4 = getelementptr inbounds %struct.musb, %struct.musb* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MUSB_PERIPHERAL, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.musb*, %struct.musb** %2, align 8
  %11 = getelementptr inbounds %struct.musb, %struct.musb* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @usb_remove_hcd(i32 %12)
  br label %14

14:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @usb_remove_hcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
