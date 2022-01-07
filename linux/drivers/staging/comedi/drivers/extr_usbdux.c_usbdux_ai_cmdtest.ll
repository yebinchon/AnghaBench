; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbdux_private* }
%struct.usbdux_private = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @usbdux_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.usbdux_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.usbdux_private*, %struct.usbdux_private** %14, align 8
  store %struct.usbdux_private* %15, %struct.usbdux_private** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* @TRIG_NOW, align 4
  %19 = load i32, i32* @TRIG_INT, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @comedi_check_trigger_src(i32* %17, i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* @TRIG_TIMER, align 4
  %27 = call i32 @comedi_check_trigger_src(i32* %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 2
  %32 = load i32, i32* @TRIG_NOW, align 4
  %33 = call i32 @comedi_check_trigger_src(i32* %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 3
  %38 = load i32, i32* @TRIG_COUNT, align 4
  %39 = call i32 @comedi_check_trigger_src(i32* %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 4
  %44 = load i32, i32* @TRIG_COUNT, align 4
  %45 = load i32, i32* @TRIG_NONE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @comedi_check_trigger_src(i32* %43, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %165

53:                                               ; preds = %3
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @comedi_check_trigger_is_unique(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @comedi_check_trigger_is_unique(i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  store i32 2, i32* %4, align 4
  br label %165

69:                                               ; preds = %53
  %70 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %71 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %70, i32 0, i32 5
  %72 = call i32 @comedi_check_trigger_arg_is(i32* %71, i32 0)
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TRIG_FOLLOW, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %69
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %82 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 6
  %83 = call i32 @comedi_check_trigger_arg_is(i32* %82, i32 0)
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %80, %69
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @TRIG_TIMER, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %134

92:                                               ; preds = %86
  store i32 1000000, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %11, align 4
  %94 = load %struct.usbdux_private*, %struct.usbdux_private** %8, align 8
  %95 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %92
  store i32 1, i32* %12, align 4
  br label %99

99:                                               ; preds = %105, %98
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %102 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* %12, align 4
  %107 = mul nsw i32 %106, 2
  store i32 %107, i32* %12, align 4
  br label %99

108:                                              ; preds = %99
  %109 = load i32, i32* %10, align 4
  %110 = udiv i32 %109, 8
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %12, align 4
  %113 = mul i32 %111, %112
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %108, %92
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %116 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 6
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @comedi_check_trigger_arg_min(i32* %116, i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %9, align 4
  %121 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %122 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = udiv i32 %123, %124
  %126 = load i32, i32* %10, align 4
  %127 = mul i32 %125, %126
  store i32 %127, i32* %10, align 4
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 6
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @comedi_check_trigger_arg_is(i32* %129, i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %114, %86
  %135 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %136 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %135, i32 0, i32 8
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @comedi_check_trigger_arg_is(i32* %136, i32 %139)
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %9, align 4
  %143 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %144 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @TRIG_COUNT, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %134
  %149 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %150 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %149, i32 0, i32 9
  %151 = call i32 @comedi_check_trigger_arg_min(i32* %150, i32 1)
  %152 = load i32, i32* %9, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %9, align 4
  br label %160

154:                                              ; preds = %134
  %155 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %156 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %155, i32 0, i32 9
  %157 = call i32 @comedi_check_trigger_arg_is(i32* %156, i32 0)
  %158 = load i32, i32* %9, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %154, %148
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 3, i32* %4, align 4
  br label %165

164:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %163, %68, %52
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
