; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsigma_private* }
%struct.usbduxsigma_private = type { i32*, i32, i64 }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@USBDUXSIGMA_DA_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @usbduxsigma_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxsigma_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.usbduxsigma_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %15, align 8
  store %struct.usbduxsigma_private* %16, %struct.usbduxsigma_private** %10, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %22 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %25 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %30 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %92

34:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %82, %34
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %38 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %35
  %42 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %43 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 1, i32* %45, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %52 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %57 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 %55, i32* %59, align 4
  %60 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %61 = load i32, i32* @USBDUXSIGMA_DA_CMD, align 4
  %62 = call i32 @usbbuxsigma_send_cmd(%struct.comedi_device* %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %41
  %66 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %67 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %5, align 4
  br label %92

70:                                               ; preds = %41
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %77 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  br label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %35

85:                                               ; preds = %35
  %86 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %87 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %90 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %85, %65, %28
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usbbuxsigma_send_cmd(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
