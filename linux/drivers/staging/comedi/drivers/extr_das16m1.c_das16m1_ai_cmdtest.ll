; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16m1.c_das16m1_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16m1.c_das16m1_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @das16m1_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16m1_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %11 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* @TRIG_NOW, align 4
  %13 = load i32, i32* @TRIG_EXT, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @comedi_check_trigger_src(i32* %11, i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %8, align 4
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 1
  %20 = load i32, i32* @TRIG_FOLLOW, align 4
  %21 = call i32 @comedi_check_trigger_src(i32* %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 2
  %26 = load i32, i32* @TRIG_TIMER, align 4
  %27 = load i32, i32* @TRIG_EXT, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @comedi_check_trigger_src(i32* %25, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 3
  %34 = load i32, i32* @TRIG_COUNT, align 4
  %35 = call i32 @comedi_check_trigger_src(i32* %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 4
  %40 = load i32, i32* @TRIG_COUNT, align 4
  %41 = load i32, i32* @TRIG_NONE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @comedi_check_trigger_src(i32* %39, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %179

49:                                               ; preds = %3
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @comedi_check_trigger_is_unique(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @comedi_check_trigger_is_unique(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @comedi_check_trigger_is_unique(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %49
  store i32 2, i32* %4, align 4
  br label %179

71:                                               ; preds = %49
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 5
  %74 = call i32 @comedi_check_trigger_arg_is(i32* %73, i32 0)
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %78 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @TRIG_FOLLOW, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %71
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %84 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 6
  %85 = call i32 @comedi_check_trigger_arg_is(i32* %84, i32 0)
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %82, %71
  %89 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @TRIG_TIMER, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %96 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %95, i32 0, i32 7
  %97 = call i32 @comedi_check_trigger_arg_min(i32* %96, i32 1000)
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %94, %88
  %101 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %102 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %101, i32 0, i32 8
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @comedi_check_trigger_arg_is(i32* %102, i32 %105)
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %110 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @TRIG_COUNT, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %100
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %116 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 10
  %117 = call i32 @comedi_check_trigger_arg_min(i32* %116, i32 1)
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %8, align 4
  br label %126

120:                                              ; preds = %100
  %121 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %122 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %121, i32 0, i32 10
  %123 = call i32 @comedi_check_trigger_arg_is(i32* %122, i32 0)
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %120, %114
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 3, i32* %4, align 4
  br label %179

130:                                              ; preds = %126
  %131 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %132 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @TRIG_TIMER, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %153

136:                                              ; preds = %130
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %9, align 4
  %140 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %141 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %144 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %143, i32 0, i32 12
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @comedi_8254_cascade_ns_to_timer(i32 %142, i32* %9, i32 %145)
  %147 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %148 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %147, i32 0, i32 7
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @comedi_check_trigger_arg_is(i32* %148, i32 %149)
  %151 = load i32, i32* %8, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %136, %130
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 4, i32* %4, align 4
  br label %179

157:                                              ; preds = %153
  %158 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %159 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %158, i32 0, i32 11
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %157
  %163 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %164 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = icmp ugt i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %169 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %170 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %171 = call i32 @das16m1_ai_check_chanlist(%struct.comedi_device* %168, %struct.comedi_subdevice* %169, %struct.comedi_cmd* %170)
  %172 = load i32, i32* %8, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %167, %162, %157
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  store i32 5, i32* %4, align 4
  br label %179

178:                                              ; preds = %174
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %178, %177, %156, %129, %70, %48
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @comedi_8254_cascade_ns_to_timer(i32, i32*, i32) #1

declare dso_local i32 @das16m1_ai_check_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
