; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.ni_gpct* }
%struct.ni_gpct = type { i32 }
%struct.comedi_insn = type { i32 }

@COMEDI_COUNTER_ARMED = common dso_local global i32 0, align 4
@COMEDI_COUNTER_COUNTING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ni_gpct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.ni_gpct*, %struct.ni_gpct** %15, align 8
  store %struct.ni_gpct* %16, %struct.ni_gpct** %10, align 8
  %17 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %18 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %119 [
    i32 130, label %23
    i32 137, label %29
    i32 136, label %35
    i32 134, label %38
    i32 131, label %74
    i32 135, label %83
    i32 129, label %90
    i32 133, label %99
    i32 128, label %107
    i32 132, label %116
  ]

23:                                               ; preds = %4
  %24 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ni_tio_set_counter_mode(%struct.ni_gpct* %24, i32 %27)
  store i32 %28, i32* %13, align 4
  br label %122

29:                                               ; preds = %4
  %30 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ni_tio_arm(%struct.ni_gpct* %30, i32 1, i32 %33)
  store i32 %34, i32* %13, align 4
  br label %122

35:                                               ; preds = %4
  %36 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %37 = call i32 @ni_tio_arm(%struct.ni_gpct* %36, i32 0, i32 0)
  store i32 %37, i32* %13, align 4
  br label %122

38:                                               ; preds = %4
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @NITIO_SHARED_STATUS_REG(i32 %42)
  %44 = call i32 @ni_tio_read(%struct.ni_gpct* %41, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @GI_ARMED(i32 %46)
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %38
  %51 = load i32, i32* @COMEDI_COUNTER_ARMED, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @GI_COUNTING(i32 %57)
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load i32, i32* @COMEDI_COUNTER_COUNTING, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %50
  br label %68

68:                                               ; preds = %67, %38
  %69 = load i32, i32* @COMEDI_COUNTER_ARMED, align 4
  %70 = load i32, i32* @COMEDI_COUNTER_COUNTING, align 4
  %71 = or i32 %69, %70
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 %71, i32* %73, align 4
  br label %122

74:                                               ; preds = %4
  %75 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ni_tio_set_clock_src(%struct.ni_gpct* %75, i32 %78, i32 %81)
  store i32 %82, i32* %13, align 4
  br label %122

83:                                               ; preds = %4
  %84 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = call i32 @ni_tio_get_clock_src(%struct.ni_gpct* %84, i32* %86, i32* %88)
  store i32 %89, i32* %13, align 4
  br label %122

90:                                               ; preds = %4
  %91 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ni_tio_set_gate_src(%struct.ni_gpct* %91, i32 %94, i32 %97)
  store i32 %98, i32* %13, align 4
  br label %122

99:                                               ; preds = %4
  %100 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = call i32 @ni_tio_get_gate_src(%struct.ni_gpct* %100, i32 %103, i32* %105)
  store i32 %106, i32* %13, align 4
  br label %122

107:                                              ; preds = %4
  %108 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ni_tio_set_other_src(%struct.ni_gpct* %108, i32 %111, i32 %114)
  store i32 %115, i32* %13, align 4
  br label %122

116:                                              ; preds = %4
  %117 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %118 = call i32 @ni_tio_reset_count_and_disarm(%struct.ni_gpct* %117)
  br label %122

119:                                              ; preds = %4
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %133

122:                                              ; preds = %116, %107, %99, %90, %83, %74, %68, %35, %29, %23
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* %13, align 4
  br label %131

127:                                              ; preds = %122
  %128 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %129 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  br label %131

131:                                              ; preds = %127, %125
  %132 = phi i32 [ %126, %125 ], [ %130, %127 ]
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %131, %119
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @ni_tio_set_counter_mode(%struct.ni_gpct*, i32) #1

declare dso_local i32 @ni_tio_arm(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @ni_tio_read(%struct.ni_gpct*, i32) #1

declare dso_local i32 @NITIO_SHARED_STATUS_REG(i32) #1

declare dso_local i32 @GI_ARMED(i32) #1

declare dso_local i32 @GI_COUNTING(i32) #1

declare dso_local i32 @ni_tio_set_clock_src(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @ni_tio_get_clock_src(%struct.ni_gpct*, i32*, i32*) #1

declare dso_local i32 @ni_tio_set_gate_src(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @ni_tio_get_gate_src(%struct.ni_gpct*, i32, i32*) #1

declare dso_local i32 @ni_tio_set_other_src(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @ni_tio_reset_count_and_disarm(%struct.ni_gpct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
