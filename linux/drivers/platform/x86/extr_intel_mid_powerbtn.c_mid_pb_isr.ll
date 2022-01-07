; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mid_powerbtn.c_mid_pb_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mid_powerbtn.c_mid_pb_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_pb_ddata = type { %struct.input_dev* }
%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Read error %d while reading MSIC_PB_STATUS\0A\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mid_pb_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mid_pb_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mid_pb_ddata*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mid_pb_ddata*
  store %struct.mid_pb_ddata* %10, %struct.mid_pb_ddata** %5, align 8
  %11 = load %struct.mid_pb_ddata*, %struct.mid_pb_ddata** %5, align 8
  %12 = getelementptr inbounds %struct.mid_pb_ddata, %struct.mid_pb_ddata* %11, i32 0, i32 0
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.mid_pb_ddata*, %struct.mid_pb_ddata** %5, align 8
  %15 = call i32 @mid_pbstat(%struct.mid_pb_ddata* %14, i32* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %27 = load i32, i32* @EV_KEY, align 4
  %28 = load i32, i32* @KEY_POWER, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @input_event(%struct.input_dev* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %32 = call i32 @input_sync(%struct.input_dev* %31)
  br label %33

33:                                               ; preds = %25, %18
  %34 = load %struct.mid_pb_ddata*, %struct.mid_pb_ddata** %5, align 8
  %35 = call i32 @mid_irq_ack(%struct.mid_pb_ddata* %34)
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %36
}

declare dso_local i32 @mid_pbstat(%struct.mid_pb_ddata*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @mid_irq_ack(%struct.mid_pb_ddata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
