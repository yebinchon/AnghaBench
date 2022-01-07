; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbdux_private* }
%struct.usbdux_private = type { i32*, i32, i64 }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@USBDUX_CMD_AO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @usbdux_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.usbdux_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
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
  %22 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %23 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32* %25, i32** %11, align 8
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %12, align 4
  %28 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %29 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %32 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  br label %80

36:                                               ; preds = %4
  %37 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %38 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = shl i32 %41, 6
  %43 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %44 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  store i32 %42, i32* %46, align 4
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %76, %36
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %47
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @cpu_to_le16(i32 %59)
  %61 = load i32*, i32** %11, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %63 = load i32, i32* @USBDUX_CMD_AO, align 4
  %64 = call i32 @send_dux_commands(%struct.comedi_device* %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %80

68:                                               ; preds = %53
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %71 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %47

79:                                               ; preds = %47
  br label %80

80:                                               ; preds = %79, %67, %35
  %81 = load %struct.usbdux_private*, %struct.usbdux_private** %9, align 8
  %82 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %12, align 4
  br label %92

88:                                               ; preds = %80
  %89 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %90 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  br label %92

92:                                               ; preds = %88, %86
  %93 = phi i32 [ %87, %86 ], [ %91, %88 ]
  ret i32 %93
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
