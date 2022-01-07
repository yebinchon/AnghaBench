; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw3215_info*)* @raw3215_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw3215_startup(%struct.raw3215_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raw3215_info*, align 8
  %4 = alloca i64, align 8
  store %struct.raw3215_info* %0, %struct.raw3215_info** %3, align 8
  %5 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %6 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %5, i32 0, i32 1
  %7 = call i64 @tty_port_initialized(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %12 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %14 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %13, i32 0, i32 1
  %15 = call i32 @tty_port_set_initialized(i32* %14, i32 1)
  %16 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %17 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @get_ccwdev_lock(i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32 %19, i64 %20)
  %22 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %23 = call i32 @raw3215_try_io(%struct.raw3215_info* %22)
  %24 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %25 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @get_ccwdev_lock(i32 %26)
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32 %27, i64 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %10, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @tty_port_initialized(i32*) #1

declare dso_local i32 @tty_port_set_initialized(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @raw3215_try_io(%struct.raw3215_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
