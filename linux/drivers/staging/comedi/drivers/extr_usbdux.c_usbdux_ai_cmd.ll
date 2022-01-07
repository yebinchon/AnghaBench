; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbdux_private* }
%struct.usbdux_private = type { i32, i32*, i32, i32, i32, i32, i32, i32, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i64, i32* }

@EBUSY = common dso_local global i32 0, align 4
@USBDUX_CMD_MULT_AI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i64 0, align 8
@usbdux_ai_inttrig = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @usbdux_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.usbdux_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.usbdux_private*, %struct.usbdux_private** %13, align 8
  store %struct.usbdux_private* %14, %struct.usbdux_private** %5, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.comedi_cmd* %18, %struct.comedi_cmd** %6, align 8
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %25 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %24, i32 0, i32 5
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %28 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %165

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %35 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %33, i32* %37, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %69, %32
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %38
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CR_CHAN(i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @CR_RANGE(i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @create_adc_command(i32 %59, i32 %60)
  %62 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %63 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %61, i32* %68, align 4
  br label %69

69:                                               ; preds = %42
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %38

72:                                               ; preds = %38
  %73 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %74 = load i32, i32* @USBDUX_CMD_MULT_AI, align 4
  %75 = call i32 @send_dux_commands(%struct.comedi_device* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %165

79:                                               ; preds = %72
  %80 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %81 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %80, i32 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %79
  %85 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %86 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %85, i32 0, i32 2
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %93, %84
  %88 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %89 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %95 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %96, 2
  store i32 %97, i32* %95, align 8
  br label %87

98:                                               ; preds = %87
  %99 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %103 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 125000, %104
  %106 = sdiv i32 %101, %105
  %107 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %108 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  br label %118

109:                                              ; preds = %79
  %110 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %111 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %113 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sdiv i32 %114, 1000000
  %116 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %117 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %109, %98
  %119 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %120 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %121, 1
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %8, align 4
  br label %165

126:                                              ; preds = %118
  %127 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %128 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %131 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %133 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @TRIG_NOW, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %126
  %138 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %139 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %141 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %142 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %145 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @usbdux_submit_urbs(%struct.comedi_device* %140, i32 %143, i32 %146, i32 1)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %137
  %151 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %152 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %151, i32 0, i32 0
  store i32 0, i32* %152, align 8
  br label %165

153:                                              ; preds = %137
  %154 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %155 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %154, i32 0, i32 0
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  store i32* null, i32** %157, align 8
  br label %164

158:                                              ; preds = %126
  %159 = load i32*, i32** @usbdux_ai_inttrig, align 8
  %160 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %161 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %160, i32 0, i32 0
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  store i32* %159, i32** %163, align 8
  br label %164

164:                                              ; preds = %158, %153
  br label %165

165:                                              ; preds = %164, %150, %123, %78, %31
  %166 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %167 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %166, i32 0, i32 5
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load i32, i32* %8, align 4
  ret i32 %169
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @create_adc_command(i32, i32) #1

declare dso_local i32 @send_dux_commands(%struct.comedi_device*, i32) #1

declare dso_local i32 @usbdux_submit_urbs(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
