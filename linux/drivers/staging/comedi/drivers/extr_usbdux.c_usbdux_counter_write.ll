; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_counter_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_counter_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbdux_private* }
%struct.usbdux_private = type { i32*, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@USBDUX_CMD_TIMER_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @usbdux_counter_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_counter_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.usbdux_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.usbdux_private*, %struct.usbdux_private** %15, align 8
  store %struct.usbdux_private* %16, %struct.usbdux_private** %9, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %22 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32* %24, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %25 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %26 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %30 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %28, i32* %32, align 4
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %54, %4
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %36 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cpu_to_le16(i32 %44)
  %46 = load i32*, i32** %11, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %48 = load i32, i32* @USBDUX_CMD_TIMER_WR, align 4
  %49 = call i32 @send_dux_commands(%struct.comedi_device* %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %57

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %33

57:                                               ; preds = %52, %33
  %58 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %59 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  br label %69

65:                                               ; preds = %57
  %66 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %67 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  br label %69

69:                                               ; preds = %65, %63
  %70 = phi i32 [ %64, %63 ], [ %68, %65 ]
  ret i32 %70
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @send_dux_commands(%struct.comedi_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
