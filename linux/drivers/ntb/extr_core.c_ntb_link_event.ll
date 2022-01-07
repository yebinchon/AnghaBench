; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_core.c_ntb_link_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_core.c_ntb_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntb_link_event(%struct.ntb_dev* %0) #0 {
  %2 = alloca %struct.ntb_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %2, align 8
  %4 = load %struct.ntb_dev*, %struct.ntb_dev** %2, align 8
  %5 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.ntb_dev*, %struct.ntb_dev** %2, align 8
  %9 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.ntb_dev*, %struct.ntb_dev** %2, align 8
  %14 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = icmp ne i32 (i32)* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load %struct.ntb_dev*, %struct.ntb_dev** %2, align 8
  %21 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load %struct.ntb_dev*, %struct.ntb_dev** %2, align 8
  %26 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %24(i32 %27)
  br label %29

29:                                               ; preds = %19, %12, %1
  %30 = load %struct.ntb_dev*, %struct.ntb_dev** %2, align 8
  %31 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
