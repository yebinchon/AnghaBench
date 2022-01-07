; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_get_rtsi_brd_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_get_rtsi_brd_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.comedi_device*)* @get_rtsi_brd_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rtsi_brd_src(i32 %0, %struct.comedi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.ni_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.comedi_device* %1, %struct.comedi_device** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  store %struct.ni_private* %10, %struct.ni_private** %5, align 8
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @NI_RTSI_BRD(i32 0)
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @NI_RTSI_BRD(i32 0)
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @NI_RTSI_BRD(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = call i32 @get_ith_rtsi_brd_reg(i32 %23, %struct.comedi_device* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %29 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %28, i32 0, i32 0
  %30 = call i32 @ni_find_route_source(i32 %26, i32 %27, i32* %29)
  ret i32 %30
}

declare dso_local i32 @NI_RTSI_BRD(i32) #1

declare dso_local i32 @get_ith_rtsi_brd_reg(i32, %struct.comedi_device*) #1

declare dso_local i32 @ni_find_route_source(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
