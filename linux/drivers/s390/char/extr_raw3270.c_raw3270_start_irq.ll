; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_start_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_start_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_view = type { %struct.raw3270* }
%struct.raw3270 = type { i32 }
%struct.raw3270_request = type { i32, %struct.raw3270_view* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raw3270_start_irq(%struct.raw3270_view* %0, %struct.raw3270_request* %1) #0 {
  %3 = alloca %struct.raw3270_view*, align 8
  %4 = alloca %struct.raw3270_request*, align 8
  %5 = alloca %struct.raw3270*, align 8
  store %struct.raw3270_view* %0, %struct.raw3270_view** %3, align 8
  store %struct.raw3270_request* %1, %struct.raw3270_request** %4, align 8
  %6 = load %struct.raw3270_view*, %struct.raw3270_view** %3, align 8
  %7 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %6, i32 0, i32 0
  %8 = load %struct.raw3270*, %struct.raw3270** %7, align 8
  store %struct.raw3270* %8, %struct.raw3270** %5, align 8
  %9 = load %struct.raw3270_view*, %struct.raw3270_view** %3, align 8
  %10 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %11 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %10, i32 0, i32 1
  store %struct.raw3270_view* %9, %struct.raw3270_view** %11, align 8
  %12 = load %struct.raw3270_view*, %struct.raw3270_view** %3, align 8
  %13 = call i32 @raw3270_get_view(%struct.raw3270_view* %12)
  %14 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %15 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %14, i32 0, i32 0
  %16 = load %struct.raw3270*, %struct.raw3270** %5, align 8
  %17 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %16, i32 0, i32 0
  %18 = call i32 @list_add_tail(i32* %15, i32* %17)
  ret i32 0
}

declare dso_local i32 @raw3270_get_view(%struct.raw3270_view*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
