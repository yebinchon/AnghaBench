; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_ai_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_ai_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.daqp_private* }
%struct.daqp_private = type { i64 }
%struct.comedi_subdevice = type { i32 }

@EIO = common dso_local global i32 0, align 4
@DAQP_CMD_STOP = common dso_local global i32 0, align 4
@DAQP_CMD_REG = common dso_local global i64 0, align 8
@DAQP_CTRL_REG = common dso_local global i64 0, align 8
@DAQP_STATUS_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @daqp_ai_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daqp_ai_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.daqp_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.daqp_private*, %struct.daqp_private** %8, align 8
  store %struct.daqp_private* %9, %struct.daqp_private** %6, align 8
  %10 = load %struct.daqp_private*, %struct.daqp_private** %6, align 8
  %11 = getelementptr inbounds %struct.daqp_private, %struct.daqp_private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load i32, i32* @DAQP_CMD_STOP, align 4
  %19 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DAQP_CMD_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outb(i32 %18, i64 %23)
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DAQP_CTRL_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outb(i32 0, i64 %29)
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DAQP_STATUS_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @inb(i64 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %17, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
