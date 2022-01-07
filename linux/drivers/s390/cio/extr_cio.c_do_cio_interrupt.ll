; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_do_cio_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_do_cio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpi_info = type { i32, i64 }
%struct.subchannel = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 (%struct.subchannel*)* }
%struct.TYPE_4__ = type { i32 }
%struct.irb = type { i32 }
%struct.TYPE_6__ = type { i32 }

@CIF_NOHZ_DELAY = common dso_local global i32 0, align 4
@cio_irb = common dso_local global i32 0, align 4
@IRQIO_CIO = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @do_cio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cio_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tpi_info*, align 8
  %7 = alloca %struct.subchannel*, align 8
  %8 = alloca %struct.irb*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @CIF_NOHZ_DELAY, align 4
  %10 = call i32 @set_cpu_flag(i32 %9)
  %11 = call %struct.TYPE_6__* (...) @get_irq_regs()
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to %struct.tpi_info*
  store %struct.tpi_info* %13, %struct.tpi_info** %6, align 8
  %14 = load %struct.tpi_info*, %struct.tpi_info** %6, align 8
  %15 = call i32 @trace_s390_cio_interrupt(%struct.tpi_info* %14)
  %16 = call %struct.irb* @this_cpu_ptr(i32* @cio_irb)
  store %struct.irb* %16, %struct.irb** %8, align 8
  %17 = load %struct.tpi_info*, %struct.tpi_info** %6, align 8
  %18 = getelementptr inbounds %struct.tpi_info, %struct.tpi_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.subchannel*
  store %struct.subchannel* %20, %struct.subchannel** %7, align 8
  %21 = load %struct.subchannel*, %struct.subchannel** %7, align 8
  %22 = icmp ne %struct.subchannel* %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQIO_CIO, align 4
  %25 = call i32 @inc_irq_stat(i32 %24)
  %26 = load %struct.tpi_info*, %struct.tpi_info** %6, align 8
  %27 = getelementptr inbounds %struct.tpi_info, %struct.tpi_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.irb*, %struct.irb** %8, align 8
  %30 = call i64 @tsch(i32 %28, %struct.irb* %29)
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %31, i32* %3, align 4
  br label %82

32:                                               ; preds = %2
  %33 = load %struct.subchannel*, %struct.subchannel** %7, align 8
  %34 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @spin_lock(i32 %35)
  %37 = load %struct.tpi_info*, %struct.tpi_info** %6, align 8
  %38 = getelementptr inbounds %struct.tpi_info, %struct.tpi_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.irb*, %struct.irb** %8, align 8
  %41 = call i64 @tsch(i32 %39, %struct.irb* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %32
  %44 = load %struct.subchannel*, %struct.subchannel** %7, align 8
  %45 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.irb*, %struct.irb** %8, align 8
  %48 = getelementptr inbounds %struct.irb, %struct.irb* %47, i32 0, i32 0
  %49 = call i32 @memcpy(i32* %46, i32* %48, i32 4)
  %50 = load %struct.subchannel*, %struct.subchannel** %7, align 8
  %51 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %43
  %55 = load %struct.subchannel*, %struct.subchannel** %7, align 8
  %56 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (%struct.subchannel*)*, i32 (%struct.subchannel*)** %58, align 8
  %60 = icmp ne i32 (%struct.subchannel*)* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.subchannel*, %struct.subchannel** %7, align 8
  %63 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32 (%struct.subchannel*)*, i32 (%struct.subchannel*)** %65, align 8
  %67 = load %struct.subchannel*, %struct.subchannel** %7, align 8
  %68 = call i32 %66(%struct.subchannel* %67)
  br label %72

69:                                               ; preds = %54, %43
  %70 = load i32, i32* @IRQIO_CIO, align 4
  %71 = call i32 @inc_irq_stat(i32 %70)
  br label %72

72:                                               ; preds = %69, %61
  br label %76

73:                                               ; preds = %32
  %74 = load i32, i32* @IRQIO_CIO, align 4
  %75 = call i32 @inc_irq_stat(i32 %74)
  br label %76

76:                                               ; preds = %73, %72
  %77 = load %struct.subchannel*, %struct.subchannel** %7, align 8
  %78 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @spin_unlock(i32 %79)
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %76, %23
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @set_cpu_flag(i32) #1

declare dso_local %struct.TYPE_6__* @get_irq_regs(...) #1

declare dso_local i32 @trace_s390_cio_interrupt(%struct.tpi_info*) #1

declare dso_local %struct.irb* @this_cpu_ptr(i32*) #1

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local i64 @tsch(i32, %struct.irb*) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
