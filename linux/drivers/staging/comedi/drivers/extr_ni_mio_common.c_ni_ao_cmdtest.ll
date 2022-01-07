; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private*, %struct.ni_board_struct* }
%struct.ni_private = type { i32, i32 }
%struct.ni_board_struct = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@NI_AO_StartTrigger = common dso_local global i32 0, align 4
@NI_AO_SampleClock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @ni_ao_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ao_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.ni_board_struct*, align 8
  %9 = alloca %struct.ni_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.ni_board_struct*, %struct.ni_board_struct** %13, align 8
  store %struct.ni_board_struct* %14, %struct.ni_board_struct** %8, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load %struct.ni_private*, %struct.ni_private** %16, align 8
  store %struct.ni_private* %17, %struct.ni_private** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 0
  %20 = call i32 @comedi_check_trigger_src(i32* %19, i32 129)
  %21 = load i32, i32* %10, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %10, align 4
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 1
  %25 = load i32, i32* @TRIG_TIMER, align 4
  %26 = or i32 %25, 129
  %27 = call i32 @comedi_check_trigger_src(i32* %24, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 2
  %32 = load i32, i32* @TRIG_NOW, align 4
  %33 = call i32 @comedi_check_trigger_src(i32* %31, i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 3
  %38 = load i32, i32* @TRIG_COUNT, align 4
  %39 = call i32 @comedi_check_trigger_src(i32* %37, i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 4
  %44 = load i32, i32* @TRIG_COUNT, align 4
  %45 = load i32, i32* @TRIG_NONE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @comedi_check_trigger_src(i32* %43, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %189

53:                                               ; preds = %3
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @comedi_check_trigger_is_unique(i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @comedi_check_trigger_is_unique(i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %67 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @comedi_check_trigger_is_unique(i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %53
  store i32 2, i32* %4, align 4
  br label %189

75:                                               ; preds = %53
  %76 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %77 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %96 [
    i32 128, label %79
    i32 129, label %85
  ]

79:                                               ; preds = %75
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 5
  %82 = call i32 @comedi_check_trigger_arg_is(i32* %81, i32 0)
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %96

85:                                               ; preds = %75
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @CR_CHAN(i32 %88)
  %90 = load i32, i32* @NI_AO_StartTrigger, align 4
  %91 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %92 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %91, i32 0, i32 1
  %93 = call i32 @ni_check_trigger_arg_roffs(i32 %89, i32 %90, i32* %92, i32 1)
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %75, %85, %79
  %97 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %98 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TRIG_TIMER, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %96
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 6
  %105 = load %struct.ni_board_struct*, %struct.ni_board_struct** %8, align 8
  %106 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @comedi_check_trigger_arg_min(i32* %104, i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %112 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %111, i32 0, i32 6
  %113 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %114 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %115, 16777215
  %117 = call i32 @comedi_check_trigger_arg_max(i32* %112, i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  br label %131

120:                                              ; preds = %96
  %121 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %122 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @CR_CHAN(i32 %123)
  %125 = load i32, i32* @NI_AO_SampleClock, align 4
  %126 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %127 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %126, i32 0, i32 1
  %128 = call i32 @ni_check_trigger_arg(i32 %124, i32 %125, i32* %127)
  %129 = load i32, i32* %10, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %120, %102
  %132 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %133 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %132, i32 0, i32 7
  %134 = call i32 @comedi_check_trigger_arg_is(i32* %133, i32 0)
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %10, align 4
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 8
  %139 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %140 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %139, i32 0, i32 11
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @comedi_check_trigger_arg_is(i32* %138, i32 %141)
  %143 = load i32, i32* %10, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %10, align 4
  %145 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %146 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %145, i32 0, i32 9
  %147 = call i32 @comedi_check_trigger_arg_max(i32* %146, i32 16777215)
  %148 = load i32, i32* %10, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %131
  store i32 3, i32* %4, align 4
  br label %189

153:                                              ; preds = %131
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @TRIG_TIMER, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %184

159:                                              ; preds = %153
  %160 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %161 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %11, align 4
  %163 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %164 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %165 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %166 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %169 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %168, i32 0, i32 10
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ni_ns_to_timer(%struct.comedi_device* %164, i32 %167, i32 %170)
  %172 = call i32 @ni_timer_to_ns(%struct.comedi_device* %163, i32 %171)
  %173 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %174 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %173, i32 0, i32 6
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %177 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %175, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %159
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %180, %159
  br label %184

184:                                              ; preds = %183, %153
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  store i32 4, i32* %4, align 4
  br label %189

188:                                              ; preds = %184
  store i32 0, i32* %4, align 4
  br label %189

189:                                              ; preds = %188, %187, %152, %74, %52
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @ni_check_trigger_arg_roffs(i32, i32, i32*, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_max(i32*, i32) #1

declare dso_local i32 @ni_check_trigger_arg(i32, i32, i32*) #1

declare dso_local i32 @ni_timer_to_ns(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_ns_to_timer(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
