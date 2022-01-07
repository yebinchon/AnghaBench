; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_main.c_cw1200_core_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_main.c_cw1200_core_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cw1200_core_release(%struct.cw1200_common* %0) #0 {
  %2 = alloca %struct.cw1200_common*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %2, align 8
  %3 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %4 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8
  %8 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %9 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 %7(i32 %10)
  %12 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %13 = call i32 @__cw1200_irq_enable(%struct.cw1200_common* %12, i32 0)
  %14 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %15 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %20 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %18(i32 %21)
  %23 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %24 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @cw1200_unregister_common(i32 %25)
  %27 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %28 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @cw1200_free_common(i32 %29)
  ret void
}

declare dso_local i32 @__cw1200_irq_enable(%struct.cw1200_common*, i32) #1

declare dso_local i32 @cw1200_unregister_common(i32) #1

declare dso_local i32 @cw1200_free_common(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
