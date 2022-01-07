; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.me4000_private* }
%struct.me4000_private = type { i64 }

@PLX9052_INTCSR = common dso_local global i64 0, align 8
@PLX9052_CNTRL = common dso_local global i64 0, align 8
@PLX9052_CNTRL_PCI_RESET = common dso_local global i32 0, align 4
@ME4000_AO_CTRL_IMMEDIATE_STOP = common dso_local global i32 0, align 4
@ME4000_AO_CTRL_STOP = common dso_local global i32 0, align 4
@ME4000_AO_DEMUX_ADJUST_VALUE = common dso_local global i32 0, align 4
@ME4000_AO_DEMUX_ADJUST_REG = common dso_local global i64 0, align 8
@ME4000_DIO_DIR_REG = common dso_local global i64 0, align 8
@ME4000_DIO_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @me4000_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @me4000_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.me4000_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 1
  %8 = load %struct.me4000_private*, %struct.me4000_private** %7, align 8
  store %struct.me4000_private* %8, %struct.me4000_private** %3, align 8
  %9 = load %struct.me4000_private*, %struct.me4000_private** %3, align 8
  %10 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PLX9052_INTCSR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outl(i32 0, i64 %13)
  %15 = load %struct.me4000_private*, %struct.me4000_private** %3, align 8
  %16 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PLX9052_CNTRL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @inl(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @PLX9052_CNTRL_PCI_RESET, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.me4000_private*, %struct.me4000_private** %3, align 8
  %26 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PLX9052_CNTRL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outl(i32 %24, i64 %29)
  %31 = load i32, i32* @PLX9052_CNTRL_PCI_RESET, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.me4000_private*, %struct.me4000_private** %3, align 8
  %37 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PLX9052_CNTRL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outl(i32 %35, i64 %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %53, %1
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @ME4000_AO_SINGLE_REG(i32 %49)
  %51 = add nsw i64 %48, %50
  %52 = call i32 @outl(i32 32768, i64 %51)
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %42

56:                                               ; preds = %42
  %57 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %58 = call i32 @me4000_ai_reset(%struct.comedi_device* %57)
  %59 = load i32, i32* @ME4000_AO_CTRL_IMMEDIATE_STOP, align 4
  %60 = load i32, i32* @ME4000_AO_CTRL_STOP, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %74, %56
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @ME4000_AO_CTRL_REG(i32 %70)
  %72 = add nsw i64 %69, %71
  %73 = call i32 @outl(i32 %66, i64 %72)
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %62

77:                                               ; preds = %62
  %78 = load i32, i32* @ME4000_AO_DEMUX_ADJUST_VALUE, align 4
  %79 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ME4000_AO_DEMUX_ADJUST_REG, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @outl(i32 %78, i64 %83)
  %85 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ME4000_DIO_DIR_REG, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @inl(i64 %89)
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %77
  %94 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %95 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ME4000_DIO_CTRL_REG, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @outl(i32 1, i64 %98)
  br label %100

100:                                              ; preds = %93, %77
  ret void
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i64 @ME4000_AO_SINGLE_REG(i32) #1

declare dso_local i32 @me4000_ai_reset(%struct.comedi_device*) #1

declare dso_local i64 @ME4000_AO_CTRL_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
