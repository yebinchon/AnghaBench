; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_samsung_rfkill_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_samsung_rfkill_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_laptop = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_laptop*)* @samsung_rfkill_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @samsung_rfkill_exit(%struct.samsung_laptop* %0) #0 {
  %2 = alloca %struct.samsung_laptop*, align 8
  store %struct.samsung_laptop* %0, %struct.samsung_laptop** %2, align 8
  %3 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %4 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %10 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @rfkill_unregister(i32* %12)
  %14 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %15 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @rfkill_destroy(i32* %17)
  %19 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %20 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %8, %1
  %23 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %24 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %30 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @rfkill_unregister(i32* %32)
  %34 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %35 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @rfkill_destroy(i32* %37)
  %39 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %40 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %28, %22
  ret void
}

declare dso_local i32 @rfkill_unregister(i32*) #1

declare dso_local i32 @rfkill_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
