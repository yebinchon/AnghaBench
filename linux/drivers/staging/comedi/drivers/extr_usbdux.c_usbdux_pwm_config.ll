; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbdux_private* }
%struct.usbdux_private = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @usbdux_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_pwm_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.usbdux_private*, align 8
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.usbdux_private*, %struct.usbdux_private** %13, align 8
  store %struct.usbdux_private* %14, %struct.usbdux_private** %10, align 8
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CR_CHAN(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %73 [
    i32 134, label %22
    i32 133, label %34
    i32 132, label %38
    i32 128, label %44
    i32 130, label %51
    i32 129, label %57
    i32 131, label %70
  ]

22:                                               ; preds = %4
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %76

30:                                               ; preds = %22
  %31 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %33 = call i32 @usbdux_pwm_start(%struct.comedi_device* %31, %struct.comedi_subdevice* %32)
  store i32 %33, i32* %5, align 4
  br label %76

34:                                               ; preds = %4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %37 = call i32 @usbdux_pwm_cancel(%struct.comedi_device* %35, %struct.comedi_subdevice* %36)
  store i32 %37, i32* %5, align 4
  br label %76

38:                                               ; preds = %4
  %39 = load %struct.usbdux_private*, %struct.usbdux_private** %10, align 8
  %40 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %5, align 4
  br label %76

44:                                               ; preds = %4
  %45 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usbdux_pwm_period(%struct.comedi_device* %45, %struct.comedi_subdevice* %46, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %76

51:                                               ; preds = %4
  %52 = load %struct.usbdux_private*, %struct.usbdux_private** %10, align 8
  %53 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %5, align 4
  br label %76

57:                                               ; preds = %4
  %58 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @usbdux_pwm_pattern(%struct.comedi_device* %58, %struct.comedi_subdevice* %59, i32 %60, i32 %63, i32 %68)
  store i32 0, i32* %5, align 4
  br label %76

70:                                               ; preds = %4
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %76

73:                                               ; preds = %4
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %73, %70, %57, %51, %44, %38, %34, %30, %27
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @usbdux_pwm_start(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @usbdux_pwm_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @usbdux_pwm_period(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @usbdux_pwm_pattern(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
