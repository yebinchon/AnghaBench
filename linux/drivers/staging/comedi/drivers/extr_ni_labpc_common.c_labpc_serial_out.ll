; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_serial_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_serial_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_private* }
%struct.labpc_private = type { i32, i32 (%struct.comedi_device.0*, i32, i32)* }
%struct.comedi_device.0 = type opaque

@CMD5_SCLK = common dso_local global i32 0, align 4
@CMD5_SDATA = common dso_local global i32 0, align 4
@CMD5_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @labpc_serial_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @labpc_serial_out(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.labpc_private*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.labpc_private*, %struct.labpc_private** %10, align 8
  store %struct.labpc_private* %11, %struct.labpc_private** %7, align 8
  store i32 1, i32* %8, align 4
  br label %12

12:                                               ; preds = %71, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ule i32 %13, %14
  br i1 %15, label %16, label %74

16:                                               ; preds = %12
  %17 = load i32, i32* @CMD5_SCLK, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %20 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sub i32 %24, %25
  %27 = shl i32 1, %26
  %28 = and i32 %23, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load i32, i32* @CMD5_SDATA, align 4
  %32 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %33 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %43

36:                                               ; preds = %16
  %37 = load i32, i32* @CMD5_SDATA, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %40 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %36, %30
  %44 = call i32 @udelay(i32 1)
  %45 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %46 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %45, i32 0, i32 1
  %47 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %46, align 8
  %48 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %49 = bitcast %struct.comedi_device* %48 to %struct.comedi_device.0*
  %50 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %51 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CMD5_REG, align 4
  %54 = call i32 %47(%struct.comedi_device.0* %49, i32 %52, i32 %53)
  %55 = load i32, i32* @CMD5_SCLK, align 4
  %56 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %57 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = call i32 @udelay(i32 1)
  %61 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %62 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %61, i32 0, i32 1
  %63 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %62, align 8
  %64 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %65 = bitcast %struct.comedi_device* %64 to %struct.comedi_device.0*
  %66 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %67 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CMD5_REG, align 4
  %70 = call i32 %63(%struct.comedi_device.0* %65, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %43
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %12

74:                                               ; preds = %12
  ret void
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
