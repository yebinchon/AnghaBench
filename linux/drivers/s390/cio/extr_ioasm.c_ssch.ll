; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ioasm.c_ssch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ioasm.c_ssch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.orb = type { i32 }
%struct.subchannel_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssch(i32 %0, %union.orb* %1) #0 {
  %3 = alloca %struct.subchannel_id, align 4
  %4 = alloca %union.orb*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  store %union.orb* %1, %union.orb** %4, align 8
  %7 = load %union.orb*, %union.orb** %4, align 8
  %8 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @__ssch(i32 %9, %union.orb* %7)
  store i32 %10, i32* %5, align 4
  %11 = load %union.orb*, %union.orb** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @trace_s390_cio_ssch(i32 %14, %union.orb* %11, i32 %12)
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

declare dso_local i32 @__ssch(i32, %union.orb*) #1

declare dso_local i32 @trace_s390_cio_ssch(i32, %union.orb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
