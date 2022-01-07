; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_alloc_private.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_alloc_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.ni_private = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @ni_alloc_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_alloc_private(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.ni_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %6 = call %struct.ni_private* @comedi_alloc_devpriv(%struct.comedi_device* %5, i32 12)
  store %struct.ni_private* %6, %struct.ni_private** %4, align 8
  %7 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %8 = icmp ne %struct.ni_private* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %14 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %13, i32 0, i32 2
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %17 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %16, i32 0, i32 1
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %20 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_init(i32* %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %12, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.ni_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
