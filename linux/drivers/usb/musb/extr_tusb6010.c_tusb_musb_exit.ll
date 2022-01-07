; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010.c_tusb_musb_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010.c_tusb_musb_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, i32 (i32)*, i32 }

@the_musb = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*)* @tusb_musb_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tusb_musb_exit(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  store %struct.musb* %0, %struct.musb** %2, align 8
  %3 = load %struct.musb*, %struct.musb** %2, align 8
  %4 = getelementptr inbounds %struct.musb, %struct.musb* %3, i32 0, i32 3
  %5 = call i32 @del_timer_sync(i32* %4)
  store i32* null, i32** @the_musb, align 8
  %6 = load %struct.musb*, %struct.musb** %2, align 8
  %7 = getelementptr inbounds %struct.musb, %struct.musb* %6, i32 0, i32 2
  %8 = load i32 (i32)*, i32 (i32)** %7, align 8
  %9 = icmp ne i32 (i32)* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.musb*, %struct.musb** %2, align 8
  %12 = getelementptr inbounds %struct.musb, %struct.musb* %11, i32 0, i32 2
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = call i32 %13(i32 0)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.musb*, %struct.musb** %2, align 8
  %17 = getelementptr inbounds %struct.musb, %struct.musb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @iounmap(i32 %18)
  %20 = load %struct.musb*, %struct.musb** %2, align 8
  %21 = getelementptr inbounds %struct.musb, %struct.musb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @usb_put_phy(i32 %22)
  ret i32 0
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @usb_put_phy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
