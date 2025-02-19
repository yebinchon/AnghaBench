; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_device_postconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_device_postconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @comedi_device_postconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_device_postconfig(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 2
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = call i32 @__comedi_device_postconfig(%struct.comedi_device* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = call i32 @down_write(i32* %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 1
  %22 = call i32 @up_write(i32* %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %14, %12
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @__comedi_device_postconfig(%struct.comedi_device*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
