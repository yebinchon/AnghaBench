; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_handle_eos_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_handle_eos_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.s626_private* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i64, i32 }
%struct.s626_private = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_CANCEL_MASK = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @s626_handle_eos_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_handle_eos_interrupt(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.s626_private*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load %struct.s626_private*, %struct.s626_private** %11, align 8
  store %struct.s626_private* %12, %struct.s626_private** %3, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %14, align 8
  store %struct.comedi_subdevice* %15, %struct.comedi_subdevice** %4, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.comedi_async*, %struct.comedi_async** %17, align 8
  store %struct.comedi_async* %18, %struct.comedi_async** %5, align 8
  %19 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %20 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %19, i32 0, i32 2
  store %struct.comedi_cmd* %20, %struct.comedi_cmd** %6, align 8
  %21 = load %struct.s626_private*, %struct.s626_private** %3, align 8
  %22 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32* %26, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %41, %1
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %30 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call zeroext i16 @s626_ai_reg_to_uint(i32 %35)
  store i16 %36, i16* %9, align 2
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %7, align 8
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %40 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %39, i16* %9, i32 1)
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %27

44:                                               ; preds = %27
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TRIG_COUNT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %52 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load i32, i32* @COMEDI_CB_EOA, align 4
  %60 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %61 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %58, %50, %44
  %65 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %66 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @COMEDI_CB_CANCEL_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.s626_private*, %struct.s626_private** %3, align 8
  %73 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %64
  %75 = load %struct.s626_private*, %struct.s626_private** %3, align 8
  %76 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TRIG_EXT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @s626_dio_set_irq(%struct.comedi_device* %86, i32 %89)
  br label %91

91:                                               ; preds = %85, %79, %74
  %92 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %94 = call i32 @comedi_handle_events(%struct.comedi_device* %92, %struct.comedi_subdevice* %93)
  %95 = load %struct.s626_private*, %struct.s626_private** %3, align 8
  %96 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  ret i32 %100
}

declare dso_local zeroext i16 @s626_ai_reg_to_uint(i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @s626_dio_set_irq(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
