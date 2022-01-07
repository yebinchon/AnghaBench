; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorinput/extr_visorinput.c_visorinput_channel_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorinput/extr_visorinput.c_visorinput_channel_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visor_device = type { i32, i32 }
%struct.visor_inputreport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.input_dev = type { i32 }
%struct.visorinput_devdata = type { %struct.input_dev* }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.visor_device*)* @visorinput_channel_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @visorinput_channel_interrupt(%struct.visor_device* %0) #0 {
  %2 = alloca %struct.visor_device*, align 8
  %3 = alloca %struct.visor_inputreport, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.visorinput_devdata*, align 8
  store %struct.visor_device* %0, %struct.visor_device** %2, align 8
  %12 = load %struct.visor_device*, %struct.visor_device** %2, align 8
  %13 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %12, i32 0, i32 1
  %14 = call %struct.visorinput_devdata* @dev_get_drvdata(i32* %13)
  store %struct.visorinput_devdata* %14, %struct.visorinput_devdata** %11, align 8
  %15 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %11, align 8
  %16 = icmp ne %struct.visorinput_devdata* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %173

18:                                               ; preds = %1
  %19 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %11, align 8
  %20 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %19, i32 0, i32 0
  %21 = load %struct.input_dev*, %struct.input_dev** %20, align 8
  store %struct.input_dev* %21, %struct.input_dev** %6, align 8
  br label %22

22:                                               ; preds = %172, %18
  %23 = load %struct.visor_device*, %struct.visor_device** %2, align 8
  %24 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @visorchannel_signalremove(i32 %25, i32 0, %struct.visor_inputreport* %3)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %173

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.visor_inputreport, %struct.visor_inputreport* %3, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @scancode_to_keycode(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = getelementptr inbounds %struct.visor_inputreport, %struct.visor_inputreport* %3, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %171 [
    i32 138, label %38
    i32 136, label %44
    i32 137, label %50
    i32 131, label %61
    i32 128, label %68
    i32 133, label %85
    i32 132, label %99
    i32 135, label %113
    i32 134, label %132
    i32 130, label %159
    i32 129, label %165
  ]

38:                                               ; preds = %29
  %39 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @input_report_key(%struct.input_dev* %39, i32 %40, i32 1)
  %42 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %43 = call i32 @input_sync(%struct.input_dev* %42)
  br label %172

44:                                               ; preds = %29
  %45 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @input_report_key(%struct.input_dev* %45, i32 %46, i32 0)
  %48 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %49 = call i32 @input_sync(%struct.input_dev* %48)
  br label %172

50:                                               ; preds = %29
  %51 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @input_report_key(%struct.input_dev* %51, i32 %52, i32 1)
  %54 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %55 = call i32 @input_sync(%struct.input_dev* %54)
  %56 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @input_report_key(%struct.input_dev* %56, i32 %57, i32 0)
  %59 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %60 = call i32 @input_sync(%struct.input_dev* %59)
  br label %172

61:                                               ; preds = %29
  %62 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %63 = load i32, i32* %5, align 4
  %64 = getelementptr inbounds %struct.visor_inputreport, %struct.visor_inputreport* %3, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @handle_locking_key(%struct.input_dev* %62, i32 %63, i32 %66)
  br label %172

68:                                               ; preds = %29
  %69 = getelementptr inbounds %struct.visor_inputreport, %struct.visor_inputreport* %3, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  %72 = getelementptr inbounds %struct.visor_inputreport, %struct.visor_inputreport* %3, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %76 = load i32, i32* @ABS_X, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @input_report_abs(%struct.input_dev* %75, i32 %76, i32 %77)
  %79 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %80 = load i32, i32* @ABS_Y, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @input_report_abs(%struct.input_dev* %79, i32 %80, i32 %81)
  %83 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %84 = call i32 @input_sync(%struct.input_dev* %83)
  br label %172

85:                                               ; preds = %29
  %86 = getelementptr inbounds %struct.visor_inputreport, %struct.visor_inputreport* %3, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @calc_button(i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %172

93:                                               ; preds = %85
  %94 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @input_report_key(%struct.input_dev* %94, i32 %95, i32 1)
  %97 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %98 = call i32 @input_sync(%struct.input_dev* %97)
  br label %172

99:                                               ; preds = %29
  %100 = getelementptr inbounds %struct.visor_inputreport, %struct.visor_inputreport* %3, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @calc_button(i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %172

107:                                              ; preds = %99
  %108 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @input_report_key(%struct.input_dev* %108, i32 %109, i32 0)
  %111 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %112 = call i32 @input_sync(%struct.input_dev* %111)
  br label %172

113:                                              ; preds = %29
  %114 = getelementptr inbounds %struct.visor_inputreport, %struct.visor_inputreport* %3, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @calc_button(i32 %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %172

121:                                              ; preds = %113
  %122 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @input_report_key(%struct.input_dev* %122, i32 %123, i32 1)
  %125 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %126 = call i32 @input_sync(%struct.input_dev* %125)
  %127 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @input_report_key(%struct.input_dev* %127, i32 %128, i32 0)
  %130 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %131 = call i32 @input_sync(%struct.input_dev* %130)
  br label %172

132:                                              ; preds = %29
  %133 = getelementptr inbounds %struct.visor_inputreport, %struct.visor_inputreport* %3, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @calc_button(i32 %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %172

140:                                              ; preds = %132
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %155, %140
  %142 = load i32, i32* %10, align 4
  %143 = icmp slt i32 %142, 2
  br i1 %143, label %144, label %158

144:                                              ; preds = %141
  %145 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @input_report_key(%struct.input_dev* %145, i32 %146, i32 1)
  %148 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %149 = call i32 @input_sync(%struct.input_dev* %148)
  %150 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @input_report_key(%struct.input_dev* %150, i32 %151, i32 0)
  %153 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %154 = call i32 @input_sync(%struct.input_dev* %153)
  br label %155

155:                                              ; preds = %144
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %141

158:                                              ; preds = %141
  br label %172

159:                                              ; preds = %29
  %160 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %161 = load i32, i32* @REL_WHEEL, align 4
  %162 = call i32 @input_report_rel(%struct.input_dev* %160, i32 %161, i32 1)
  %163 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %164 = call i32 @input_sync(%struct.input_dev* %163)
  br label %172

165:                                              ; preds = %29
  %166 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %167 = load i32, i32* @REL_WHEEL, align 4
  %168 = call i32 @input_report_rel(%struct.input_dev* %166, i32 %167, i32 -1)
  %169 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %170 = call i32 @input_sync(%struct.input_dev* %169)
  br label %172

171:                                              ; preds = %29
  br label %172

172:                                              ; preds = %171, %165, %159, %158, %139, %121, %120, %107, %106, %93, %92, %68, %61, %50, %44, %38
  br label %22

173:                                              ; preds = %17, %22
  ret void
}

declare dso_local %struct.visorinput_devdata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @visorchannel_signalremove(i32, i32, %struct.visor_inputreport*) #1

declare dso_local i32 @scancode_to_keycode(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @handle_locking_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @calc_button(i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
