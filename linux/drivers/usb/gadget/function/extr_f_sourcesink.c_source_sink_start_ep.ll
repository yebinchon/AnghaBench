; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_source_sink_start_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_source_sink_start_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_sourcesink = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.usb_ep*, %struct.usb_ep*, %struct.usb_ep*, %struct.usb_ep*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@source_sink_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"start %s%s %s --> %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ISO-\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f_sourcesink*, i32, i32, i32)* @source_sink_start_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @source_sink_start_ep(%struct.f_sourcesink* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.f_sourcesink*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_ep*, align 8
  %11 = alloca %struct.usb_request*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.usb_composite_dev*, align 8
  store %struct.f_sourcesink* %0, %struct.f_sourcesink** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %72

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %44 [
    i32 128, label %21
    i32 129, label %35
  ]

21:                                               ; preds = %19
  %22 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %23 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %26 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  %29 = mul nsw i32 %24, %28
  %30 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %31 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = mul nsw i32 %29, %33
  store i32 %34, i32* %13, align 4
  br label %56

35:                                               ; preds = %19
  %36 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %37 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %40 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = mul nsw i32 %38, %42
  store i32 %43, i32* %13, align 4
  br label %56

44:                                               ; preds = %19
  %45 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %46 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 1023
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %54

50:                                               ; preds = %44
  %51 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %52 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  br label %54

54:                                               ; preds = %50, %49
  %55 = phi i32 [ 1023, %49 ], [ %53, %50 ]
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %54, %35, %21
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %61 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %60, i32 0, i32 9
  %62 = load %struct.usb_ep*, %struct.usb_ep** %61, align 8
  br label %67

63:                                               ; preds = %56
  %64 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %65 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %64, i32 0, i32 8
  %66 = load %struct.usb_ep*, %struct.usb_ep** %65, align 8
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi %struct.usb_ep* [ %62, %59 ], [ %66, %63 ]
  store %struct.usb_ep* %68, %struct.usb_ep** %10, align 8
  %69 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %70 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %14, align 4
  br label %91

72:                                               ; preds = %4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %77 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %76, i32 0, i32 7
  %78 = load %struct.usb_ep*, %struct.usb_ep** %77, align 8
  br label %83

79:                                               ; preds = %72
  %80 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %81 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %80, i32 0, i32 6
  %82 = load %struct.usb_ep*, %struct.usb_ep** %81, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi %struct.usb_ep* [ %78, %75 ], [ %82, %79 ]
  store %struct.usb_ep* %84, %struct.usb_ep** %10, align 8
  %85 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %86 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %14, align 4
  %88 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %89 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %83, %67
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %162, %91
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %165

96:                                               ; preds = %92
  %97 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call %struct.usb_request* @ss_alloc_ep_req(%struct.usb_ep* %97, i32 %98)
  store %struct.usb_request* %99, %struct.usb_request** %11, align 8
  %100 = load %struct.usb_request*, %struct.usb_request** %11, align 8
  %101 = icmp ne %struct.usb_request* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %167

105:                                              ; preds = %96
  %106 = load i32, i32* @source_sink_complete, align 4
  %107 = load %struct.usb_request*, %struct.usb_request** %11, align 8
  %108 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %113 = load %struct.usb_request*, %struct.usb_request** %11, align 8
  %114 = call i32 @reinit_write_data(%struct.usb_ep* %112, %struct.usb_request* %113)
  br label %129

115:                                              ; preds = %105
  %116 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %117 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 2
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.usb_request*, %struct.usb_request** %11, align 8
  %122 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.usb_request*, %struct.usb_request** %11, align 8
  %125 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @memset(i32 %123, i32 85, i32 %126)
  br label %128

128:                                              ; preds = %120, %115
  br label %129

129:                                              ; preds = %128, %111
  %130 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %131 = load %struct.usb_request*, %struct.usb_request** %11, align 8
  %132 = load i32, i32* @GFP_ATOMIC, align 4
  %133 = call i32 @usb_ep_queue(%struct.usb_ep* %130, %struct.usb_request* %131, i32 %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %161

136:                                              ; preds = %129
  %137 = load %struct.f_sourcesink*, %struct.f_sourcesink** %6, align 8
  %138 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %141, align 8
  store %struct.usb_composite_dev* %142, %struct.usb_composite_dev** %16, align 8
  %143 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %16, align 8
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %152 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %153 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @ERROR(%struct.usb_composite_dev* %143, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %147, i8* %151, i32 %154, i32 %155)
  %157 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %158 = load %struct.usb_request*, %struct.usb_request** %11, align 8
  %159 = call i32 @free_ep_req(%struct.usb_ep* %157, %struct.usb_request* %158)
  %160 = load i32, i32* %15, align 4
  store i32 %160, i32* %5, align 4
  br label %167

161:                                              ; preds = %129
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %92

165:                                              ; preds = %92
  %166 = load i32, i32* %15, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %165, %136, %102
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local %struct.usb_request* @ss_alloc_ep_req(%struct.usb_ep*, i32) #1

declare dso_local i32 @reinit_write_data(%struct.usb_ep*, %struct.usb_request*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usb_ep_queue(%struct.usb_ep*, %struct.usb_request*, i32) #1

declare dso_local i32 @ERROR(%struct.usb_composite_dev*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @free_ep_req(%struct.usb_ep*, %struct.usb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
