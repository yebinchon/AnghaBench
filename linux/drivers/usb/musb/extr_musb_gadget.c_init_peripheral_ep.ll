; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_init_peripheral_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_init_peripheral_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { %struct.TYPE_4__, %struct.musb_hw_ep* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.musb_hw_ep = type { i32, i32, i64 }
%struct.musb_ep = type { i32, i32, %struct.TYPE_6__, i32, i32, %struct.musb_hw_ep*, %struct.musb* }

@.str = private unnamed_addr constant [7 x i8] c"ep%d%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@musb_g_ep0_ops = common dso_local global i32 0, align 4
@musb_ep_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*, %struct.musb_ep*, i32, i32)* @init_peripheral_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_peripheral_ep(%struct.musb* %0, %struct.musb_ep* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.musb*, align 8
  %6 = alloca %struct.musb_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.musb_hw_ep*, align 8
  store %struct.musb* %0, %struct.musb** %5, align 8
  store %struct.musb_ep* %1, %struct.musb_ep** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.musb*, %struct.musb** %5, align 8
  %11 = getelementptr inbounds %struct.musb, %struct.musb* %10, i32 0, i32 1
  %12 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %12, i64 %14
  store %struct.musb_hw_ep* %15, %struct.musb_hw_ep** %9, align 8
  %16 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %17 = call i32 @memset(%struct.musb_ep* %16, i32 0, i32 80)
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %20 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.musb*, %struct.musb** %5, align 8
  %22 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %23 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %22, i32 0, i32 6
  store %struct.musb* %21, %struct.musb** %23, align 8
  %24 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %9, align 8
  %25 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %26 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %25, i32 0, i32 5
  store %struct.musb_hw_ep* %24, %struct.musb_hw_ep** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %29 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %31 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %30, i32 0, i32 4
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %34 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %4
  %40 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %9, align 8
  %41 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %4
  br label %50

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  br label %50

50:                                               ; preds = %45, %44
  %51 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %44 ], [ %49, %45 ]
  %52 = call i32 @sprintf(i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %36, i8* %51)
  %53 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %54 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %57 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 8
  %59 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %60 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %81, label %65

65:                                               ; preds = %50
  %66 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %67 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %66, i32 0, i32 2
  %68 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %67, i32 64)
  %69 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %70 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %74 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store i32* @musb_g_ep0_ops, i32** %75, align 8
  %76 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %77 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %76, i32 0, i32 2
  %78 = load %struct.musb*, %struct.musb** %5, align 8
  %79 = getelementptr inbounds %struct.musb, %struct.musb* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %80, align 8
  br label %121

81:                                               ; preds = %50
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %86 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %85, i32 0, i32 2
  %87 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %9, align 8
  %88 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %86, i32 %89)
  br label %98

91:                                               ; preds = %81
  %92 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %93 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %92, i32 0, i32 2
  %94 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %9, align 8
  %95 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %93, i32 %96)
  br label %98

98:                                               ; preds = %91, %84
  %99 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %100 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %104 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  store i32 1, i32* %106, align 8
  %107 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %108 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  store i32 1, i32* %110, align 4
  %111 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %112 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  store i32* @musb_ep_ops, i32** %113, align 8
  %114 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %115 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load %struct.musb*, %struct.musb** %5, align 8
  %118 = getelementptr inbounds %struct.musb, %struct.musb* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = call i32 @list_add_tail(i32* %116, i32* %119)
  br label %121

121:                                              ; preds = %98, %65
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %9, align 8
  %126 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %124, %121
  %130 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %131 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 4
  store i32 1, i32* %133, align 8
  %134 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %135 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 5
  store i32 1, i32* %137, align 4
  br label %152

138:                                              ; preds = %124
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %143 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 4
  store i32 1, i32* %145, align 8
  br label %151

146:                                              ; preds = %138
  %147 = load %struct.musb_ep*, %struct.musb_ep** %6, align 8
  %148 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 5
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %146, %141
  br label %152

152:                                              ; preds = %151, %129
  ret void
}

declare dso_local i32 @memset(%struct.musb_ep*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
