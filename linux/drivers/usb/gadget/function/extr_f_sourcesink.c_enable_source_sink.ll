; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_enable_source_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_enable_source_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_composite_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.f_sourcesink = type { i32, %struct.TYPE_4__, %struct.usb_ep*, %struct.usb_ep*, %struct.usb_ep*, %struct.usb_ep* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_ep = type { %struct.f_sourcesink* }

@.str = private unnamed_addr constant [25 x i8] c"%s enabled, alt intf %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_composite_dev*, %struct.f_sourcesink*, i32)* @enable_source_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_source_sink(%struct.usb_composite_dev* %0, %struct.f_sourcesink* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_composite_dev*, align 8
  %6 = alloca %struct.f_sourcesink*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_ep*, align 8
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %5, align 8
  store %struct.f_sourcesink* %1, %struct.f_sourcesink** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %12 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %17 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %16, i32 0, i32 5
  %18 = load %struct.usb_ep*, %struct.usb_ep** %17, align 8
  store %struct.usb_ep* %18, %struct.usb_ep** %10, align 8
  %19 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %20 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %23 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %22, i32 0, i32 1
  %24 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %25 = call i32 @config_ep_by_speed(%struct.TYPE_3__* %21, %struct.TYPE_4__* %23, %struct.usb_ep* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %187

30:                                               ; preds = %3
  %31 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %32 = call i32 @usb_ep_enable(%struct.usb_ep* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %187

37:                                               ; preds = %30
  %38 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %39 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %40 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %39, i32 0, i32 0
  store %struct.f_sourcesink* %38, %struct.f_sourcesink** %40, align 8
  %41 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @source_sink_start_ep(%struct.f_sourcesink* %41, i32 1, i32 0, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %84, %73, %67, %46
  %48 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %49 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %48, i32 0, i32 5
  %50 = load %struct.usb_ep*, %struct.usb_ep** %49, align 8
  store %struct.usb_ep* %50, %struct.usb_ep** %10, align 8
  %51 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %52 = call i32 @usb_ep_disable(%struct.usb_ep* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %187

54:                                               ; preds = %37
  %55 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %56 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %55, i32 0, i32 4
  %57 = load %struct.usb_ep*, %struct.usb_ep** %56, align 8
  store %struct.usb_ep* %57, %struct.usb_ep** %10, align 8
  %58 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %59 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %62 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %61, i32 0, i32 1
  %63 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %64 = call i32 @config_ep_by_speed(%struct.TYPE_3__* %60, %struct.TYPE_4__* %62, %struct.usb_ep* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %47

68:                                               ; preds = %54
  %69 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %70 = call i32 @usb_ep_enable(%struct.usb_ep* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %47

74:                                               ; preds = %68
  %75 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %76 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %77 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %76, i32 0, i32 0
  store %struct.f_sourcesink* %75, %struct.f_sourcesink** %77, align 8
  %78 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @source_sink_start_ep(%struct.f_sourcesink* %78, i32 0, i32 0, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %136, %116, %110, %83
  %85 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %86 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %85, i32 0, i32 4
  %87 = load %struct.usb_ep*, %struct.usb_ep** %86, align 8
  store %struct.usb_ep* %87, %struct.usb_ep** %10, align 8
  %88 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %89 = call i32 @usb_ep_disable(%struct.usb_ep* %88)
  br label %47

90:                                               ; preds = %74
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %175

94:                                               ; preds = %90
  %95 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %96 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %95, i32 0, i32 3
  %97 = load %struct.usb_ep*, %struct.usb_ep** %96, align 8
  store %struct.usb_ep* %97, %struct.usb_ep** %10, align 8
  %98 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %99 = icmp ne %struct.usb_ep* %98, null
  br i1 %99, label %100, label %138

100:                                              ; preds = %94
  %101 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %102 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %105 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %104, i32 0, i32 1
  %106 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %107 = call i32 @config_ep_by_speed(%struct.TYPE_3__* %103, %struct.TYPE_4__* %105, %struct.usb_ep* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  br label %84

111:                                              ; preds = %100
  %112 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %113 = call i32 @usb_ep_enable(%struct.usb_ep* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %84

117:                                              ; preds = %111
  %118 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %119 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %120 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %119, i32 0, i32 0
  store %struct.f_sourcesink* %118, %struct.f_sourcesink** %120, align 8
  %121 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @source_sink_start_ep(%struct.f_sourcesink* %121, i32 1, i32 1, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %170, %160, %154, %126
  %128 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %129 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %128, i32 0, i32 3
  %130 = load %struct.usb_ep*, %struct.usb_ep** %129, align 8
  store %struct.usb_ep* %130, %struct.usb_ep** %10, align 8
  %131 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %132 = icmp ne %struct.usb_ep* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %135 = call i32 @usb_ep_disable(%struct.usb_ep* %134)
  br label %136

136:                                              ; preds = %133, %127
  br label %84

137:                                              ; preds = %117
  br label %138

138:                                              ; preds = %137, %94
  %139 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %140 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %139, i32 0, i32 2
  %141 = load %struct.usb_ep*, %struct.usb_ep** %140, align 8
  store %struct.usb_ep* %141, %struct.usb_ep** %10, align 8
  %142 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %143 = icmp ne %struct.usb_ep* %142, null
  br i1 %143, label %144, label %174

144:                                              ; preds = %138
  %145 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %146 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %145, i32 0, i32 0
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %149 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %148, i32 0, i32 1
  %150 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %151 = call i32 @config_ep_by_speed(%struct.TYPE_3__* %147, %struct.TYPE_4__* %149, %struct.usb_ep* %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  br label %127

155:                                              ; preds = %144
  %156 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %157 = call i32 @usb_ep_enable(%struct.usb_ep* %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %127

161:                                              ; preds = %155
  %162 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %163 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %164 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %163, i32 0, i32 0
  store %struct.f_sourcesink* %162, %struct.f_sourcesink** %164, align 8
  %165 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @source_sink_start_ep(%struct.f_sourcesink* %165, i32 0, i32 1, i32 %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %161
  %171 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %172 = call i32 @usb_ep_disable(%struct.usb_ep* %171)
  br label %127

173:                                              ; preds = %161
  br label %174

174:                                              ; preds = %173, %138
  br label %175

175:                                              ; preds = %174, %93
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %178 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %180 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %181 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @DBG(%struct.usb_composite_dev* %179, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %183, i32 %184)
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %175, %47, %35, %28
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @config_ep_by_speed(%struct.TYPE_3__*, %struct.TYPE_4__*, %struct.usb_ep*) #1

declare dso_local i32 @usb_ep_enable(%struct.usb_ep*) #1

declare dso_local i32 @source_sink_start_ep(%struct.f_sourcesink*, i32, i32, i32) #1

declare dso_local i32 @usb_ep_disable(%struct.usb_ep*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
