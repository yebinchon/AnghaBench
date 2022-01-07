; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_gpct_read_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_gpct_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_device* }
%struct.comedi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32)* @ni_gpct_read_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_gpct_read_register(%struct.ni_gpct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ni_gpct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %9 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.comedi_device*, %struct.comedi_device** %11, align 8
  store %struct.comedi_device* %12, %struct.comedi_device** %6, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ni_gpct_to_stc_register(%struct.comedi_device* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %29 [
    i32 133, label %21
    i32 130, label %21
    i32 132, label %25
    i32 129, label %25
    i32 131, label %25
    i32 128, label %25
  ]

21:                                               ; preds = %19, %19
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ni_readw(%struct.comedi_device* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %19, %19, %19, %19
  %26 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ni_stc_readl(%struct.comedi_device* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ni_stc_readw(%struct.comedi_device* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %25, %21, %18
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @ni_gpct_to_stc_register(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_readw(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_stc_readl(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_stc_readw(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
