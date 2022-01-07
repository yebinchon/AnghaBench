; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbdux_private* }
%struct.usbdux_private = type { i32, i32*, i32*, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@USBDUX_CMD_SINGLE_AI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @usbdux_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.usbdux_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load %struct.usbdux_private*, %struct.usbdux_private** %16, align 8
  store %struct.usbdux_private* %17, %struct.usbdux_private** %9, align 8
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CR_CHAN(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CR_RANGE(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %13, align 4
  %28 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %29 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %32 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  br label %89

36:                                               ; preds = %4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @create_adc_command(i32 %37, i32 %38)
  %40 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %41 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %45 = load i32, i32* @USBDUX_CMD_SINGLE_AI, align 4
  %46 = call i32 @send_dux_commands(%struct.comedi_device* %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %89

50:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %85, %50
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %54 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %51
  %58 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %59 = load i32, i32* @USBDUX_CMD_SINGLE_AI, align 4
  %60 = call i32 @receive_dux_commands(%struct.comedi_device* %58, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %89

64:                                               ; preds = %57
  %65 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %66 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le16_to_cpu(i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @comedi_range_is_bipolar(%struct.comedi_subdevice* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %76, i32 %77)
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %75, %64
  %80 = load i32, i32* %12, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %51

88:                                               ; preds = %51
  br label %89

89:                                               ; preds = %88, %63, %49, %35
  %90 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %91 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %13, align 4
  br label %101

97:                                               ; preds = %89
  %98 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %99 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  br label %101

101:                                              ; preds = %97, %95
  %102 = phi i32 [ %96, %95 ], [ %100, %97 ]
  ret i32 %102
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @create_adc_command(i32, i32) #1

declare dso_local i32 @send_dux_commands(%struct.comedi_device*, i32) #1

declare dso_local i32 @receive_dux_commands(%struct.comedi_device*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
