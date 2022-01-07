; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_legousbtower.c_tower_check_for_read_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_legousbtower.c_tower_check_for_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lego_usb_tower = type { i64, i64, i32, i64, i64, i64 }

@packet_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@read_buffer_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lego_usb_tower*)* @tower_check_for_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tower_check_for_read_packet(%struct.lego_usb_tower* %0) #0 {
  %2 = alloca %struct.lego_usb_tower*, align 8
  store %struct.lego_usb_tower* %0, %struct.lego_usb_tower** %2, align 8
  %3 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %2, align 8
  %4 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %3, i32 0, i32 2
  %5 = call i32 @spin_lock_irq(i32* %4)
  %6 = load i32, i32* @packet_timeout, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load i32, i32* @jiffies, align 4
  %10 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %2, align 8
  %11 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %2, align 8
  %14 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = call i64 @time_after(i32 %9, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %8
  %20 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %2, align 8
  %21 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @read_buffer_size, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19, %8, %1
  %26 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %2, align 8
  %27 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %2, align 8
  %30 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %2, align 8
  %33 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %2, align 8
  %35 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %34, i32 0, i32 2
  %36 = call i32 @spin_unlock_irq(i32* %35)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
