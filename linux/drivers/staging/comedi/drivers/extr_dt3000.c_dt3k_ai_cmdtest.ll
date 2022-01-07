; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.dt3k_boardtype* }
%struct.dt3k_boardtype = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@TRIG_NOW = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @dt3k_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt3k_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.dt3k_boardtype*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.dt3k_boardtype*, %struct.dt3k_boardtype** %12, align 8
  store %struct.dt3k_boardtype* %13, %struct.dt3k_boardtype** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 0
  %16 = load i64, i64* @TRIG_NOW, align 8
  %17 = call i32 @comedi_check_trigger_src(i64* %15, i64 %16)
  %18 = load i32, i32* %9, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %9, align 4
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 1
  %22 = load i64, i64* @TRIG_TIMER, align 8
  %23 = call i32 @comedi_check_trigger_src(i64* %21, i64 %22)
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 2
  %28 = load i64, i64* @TRIG_TIMER, align 8
  %29 = call i32 @comedi_check_trigger_src(i64* %27, i64 %28)
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 3
  %34 = load i64, i64* @TRIG_COUNT, align 8
  %35 = call i32 @comedi_check_trigger_src(i64* %33, i64 %34)
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 4
  %40 = load i64, i64* @TRIG_COUNT, align 8
  %41 = call i32 @comedi_check_trigger_src(i64* %39, i64 %40)
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %187

47:                                               ; preds = %3
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 5
  %50 = call i32 @comedi_check_trigger_arg_is(i32* %49, i32 0)
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %54 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TRIG_TIMER, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %47
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 6
  %61 = load %struct.dt3k_boardtype*, %struct.dt3k_boardtype** %8, align 8
  %62 = getelementptr inbounds %struct.dt3k_boardtype, %struct.dt3k_boardtype* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @comedi_check_trigger_arg_min(i32* %60, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 6
  %69 = call i32 @comedi_check_trigger_arg_max(i32* %68, i32 104856000)
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %58, %47
  %73 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %74 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @TRIG_TIMER, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 7
  %81 = load %struct.dt3k_boardtype*, %struct.dt3k_boardtype** %8, align 8
  %82 = getelementptr inbounds %struct.dt3k_boardtype, %struct.dt3k_boardtype* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @comedi_check_trigger_arg_min(i32* %80, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 7
  %89 = call i32 @comedi_check_trigger_arg_max(i32* %88, i32 52428000)
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %78, %72
  %93 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %94 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %93, i32 0, i32 8
  %95 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %96 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @comedi_check_trigger_arg_is(i32* %94, i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %102 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TRIG_COUNT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %92
  %107 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %108 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %107, i32 0, i32 10
  %109 = call i32 @comedi_check_trigger_arg_max(i32* %108, i32 16777215)
  %110 = load i32, i32* %9, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %9, align 4
  br label %118

112:                                              ; preds = %92
  %113 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %114 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %113, i32 0, i32 10
  %115 = call i32 @comedi_check_trigger_arg_is(i32* %114, i32 0)
  %116 = load i32, i32* %9, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %112, %106
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 3, i32* %4, align 4
  br label %187

122:                                              ; preds = %118
  %123 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %124 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TRIG_TIMER, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %122
  %129 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %130 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %10, align 4
  %132 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %133 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %132, i32 0, i32 11
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @dt3k_ns_to_timer(i32 100, i32* %10, i32 %134)
  %136 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %137 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %136, i32 0, i32 6
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @comedi_check_trigger_arg_is(i32* %137, i32 %138)
  %140 = load i32, i32* %9, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %128, %122
  %143 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %144 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @TRIG_TIMER, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %182

148:                                              ; preds = %142
  %149 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %150 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %10, align 4
  %152 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %153 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %152, i32 0, i32 11
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dt3k_ns_to_timer(i32 50, i32* %10, i32 %154)
  %156 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %157 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %156, i32 0, i32 7
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @comedi_check_trigger_arg_is(i32* %157, i32 %158)
  %160 = load i32, i32* %9, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %163 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @TRIG_TIMER, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %148
  %168 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %169 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %172 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 4
  %174 = mul i32 %170, %173
  store i32 %174, i32* %10, align 4
  %175 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %176 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %175, i32 0, i32 6
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @comedi_check_trigger_arg_min(i32* %176, i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %9, align 4
  br label %181

181:                                              ; preds = %167, %148
  br label %182

182:                                              ; preds = %181, %142
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 4, i32* %4, align 4
  br label %187

186:                                              ; preds = %182
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %186, %185, %121, %46
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @comedi_check_trigger_src(i64*, i64) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_max(i32*, i32) #1

declare dso_local i32 @dt3k_ns_to_timer(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
