; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsigma_private* }
%struct.usbduxsigma_private = type { i32, i32, i32*, i32, i32, i32, i32, i32, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i64, i32* }

@USBBUXSIGMA_AD_CMD = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i64 0, align 8
@usbduxsigma_ai_inttrig = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @usbduxsigma_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxsigma_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.usbduxsigma_private*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %17, align 8
  store %struct.usbduxsigma_private* %18, %struct.usbduxsigma_private** %6, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.comedi_cmd* %22, %struct.comedi_cmd** %7, align 8
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %26 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %27 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %26, i32 0, i32 5
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %30 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @usbduxsigma_chans_to_interval(i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %38 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %14, align 4
  %43 = mul i32 125000, %42
  %44 = udiv i32 %41, %43
  %45 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %46 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %56

47:                                               ; preds = %2
  %48 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %49 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %52, 1000000
  %54 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %55 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %47, %33
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %72, %56
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @CR_CHAN(i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @create_adc_command(i32 %70, i8** %9, i8** %10)
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %57

75:                                               ; preds = %57
  %76 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %77 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %80 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %85 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32 %83, i32* %87, align 4
  %88 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %89 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  store i32 18, i32* %91, align 4
  %92 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %93 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  store i32 3, i32* %95, align 4
  %96 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %97 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  store i32 0, i32* %99, align 4
  %100 = load i8*, i8** %9, align 8
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %103 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 6
  store i32 %101, i32* %105, align 4
  %106 = load i8*, i8** %10, align 8
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %109 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 7
  store i32 %107, i32* %111, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %115 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 8
  store i32 %113, i32* %117, align 4
  %118 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %119 = load i32, i32* @USBBUXSIGMA_AD_CMD, align 4
  %120 = call i32 @usbbuxsigma_send_cmd(%struct.comedi_device* %118, i32 %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %75
  %124 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %125 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %124, i32 0, i32 5
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %3, align 4
  br label %174

128:                                              ; preds = %75
  %129 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %130 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %133 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 8
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @TRIG_NOW, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %164

139:                                              ; preds = %128
  %140 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %141 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %140, i32 0, i32 4
  store i32 1, i32* %141, align 4
  %142 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %143 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %144 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %147 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @usbduxsigma_submit_urbs(%struct.comedi_device* %142, i32 %145, i32 %148, i32 1)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %139
  %153 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %154 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %153, i32 0, i32 4
  store i32 0, i32* %154, align 4
  %155 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %156 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %155, i32 0, i32 5
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %3, align 4
  br label %174

159:                                              ; preds = %139
  %160 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %161 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %160, i32 0, i32 0
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  store i32* null, i32** %163, align 8
  br label %170

164:                                              ; preds = %128
  %165 = load i32*, i32** @usbduxsigma_ai_inttrig, align 8
  %166 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %167 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %166, i32 0, i32 0
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  store i32* %165, i32** %169, align 8
  br label %170

170:                                              ; preds = %164, %159
  %171 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %172 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %171, i32 0, i32 5
  %173 = call i32 @mutex_unlock(i32* %172)
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %170, %152, %123
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usbduxsigma_chans_to_interval(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @create_adc_command(i32, i8**, i8**) #1

declare dso_local i32 @usbbuxsigma_send_cmd(%struct.comedi_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usbduxsigma_submit_urbs(%struct.comedi_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
