; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_ai_set_chan_and_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_ai_set_chan_and_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_private*, %struct.labpc_boardinfo* }
%struct.labpc_private = type { i32, i32 (%struct.comedi_device.0*, i32, i32)* }
%struct.comedi_device.0 = type opaque
%struct.labpc_boardinfo = type { i64 }

@MODE_SINGLE_CHAN = common dso_local global i32 0, align 4
@MODE_SINGLE_CHAN_INTERVAL = common dso_local global i32 0, align 4
@AREF_DIFF = common dso_local global i32 0, align 4
@CMD1_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32, i32)* @labpc_ai_set_chan_and_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @labpc_ai_set_chan_and_gain(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.labpc_boardinfo*, align 8
  %12 = alloca %struct.labpc_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** %14, align 8
  store %struct.labpc_boardinfo* %15, %struct.labpc_boardinfo** %11, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load %struct.labpc_private*, %struct.labpc_private** %17, align 8
  store %struct.labpc_private* %18, %struct.labpc_private** %12, align 8
  %19 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** %11, align 8
  %20 = getelementptr inbounds %struct.labpc_boardinfo, %struct.labpc_boardinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = icmp ugt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %9, align 4
  %28 = icmp ugt i32 %27, 7
  %29 = zext i1 %28 to i32
  %30 = add nsw i32 %26, %29
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %23, %5
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MODE_SINGLE_CHAN, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @MODE_SINGLE_CHAN_INTERVAL, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @AREF_DIFF, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = mul i32 %46, 2
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %41, %37
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @CMD1_MA(i32 %49)
  %51 = load %struct.labpc_private*, %struct.labpc_private** %12, align 8
  %52 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @CMD1_GAIN(i32 %53)
  %55 = load %struct.labpc_private*, %struct.labpc_private** %12, align 8
  %56 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.labpc_private*, %struct.labpc_private** %12, align 8
  %60 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %59, i32 0, i32 1
  %61 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %60, align 8
  %62 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %63 = bitcast %struct.comedi_device* %62 to %struct.comedi_device.0*
  %64 = load %struct.labpc_private*, %struct.labpc_private** %12, align 8
  %65 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CMD1_REG, align 4
  %68 = call i32 %61(%struct.comedi_device.0* %63, i32 %66, i32 %67)
  ret void
}

declare dso_local i32 @CMD1_MA(i32) #1

declare dso_local i32 @CMD1_GAIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
