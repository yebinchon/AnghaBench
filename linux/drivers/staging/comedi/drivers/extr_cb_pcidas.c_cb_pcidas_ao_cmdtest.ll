; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.cb_pcidas_private*, %struct.cb_pcidas_board* }
%struct.cb_pcidas_private = type { i32 }
%struct.cb_pcidas_board = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@TRIG_INT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @cb_pcidas_ao_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ao_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.cb_pcidas_board*, align 8
  %9 = alloca %struct.cb_pcidas_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.cb_pcidas_board*, %struct.cb_pcidas_board** %13, align 8
  store %struct.cb_pcidas_board* %14, %struct.cb_pcidas_board** %8, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %16, align 8
  store %struct.cb_pcidas_private* %17, %struct.cb_pcidas_private** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* @TRIG_INT, align 4
  %21 = call i32 @comedi_check_trigger_src(i32* %19, i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %10, align 4
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* @TRIG_TIMER, align 4
  %27 = load i32, i32* @TRIG_EXT, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @comedi_check_trigger_src(i32* %25, i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 2
  %34 = load i32, i32* @TRIG_NOW, align 4
  %35 = call i32 @comedi_check_trigger_src(i32* %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 3
  %40 = load i32, i32* @TRIG_COUNT, align 4
  %41 = call i32 @comedi_check_trigger_src(i32* %39, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 4
  %46 = load i32, i32* @TRIG_COUNT, align 4
  %47 = load i32, i32* @TRIG_NONE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @comedi_check_trigger_src(i32* %45, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %170

55:                                               ; preds = %3
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @comedi_check_trigger_is_unique(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @comedi_check_trigger_is_unique(i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  store i32 2, i32* %4, align 4
  br label %170

71:                                               ; preds = %55
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 5
  %74 = call i32 @comedi_check_trigger_arg_is(i32* %73, i32 0)
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %78 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @TRIG_TIMER, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %71
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %84 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 6
  %85 = load %struct.cb_pcidas_board*, %struct.cb_pcidas_board** %8, align 8
  %86 = getelementptr inbounds %struct.cb_pcidas_board, %struct.cb_pcidas_board* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @comedi_check_trigger_arg_min(i32* %84, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %82, %71
  %92 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %92, i32 0, i32 7
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @comedi_check_trigger_arg_is(i32* %93, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TRIG_COUNT, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %91
  %106 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %107 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %106, i32 0, i32 9
  %108 = call i32 @comedi_check_trigger_arg_min(i32* %107, i32 1)
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  br label %117

111:                                              ; preds = %91
  %112 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %112, i32 0, i32 9
  %114 = call i32 @comedi_check_trigger_arg_is(i32* %113, i32 0)
  %115 = load i32, i32* %10, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %111, %105
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 3, i32* %4, align 4
  br label %170

121:                                              ; preds = %117
  %122 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %123 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @TRIG_TIMER, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %144

127:                                              ; preds = %121
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %11, align 4
  %131 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %132 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 11
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @comedi_8254_cascade_ns_to_timer(i32 %133, i32* %11, i32 %136)
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 6
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @comedi_check_trigger_arg_is(i32* %139, i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %127, %121
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 4, i32* %4, align 4
  br label %170

148:                                              ; preds = %144
  %149 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %150 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %149, i32 0, i32 10
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %148
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 8
  %157 = icmp ugt i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %160 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %161 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %162 = call i32 @cb_pcidas_ao_check_chanlist(%struct.comedi_device* %159, %struct.comedi_subdevice* %160, %struct.comedi_cmd* %161)
  %163 = load i32, i32* %10, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %10, align 4
  br label %165

165:                                              ; preds = %158, %153, %148
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 5, i32* %4, align 4
  br label %170

169:                                              ; preds = %165
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %169, %168, %147, %120, %70, %54
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @comedi_8254_cascade_ns_to_timer(i32, i32*, i32) #1

declare dso_local i32 @cb_pcidas_ao_check_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
