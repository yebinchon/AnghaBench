; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_get_rgout0_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_get_rgout0_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32, i32, i64 }

@NISTC_RTSI_TRIG_DIR_SUB_SEL1 = common dso_local global i32 0, align 4
@NISTC_RTSI_TRIG_DIR_SUB_SEL1_SHIFT = common dso_local global i32 0, align 4
@NISTC_RTSI_TRIGB_SUB_SEL1 = common dso_local global i32 0, align 4
@NISTC_RTSI_TRIGB_SUB_SEL1_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @get_rgout0_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rgout0_reg(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.ni_private*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 0
  %7 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  store %struct.ni_private* %7, %struct.ni_private** %3, align 8
  %8 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %9 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %14 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NISTC_RTSI_TRIG_DIR_SUB_SEL1, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @NISTC_RTSI_TRIG_DIR_SUB_SEL1_SHIFT, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %4, align 4
  br label %28

20:                                               ; preds = %1
  %21 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %22 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NISTC_RTSI_TRIGB_SUB_SEL1, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @NISTC_RTSI_TRIGB_SUB_SEL1_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %20, %12
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
