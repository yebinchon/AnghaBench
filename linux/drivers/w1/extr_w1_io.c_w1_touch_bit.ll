; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/extr_w1_io.c_w1_touch_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/extr_w1_io.c_w1_touch_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @w1_touch_bit(%struct.w1_master* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.w1_master*, align 8
  %5 = alloca i32, align 4
  store %struct.w1_master* %0, %struct.w1_master** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %7 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %11 = icmp ne i32 (i32, i32)* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %14 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32 (i32, i32)*, i32 (i32, i32)** %16, align 8
  %18 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %19 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 %17(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %34

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %30 = call i32 @w1_read_bit(%struct.w1_master* %29)
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %25
  %32 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %33 = call i32 @w1_write_bit(%struct.w1_master* %32, i32 0)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %28, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @w1_read_bit(%struct.w1_master*) #1

declare dso_local i32 @w1_write_bit(%struct.w1_master*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
