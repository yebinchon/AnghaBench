; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci1710_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1710_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
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
  br label %167

49:                                               ; preds = %3
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @comedi_check_trigger_is_unique(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @comedi_check_trigger_is_unique(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @comedi_check_trigger_is_unique(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %49
  store i32 2, i32* %4, align 4
  br label %167

71:                                               ; preds = %49
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 5
  %74 = call i32 @comedi_check_trigger_arg_is(i32* %73, i32 0)
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %78 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %77, i32 0, i32 6
  %79 = call i32 @comedi_check_trigger_arg_is(i32* %78, i32 0)
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @TRIG_TIMER, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %71
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 7
  %90 = call i32 @comedi_check_trigger_arg_min(i32* %89, i32 10000)
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %99

93:                                               ; preds = %71
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 7
  %96 = call i32 @comedi_check_trigger_arg_is(i32* %95, i32 0)
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %93, %87
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 8
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @comedi_check_trigger_arg_is(i32* %101, i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @TRIG_COUNT, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %99
  %114 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %115 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %114, i32 0, i32 10
  %116 = call i32 @comedi_check_trigger_arg_min(i32* %115, i32 1)
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %8, align 4
  br label %125

119:                                              ; preds = %99
  %120 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %120, i32 0, i32 10
  %122 = call i32 @comedi_check_trigger_arg_is(i32* %121, i32 0)
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %119, %113
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 3, i32* %4, align 4
  br label %167

129:                                              ; preds = %125
  %130 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %131 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @TRIG_TIMER, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %129
  %136 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %137 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %9, align 4
  %139 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %140 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %143 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %142, i32 0, i32 11
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @comedi_8254_cascade_ns_to_timer(i32 %141, i32* %9, i32 %144)
  %146 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %147 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %146, i32 0, i32 7
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @comedi_check_trigger_arg_is(i32* %147, i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %135, %129
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 4, i32* %4, align 4
  br label %167

156:                                              ; preds = %152
  %157 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %158 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %159 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %160 = call i32 @pci1710_ai_check_chanlist(%struct.comedi_device* %157, %struct.comedi_subdevice* %158, %struct.comedi_cmd* %159)
  %161 = load i32, i32* %8, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  store i32 5, i32* %4, align 4
  br label %167

166:                                              ; preds = %156
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %165, %155, %128, %70, %48
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @comedi_8254_cascade_ns_to_timer(i32, i32*, i32) #1

declare dso_local i32 @pci1710_ai_check_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
