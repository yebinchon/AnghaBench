; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc_sch.c_chsc_subchannel_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc_sch.c_chsc_subchannel_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.chsc_private = type { %struct.chsc_request* }
%struct.chsc_request = type { i32, i32 }
%struct.irb = type { i32 }

@cio_irb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"irb\00", align 1
@IRQIO_CSC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Interrupt on sch 0.%x.%04x with no request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*)* @chsc_subchannel_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chsc_subchannel_irq(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.chsc_private*, align 8
  %4 = alloca %struct.chsc_request*, align 8
  %5 = alloca %struct.irb*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %6 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %7 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %6, i32 0, i32 0
  %8 = call %struct.chsc_private* @dev_get_drvdata(i32* %7)
  store %struct.chsc_private* %8, %struct.chsc_private** %3, align 8
  %9 = load %struct.chsc_private*, %struct.chsc_private** %3, align 8
  %10 = getelementptr inbounds %struct.chsc_private, %struct.chsc_private* %9, i32 0, i32 0
  %11 = load %struct.chsc_request*, %struct.chsc_request** %10, align 8
  store %struct.chsc_request* %11, %struct.chsc_request** %4, align 8
  %12 = call %struct.irb* @this_cpu_ptr(i32* @cio_irb)
  store %struct.irb* %12, %struct.irb** %5, align 8
  %13 = call i32 @CHSC_LOG(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.irb*, %struct.irb** %5, align 8
  %15 = call i32 @CHSC_LOG_HEX(i32 4, %struct.irb* %14, i32 4)
  %16 = load i32, i32* @IRQIO_CSC, align 4
  %17 = call i32 @inc_irq_stat(i32 %16)
  %18 = load %struct.chsc_request*, %struct.chsc_request** %4, align 8
  %19 = icmp ne %struct.chsc_request* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %22 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %26 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CHSC_MSG(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %28)
  br label %45

30:                                               ; preds = %1
  %31 = load %struct.chsc_private*, %struct.chsc_private** %3, align 8
  %32 = getelementptr inbounds %struct.chsc_private, %struct.chsc_private* %31, i32 0, i32 0
  store %struct.chsc_request* null, %struct.chsc_request** %32, align 8
  %33 = load %struct.chsc_request*, %struct.chsc_request** %4, align 8
  %34 = getelementptr inbounds %struct.chsc_request, %struct.chsc_request* %33, i32 0, i32 1
  %35 = load %struct.irb*, %struct.irb** %5, align 8
  %36 = call i32 @memcpy(i32* %34, %struct.irb* %35, i32 4)
  %37 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %38 = call i32 @cio_update_schib(%struct.subchannel* %37)
  %39 = load %struct.chsc_request*, %struct.chsc_request** %4, align 8
  %40 = getelementptr inbounds %struct.chsc_request, %struct.chsc_request* %39, i32 0, i32 0
  %41 = call i32 @complete(i32* %40)
  %42 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %43 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %42, i32 0, i32 0
  %44 = call i32 @put_device(i32* %43)
  br label %45

45:                                               ; preds = %30, %20
  ret void
}

declare dso_local %struct.chsc_private* @dev_get_drvdata(i32*) #1

declare dso_local %struct.irb* @this_cpu_ptr(i32*) #1

declare dso_local i32 @CHSC_LOG(i32, i8*) #1

declare dso_local i32 @CHSC_LOG_HEX(i32, %struct.irb*, i32) #1

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local i32 @CHSC_MSG(i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.irb*, i32) #1

declare dso_local i32 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
