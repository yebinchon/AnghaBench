; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsigma_private* }
%struct.usbduxsigma_private = type { i32*, i32, i64, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@USBDUXSIGMA_SINGLE_AD_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @usbduxsigma_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxsigma_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.usbduxsigma_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %19, align 8
  store %struct.usbduxsigma_private* %20, %struct.usbduxsigma_private** %10, align 8
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CR_CHAN(i32 %23)
  store i32 %24, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %25 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %26 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %29 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %34 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %126

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @create_adc_command(i32 %39, i8** %12, i8** %13)
  %41 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %42 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 22, i32* %44, align 4
  %45 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %46 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 128, i32* %48, align 4
  %49 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %50 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32 0, i32* %52, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %56 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32 %54, i32* %58, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %62 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  store i32 %60, i32* %64, align 4
  %65 = load i8*, i8** %14, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %68 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  store i32 %66, i32* %70, align 4
  %71 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %72 = load i32, i32* @USBDUXSIGMA_SINGLE_AD_CMD, align 4
  %73 = call i32 @usbbuxsigma_send_cmd(%struct.comedi_device* %71, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %38
  %77 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %78 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %5, align 4
  br label %126

81:                                               ; preds = %38
  store i32 0, i32* %16, align 4
  br label %82

82:                                               ; preds = %116, %81
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %85 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %119

88:                                               ; preds = %82
  %89 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %90 = load i32, i32* @USBDUXSIGMA_SINGLE_AD_CMD, align 4
  %91 = call i32 @usbduxsigma_receive_cmd(%struct.comedi_device* %89, i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %96 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %95, i32 0, i32 1
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %5, align 4
  br label %126

99:                                               ; preds = %88
  %100 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %101 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  %104 = inttoptr i64 %103 to i32*
  %105 = call i32 @get_unaligned(i32* %104)
  %106 = call i32 @be32_to_cpu(i32 %105)
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = and i32 %107, 16777215
  store i32 %108, i32* %17, align 4
  %109 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %109, i32 %110)
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %99
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %16, align 4
  br label %82

119:                                              ; preds = %82
  %120 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %10, align 8
  %121 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %120, i32 0, i32 1
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %124 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %119, %94, %76, %32
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @create_adc_command(i32, i8**, i8**) #1

declare dso_local i32 @usbbuxsigma_send_cmd(%struct.comedi_device*, i32) #1

declare dso_local i32 @usbduxsigma_receive_cmd(%struct.comedi_device*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
