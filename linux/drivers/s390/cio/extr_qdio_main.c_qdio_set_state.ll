; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { i32 }

@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"newstate: %1d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_irq*, i32)* @qdio_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdio_set_state(%struct.qdio_irq* %0, i32 %1) #0 {
  %3 = alloca %struct.qdio_irq*, align 8
  %4 = alloca i32, align 4
  store %struct.qdio_irq* %0, %struct.qdio_irq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @DBF_INFO, align 4
  %6 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @DBF_DEV_EVENT(i32 %5, %struct.qdio_irq* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %11 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = call i32 (...) @mb()
  ret void
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.qdio_irq*, i8*, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
