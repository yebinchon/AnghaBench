; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_set_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { i32 }
%struct.f_midi = type { i32, i32, %struct.TYPE_5__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.usb_request = type { i32*, i8*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@f_midi_complete = common dso_local global i8* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: couldn't enqueue request: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @f_midi_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_midi_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_midi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_request*, align 8
  %12 = alloca %struct.usb_request*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %14 = call %struct.f_midi* @func_to_midi(%struct.usb_function* %13)
  store %struct.f_midi* %14, %struct.f_midi** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %17 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %135

21:                                               ; preds = %3
  %22 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %23 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %24 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %25 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %24, i32 0, i32 5
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call i32 @f_midi_start_ep(%struct.f_midi* %22, %struct.usb_function* %23, %struct.TYPE_5__* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %135

32:                                               ; preds = %21
  %33 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %34 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %35 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %36 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = call i32 @f_midi_start_ep(%struct.f_midi* %33, %struct.usb_function* %34, %struct.TYPE_5__* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %135

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %62, %43
  %45 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %46 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %45, i32 0, i32 4
  %47 = call i64 @kfifo_avail(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %51 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %50, i32 0, i32 5
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %54 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.usb_request* @midi_alloc_ep_req(%struct.TYPE_5__* %52, i32 %55)
  store %struct.usb_request* %56, %struct.usb_request** %11, align 8
  %57 = load %struct.usb_request*, %struct.usb_request** %11, align 8
  %58 = icmp eq %struct.usb_request* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %135

62:                                               ; preds = %49
  %63 = load %struct.usb_request*, %struct.usb_request** %11, align 8
  %64 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load i8*, i8** @f_midi_complete, align 8
  %66 = load %struct.usb_request*, %struct.usb_request** %11, align 8
  %67 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %69 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %68, i32 0, i32 4
  %70 = load %struct.usb_request*, %struct.usb_request** %11, align 8
  %71 = call i32 @kfifo_put(i32* %69, %struct.usb_request* %70)
  br label %44

72:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %131, %72
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %76 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 0
  br label %82

82:                                               ; preds = %79, %73
  %83 = phi i1 [ false, %73 ], [ %81, %79 ]
  br i1 %83, label %84, label %134

84:                                               ; preds = %82
  %85 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %86 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %89 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.usb_request* @midi_alloc_ep_req(%struct.TYPE_5__* %87, i32 %90)
  store %struct.usb_request* %91, %struct.usb_request** %12, align 8
  %92 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %93 = icmp eq %struct.usb_request* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %135

97:                                               ; preds = %84
  %98 = load i8*, i8** @f_midi_complete, align 8
  %99 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %100 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %102 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %101, i32 0, i32 2
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %105 = load i32, i32* @GFP_ATOMIC, align 4
  %106 = call i32 @usb_ep_queue(%struct.TYPE_5__* %103, %struct.usb_request* %104, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %97
  %110 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %111 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %112 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %111, i32 0, i32 2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @ERROR(%struct.f_midi* %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %119 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %109
  %123 = load %struct.f_midi*, %struct.f_midi** %8, align 8
  %124 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %123, i32 0, i32 2
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  %127 = call i32 @free_ep_req(%struct.TYPE_5__* %125, %struct.usb_request* %126)
  br label %128

128:                                              ; preds = %122, %109
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %4, align 4
  br label %135

130:                                              ; preds = %97
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %9, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %73

134:                                              ; preds = %82
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %128, %94, %59, %41, %30, %20
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.f_midi* @func_to_midi(%struct.usb_function*) #1

declare dso_local i32 @f_midi_start_ep(%struct.f_midi*, %struct.usb_function*, %struct.TYPE_5__*) #1

declare dso_local i64 @kfifo_avail(i32*) #1

declare dso_local %struct.usb_request* @midi_alloc_ep_req(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @kfifo_put(i32*, %struct.usb_request*) #1

declare dso_local i32 @usb_ep_queue(%struct.TYPE_5__*, %struct.usb_request*, i32) #1

declare dso_local i32 @ERROR(%struct.f_midi*, i8*, i32, i32) #1

declare dso_local i32 @free_ep_req(%struct.TYPE_5__*, %struct.usb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
