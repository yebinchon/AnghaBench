; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_request_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_request_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_request = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@CCW_FLAG_SLI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raw3270_request_reset(%struct.raw3270_request* %0) #0 {
  %2 = alloca %struct.raw3270_request*, align 8
  store %struct.raw3270_request* %0, %struct.raw3270_request** %2, align 8
  %3 = load %struct.raw3270_request*, %struct.raw3270_request** %2, align 8
  %4 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %3, i32 0, i32 4
  %5 = call i32 @list_empty(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.raw3270_request*, %struct.raw3270_request** %2, align 8
  %11 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.raw3270_request*, %struct.raw3270_request** %2, align 8
  %14 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.raw3270_request*, %struct.raw3270_request** %2, align 8
  %17 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @__pa(i32 %18)
  %20 = load %struct.raw3270_request*, %struct.raw3270_request** %2, align 8
  %21 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @CCW_FLAG_SLI, align 4
  %24 = load %struct.raw3270_request*, %struct.raw3270_request** %2, align 8
  %25 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.raw3270_request*, %struct.raw3270_request** %2, align 8
  %28 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.raw3270_request*, %struct.raw3270_request** %2, align 8
  %30 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__pa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
