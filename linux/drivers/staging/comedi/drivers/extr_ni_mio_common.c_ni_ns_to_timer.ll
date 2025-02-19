; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ns_to_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ns_to_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32 }

@CMDF_ROUND_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @ni_ns_to_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ns_to_timer(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ni_private*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  store %struct.ni_private* %11, %struct.ni_private** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %16 [
    i32 129, label %15
    i32 130, label %22
    i32 128, label %28
  ]

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %3, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %19 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DIV_ROUND_CLOSEST(i32 %17, i32 %20)
  store i32 %21, i32* %8, align 4
  br label %34

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %25 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = udiv i32 %23, %26
  store i32 %27, i32* %8, align 4
  br label %34

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %31 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DIV_ROUND_UP(i32 %29, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %28, %22, %16
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %35, 1
  ret i32 %36
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
