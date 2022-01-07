; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.ni_gpct* }
%struct.ni_gpct = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ni_route_tables* }
%struct.ni_route_tables = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.ni_gpct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ni_route_tables*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.ni_gpct*, %struct.ni_gpct** %14, align 8
  store %struct.ni_gpct* %15, %struct.ni_gpct** %8, align 8
  %16 = load %struct.ni_gpct*, %struct.ni_gpct** %8, align 8
  %17 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ni_gpct*, %struct.ni_gpct** %8, align 8
  %20 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.ni_route_tables*, %struct.ni_route_tables** %22, align 8
  store %struct.ni_route_tables* %23, %struct.ni_route_tables** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 131, i32* %12, align 4
  %24 = load %struct.ni_gpct*, %struct.ni_gpct** %8, align 8
  %25 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i64 @ni_tio_counting_mode_registers_present(%struct.TYPE_2__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %12, align 4
  %31 = or i32 %30, 131
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 0
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @comedi_check_trigger_src(i32* %34, i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* @TRIG_FOLLOW, align 4
  %42 = or i32 %41, 131
  %43 = or i32 %42, 128
  %44 = call i32 @comedi_check_trigger_src(i32* %40, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 2
  %49 = call i32 @comedi_check_trigger_src(i32* %48, i32 131)
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 3
  %54 = load i32, i32* @TRIG_COUNT, align 4
  %55 = call i32 @comedi_check_trigger_src(i32* %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 4
  %60 = load i32, i32* @TRIG_NONE, align 4
  %61 = call i32 @comedi_check_trigger_src(i32* %59, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %178

67:                                               ; preds = %32
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @comedi_check_trigger_is_unique(i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  %74 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %75 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @comedi_check_trigger_is_unique(i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @comedi_check_trigger_is_unique(i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 129
  br i1 %89, label %90, label %101

90:                                               ; preds = %67
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @TRIG_FOLLOW, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  %99 = load i32, i32* %11, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %96, %90, %67
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 2, i32* %4, align 4
  br label %178

105:                                              ; preds = %101
  %106 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %107 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %116 [
    i32 129, label %109
    i32 130, label %109
    i32 128, label %109
    i32 131, label %115
  ]

109:                                              ; preds = %105, %105, %105
  %110 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %111 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %110, i32 0, i32 10
  %112 = call i32 @comedi_check_trigger_arg_is(i32* %111, i32 0)
  %113 = load i32, i32* %11, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %11, align 4
  br label %116

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %105, %115, %109
  %117 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %118 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 131
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %123 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %122, i32 0, i32 9
  %124 = call i32 @comedi_check_trigger_arg_is(i32* %123, i32 0)
  %125 = load i32, i32* %11, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %11, align 4
  br label %138

127:                                              ; preds = %116
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @CR_CHAN(i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @NI_CtrGate(i32 %132)
  %134 = load %struct.ni_route_tables*, %struct.ni_route_tables** %10, align 8
  %135 = call i32 @ni_check_trigger_arg(i32 %131, i32 %133, %struct.ni_route_tables* %134)
  %136 = load i32, i32* %11, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %127, %121
  %139 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %140 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 131
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %145 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %144, i32 0, i32 8
  %146 = call i32 @comedi_check_trigger_arg_is(i32* %145, i32 0)
  %147 = load i32, i32* %11, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %11, align 4
  br label %160

149:                                              ; preds = %138
  %150 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %151 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @CR_CHAN(i32 %152)
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @NI_CtrGate(i32 %154)
  %156 = load %struct.ni_route_tables*, %struct.ni_route_tables** %10, align 8
  %157 = call i32 @ni_check_trigger_arg(i32 %153, i32 %155, %struct.ni_route_tables* %156)
  %158 = load i32, i32* %11, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %149, %143
  %161 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %162 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %161, i32 0, i32 7
  %163 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %164 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @comedi_check_trigger_arg_is(i32* %162, i32 %165)
  %167 = load i32, i32* %11, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %11, align 4
  %169 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %170 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %169, i32 0, i32 5
  %171 = call i32 @comedi_check_trigger_arg_is(i32* %170, i32 0)
  %172 = load i32, i32* %11, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %160
  store i32 3, i32* %4, align 4
  br label %178

177:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %177, %176, %104, %66
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i64 @ni_tio_counting_mode_registers_present(%struct.TYPE_2__*) #1

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @ni_check_trigger_arg(i32, i32, %struct.ni_route_tables*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @NI_CtrGate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
