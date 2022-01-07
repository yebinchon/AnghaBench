; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2801.c_probe_number_of_ai_chans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2801.c_probe_number_of_ai_chans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@DT_C_READ_ADIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @probe_number_of_ai_chans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_number_of_ai_chans(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 16
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = load i32, i32* @DT_C_READ_ADIM, align 4
  %12 = call i32 @dt2801_writecmd(%struct.comedi_device* %10, i32 %11)
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = call i32 @dt2801_writedata(%struct.comedi_device* %13, i32 0)
  %15 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @dt2801_writedata(%struct.comedi_device* %15, i32 %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %19 = call i32 @dt2801_readdata2(%struct.comedi_device* %18, i32* %5)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %9
  br label %27

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %6

27:                                               ; preds = %22, %6
  %28 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %29 = call i32 @dt2801_reset(%struct.comedi_device* %28)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %31 = call i32 @dt2801_reset(%struct.comedi_device* %30)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @dt2801_writecmd(%struct.comedi_device*, i32) #1

declare dso_local i32 @dt2801_writedata(%struct.comedi_device*, i32) #1

declare dso_local i32 @dt2801_readdata2(%struct.comedi_device*, i32*) #1

declare dso_local i32 @dt2801_reset(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
