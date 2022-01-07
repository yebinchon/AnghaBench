; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_serial_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_serial_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_private* }
%struct.labpc_private = type { i32, i32 (%struct.comedi_device.0*, i32)*, i32, i32 (%struct.comedi_device.1*, i32, i32)* }
%struct.comedi_device.0 = type opaque
%struct.comedi_device.1 = type opaque

@CMD5_SCLK = common dso_local global i32 0, align 4
@CMD5_REG = common dso_local global i32 0, align 4
@STAT2_REG = common dso_local global i32 0, align 4
@STAT2_PROMOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @labpc_serial_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_serial_in(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.labpc_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  store %struct.labpc_private* %9, %struct.labpc_private** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 8, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %10

10:                                               ; preds = %70, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 8
  br i1 %12, label %13, label %73

13:                                               ; preds = %10
  %14 = load i32, i32* @CMD5_SCLK, align 4
  %15 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %16 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = call i32 @udelay(i32 1)
  %20 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %21 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %20, i32 0, i32 3
  %22 = load i32 (%struct.comedi_device.1*, i32, i32)*, i32 (%struct.comedi_device.1*, i32, i32)** %21, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %24 = bitcast %struct.comedi_device* %23 to %struct.comedi_device.1*
  %25 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %26 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CMD5_REG, align 4
  %29 = call i32 %22(%struct.comedi_device.1* %24, i32 %27, i32 %28)
  %30 = load i32, i32* @CMD5_SCLK, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %33 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = call i32 @udelay(i32 1)
  %37 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %38 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %37, i32 0, i32 3
  %39 = load i32 (%struct.comedi_device.1*, i32, i32)*, i32 (%struct.comedi_device.1*, i32, i32)** %38, align 8
  %40 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %41 = bitcast %struct.comedi_device* %40 to %struct.comedi_device.1*
  %42 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %43 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CMD5_REG, align 4
  %46 = call i32 %39(%struct.comedi_device.1* %41, i32 %44, i32 %45)
  %47 = call i32 @udelay(i32 1)
  %48 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %49 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %48, i32 0, i32 1
  %50 = load i32 (%struct.comedi_device.0*, i32)*, i32 (%struct.comedi_device.0*, i32)** %49, align 8
  %51 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %52 = bitcast %struct.comedi_device* %51 to %struct.comedi_device.0*
  %53 = load i32, i32* @STAT2_REG, align 4
  %54 = call i32 %50(%struct.comedi_device.0* %52, i32 %53)
  %55 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %56 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %58 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @STAT2_PROMOUT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %13
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 8, %64
  %66 = shl i32 1, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %63, %13
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %10

73:                                               ; preds = %10
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
