; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_ieee1284.c_parport_wait_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_ieee1284.c_parport_wait_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@timeout_waiting_on_port = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parport_wait_event(%struct.parport* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parport*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.parport*, %struct.parport** %4, align 8
  %8 = getelementptr inbounds %struct.parport, %struct.parport* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.parport*, %struct.parport** %4, align 8
  %18 = getelementptr inbounds %struct.parport, %struct.parport* %17, i32 0, i32 0
  %19 = load i32, i32* @timeout_waiting_on_port, align 4
  %20 = call i32 @timer_setup(i32* %18, i32 %19, i32 0)
  %21 = load %struct.parport*, %struct.parport** %4, align 8
  %22 = getelementptr inbounds %struct.parport, %struct.parport* %21, i32 0, i32 0
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @mod_timer(i32* %22, i64 %25)
  %27 = load %struct.parport*, %struct.parport** %4, align 8
  %28 = getelementptr inbounds %struct.parport, %struct.parport* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @down_interruptible(i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.parport*, %struct.parport** %4, align 8
  %34 = getelementptr inbounds %struct.parport, %struct.parport* %33, i32 0, i32 0
  %35 = call i32 @del_timer_sync(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %16
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %37, %16
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @down_interruptible(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
