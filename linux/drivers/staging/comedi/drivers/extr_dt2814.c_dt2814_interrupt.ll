; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2814.c_dt2814_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2814.c_dt2814_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, i32, %struct.comedi_subdevice*, %struct.dt2814_private* }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dt2814_private = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"spurious interrupt\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DT2814_DATA = common dso_local global i64 0, align 8
@DT2814_CSR = common dso_local global i64 0, align 8
@DT2814_TIMEOUT = common dso_local global i32 0, align 4
@DT2814_FINISH = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dt2814_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2814_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_device*, align 8
  %9 = alloca %struct.dt2814_private*, align 8
  %10 = alloca %struct.comedi_subdevice*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.comedi_device*
  store %struct.comedi_device* %14, %struct.comedi_device** %8, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 4
  %17 = load %struct.dt2814_private*, %struct.dt2814_private** %16, align 8
  store %struct.dt2814_private* %17, %struct.dt2814_private** %9, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 3
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %19, align 8
  store %struct.comedi_subdevice* %20, %struct.comedi_subdevice** %10, align 8
  %21 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %30, i32* %3, align 4
  br label %105

31:                                               ; preds = %2
  %32 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DT2814_DATA, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @inb(i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DT2814_DATA, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @inb(i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 4
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 4
  %48 = or i32 %45, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct.dt2814_private*, %struct.dt2814_private** %9, align 8
  %50 = getelementptr inbounds %struct.dt2814_private, %struct.dt2814_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %100, label %54

54:                                               ; preds = %31
  %55 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DT2814_CSR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @outb(i32 0, i64 %59)
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %77, %54
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @DT2814_TIMEOUT, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DT2814_CSR, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @inb(i64 %70)
  %72 = load i32, i32* @DT2814_FINISH, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %80

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %61

80:                                               ; preds = %75, %61
  %81 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DT2814_DATA, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @inb(i64 %85)
  %87 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DT2814_DATA, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @inb(i64 %91)
  %93 = load i32, i32* @COMEDI_CB_EOA, align 4
  %94 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %95 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %93
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %80, %31
  %101 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %102 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %103 = call i32 @comedi_handle_events(%struct.comedi_device* %101, %struct.comedi_subdevice* %102)
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %100, %25
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
