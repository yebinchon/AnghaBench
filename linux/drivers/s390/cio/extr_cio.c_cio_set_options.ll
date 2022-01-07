; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_cio_set_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_cio_set_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32 }
%struct.io_subchannel_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@DOIO_ALLOW_SUSPEND = common dso_local global i32 0, align 4
@DOIO_DENY_PREFETCH = common dso_local global i32 0, align 4
@DOIO_SUPPRESS_INTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cio_set_options(%struct.subchannel* %0, i32 %1) #0 {
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_subchannel_private*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %7 = call %struct.io_subchannel_private* @to_io_private(%struct.subchannel* %6)
  store %struct.io_subchannel_private* %7, %struct.io_subchannel_private** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @DOIO_ALLOW_SUSPEND, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load %struct.io_subchannel_private*, %struct.io_subchannel_private** %5, align 8
  %14 = getelementptr inbounds %struct.io_subchannel_private, %struct.io_subchannel_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @DOIO_DENY_PREFETCH, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load %struct.io_subchannel_private*, %struct.io_subchannel_private** %5, align 8
  %22 = getelementptr inbounds %struct.io_subchannel_private, %struct.io_subchannel_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DOIO_SUPPRESS_INTER, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load %struct.io_subchannel_private*, %struct.io_subchannel_private** %5, align 8
  %30 = getelementptr inbounds %struct.io_subchannel_private, %struct.io_subchannel_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  ret i32 0
}

declare dso_local %struct.io_subchannel_private* @to_io_private(%struct.subchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
