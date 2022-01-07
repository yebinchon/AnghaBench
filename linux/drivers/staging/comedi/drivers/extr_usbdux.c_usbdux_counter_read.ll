; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_counter_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_counter_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbdux_private* }
%struct.usbdux_private = type { i32, i32* }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@USBDUX_CMD_TIMER_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @usbdux_counter_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_counter_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.usbdux_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.usbdux_private*, %struct.usbdux_private** %14, align 8
  store %struct.usbdux_private* %15, %struct.usbdux_private** %9, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %21 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %57, %4
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %23
  %30 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %31 = load i32, i32* @USBDUX_CMD_TIMER_RD, align 4
  %32 = call i32 @send_dux_commands(%struct.comedi_device* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %61

36:                                               ; preds = %29
  %37 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %38 = load i32, i32* @USBDUX_CMD_TIMER_RD, align 4
  %39 = call i32 @receive_dux_commands(%struct.comedi_device* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %61

43:                                               ; preds = %36
  %44 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %45 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %43
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %23

60:                                               ; preds = %23
  br label %61

61:                                               ; preds = %60, %42, %35
  %62 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %63 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  br label %73

69:                                               ; preds = %61
  %70 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %71 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  br label %73

73:                                               ; preds = %69, %67
  %74 = phi i32 [ %68, %67 ], [ %72, %69 ]
  ret i32 %74
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @send_dux_commands(%struct.comedi_device*, i32) #1

declare dso_local i32 @receive_dux_commands(%struct.comedi_device*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
