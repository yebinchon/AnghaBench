; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1032.c_apci1032_cos_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1032.c_apci1032_cos_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.apci1032_private* }
%struct.apci1032_private = type { i32, i32, i32 }
%struct.comedi_subdevice = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Interrupts disabled due to mode configuration!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@APCI1032_MODE1_REG = common dso_local global i64 0, align 8
@APCI1032_MODE2_REG = common dso_local global i64 0, align 8
@APCI1032_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @apci1032_cos_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci1032_cos_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.apci1032_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 2
  %9 = load %struct.apci1032_private*, %struct.apci1032_private** %8, align 8
  store %struct.apci1032_private* %9, %struct.apci1032_private** %6, align 8
  %10 = load %struct.apci1032_private*, %struct.apci1032_private** %6, align 8
  %11 = getelementptr inbounds %struct.apci1032_private, %struct.apci1032_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_warn(i32 %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.apci1032_private*, %struct.apci1032_private** %6, align 8
  %23 = getelementptr inbounds %struct.apci1032_private, %struct.apci1032_private* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @APCI1032_MODE1_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outl(i32 %24, i64 %29)
  %31 = load %struct.apci1032_private*, %struct.apci1032_private** %6, align 8
  %32 = getelementptr inbounds %struct.apci1032_private, %struct.apci1032_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @APCI1032_MODE2_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outl(i32 %33, i64 %38)
  %40 = load %struct.apci1032_private*, %struct.apci1032_private** %6, align 8
  %41 = getelementptr inbounds %struct.apci1032_private, %struct.apci1032_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @APCI1032_CTRL_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outl(i32 %42, i64 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %21, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
