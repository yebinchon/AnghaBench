; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_allocate_private.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_allocate_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.ni_660x_private = type { i32*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NI660X_NUM_PFI_CHANNELS = common dso_local global i32 0, align 4
@NI_660X_PFI_OUTPUT_COUNTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @ni_660x_allocate_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_allocate_private(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.ni_660x_private*, align 8
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = call %struct.ni_660x_private* @comedi_alloc_devpriv(%struct.comedi_device* %6, i32 16)
  store %struct.ni_660x_private* %7, %struct.ni_660x_private** %4, align 8
  %8 = load %struct.ni_660x_private*, %struct.ni_660x_private** %4, align 8
  %9 = icmp ne %struct.ni_660x_private* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.ni_660x_private*, %struct.ni_660x_private** %4, align 8
  %15 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %14, i32 0, i32 2
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.ni_660x_private*, %struct.ni_660x_private** %4, align 8
  %18 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_init(i32* %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %32, %13
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @NI660X_NUM_PFI_CHANNELS, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, i32* @NI_660X_PFI_OUTPUT_COUNTER, align 4
  %26 = load %struct.ni_660x_private*, %struct.ni_660x_private** %4, align 8
  %27 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %20

35:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.ni_660x_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
