; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsigma_private* }
%struct.usbduxsigma_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @usbduxsigma_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxsigma_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.usbduxsigma_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %14, align 8
  store %struct.usbduxsigma_private* %15, %struct.usbduxsigma_private** %8, align 8
  %16 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %8, align 8
  %17 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usbduxsigma_chans_to_interval(i32 %21)
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 1
  %25 = load i32, i32* @TRIG_NOW, align 4
  %26 = load i32, i32* @TRIG_INT, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @comedi_check_trigger_src(i32* %24, i32 %27)
  %29 = load i32, i32* %12, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %12, align 4
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 2
  %33 = load i32, i32* @TRIG_TIMER, align 4
  %34 = call i32 @comedi_check_trigger_src(i32* %32, i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %12, align 4
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 3
  %39 = load i32, i32* @TRIG_NOW, align 4
  %40 = call i32 @comedi_check_trigger_src(i32* %38, i32 %39)
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 4
  %45 = load i32, i32* @TRIG_COUNT, align 4
  %46 = call i32 @comedi_check_trigger_src(i32* %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %12, align 4
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 5
  %51 = load i32, i32* @TRIG_COUNT, align 4
  %52 = load i32, i32* @TRIG_NONE, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @comedi_check_trigger_src(i32* %50, i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %147

60:                                               ; preds = %3
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @comedi_check_trigger_is_unique(i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @comedi_check_trigger_is_unique(i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %60
  store i32 2, i32* %4, align 4
  br label %147

76:                                               ; preds = %60
  %77 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %78 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %77, i32 0, i32 9
  %79 = call i32 @comedi_check_trigger_arg_is(i32* %78, i32 0)
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %86 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %85, i32 0, i32 6
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 125000, %87
  %89 = call i32 @comedi_check_trigger_arg_min(i32* %86, i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %12, align 4
  br label %98

92:                                               ; preds = %76
  %93 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %94 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %93, i32 0, i32 6
  %95 = call i32 @comedi_check_trigger_arg_min(i32* %94, i32 1000000)
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %92, %84
  %99 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %99, i32 0, i32 8
  %101 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %102 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @comedi_check_trigger_arg_is(i32* %100, i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %12, align 4
  %107 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %108 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @TRIG_COUNT, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %98
  %113 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %114 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %113, i32 0, i32 7
  %115 = call i32 @comedi_check_trigger_arg_min(i32* %114, i32 1)
  %116 = load i32, i32* %12, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %12, align 4
  br label %124

118:                                              ; preds = %98
  %119 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %120 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %119, i32 0, i32 7
  %121 = call i32 @comedi_check_trigger_arg_is(i32* %120, i32 0)
  %122 = load i32, i32* %12, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %118, %112
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 3, i32* %4, align 4
  br label %147

128:                                              ; preds = %124
  %129 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %130 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 125000, i32 1000000
  %136 = call i32 @rounddown(i32 %131, i32 %135)
  store i32 %136, i32* %11, align 4
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 6
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @comedi_check_trigger_arg_is(i32* %138, i32 %139)
  %141 = load i32, i32* %12, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %128
  store i32 4, i32* %4, align 4
  br label %147

146:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %146, %145, %127, %75, %59
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @usbduxsigma_chans_to_interval(i32) #1

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @rounddown(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
