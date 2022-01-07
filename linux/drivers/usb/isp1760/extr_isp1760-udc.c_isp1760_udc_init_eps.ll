; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_init_eps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_init_eps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_udc = type { %struct.TYPE_4__, %struct.isp1760_ep* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.isp1760_ep = type { i32, i32, %struct.TYPE_6__, i32, i32*, i32, %struct.isp1760_udc* }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ep%u%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@isp1760_ep_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1760_udc*)* @isp1760_udc_init_eps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1760_udc_init_eps(%struct.isp1760_udc* %0) #0 {
  %2 = alloca %struct.isp1760_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp1760_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.isp1760_udc* %0, %struct.isp1760_udc** %2, align 8
  %7 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %8 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %144, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %14 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %13, i32 0, i32 1
  %15 = load %struct.isp1760_ep*, %struct.isp1760_ep** %14, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.isp1760_ep* %15)
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %147

18:                                               ; preds = %11
  %19 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %20 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %19, i32 0, i32 1
  %21 = load %struct.isp1760_ep*, %struct.isp1760_ep** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %21, i64 %23
  store %struct.isp1760_ep* %24, %struct.isp1760_ep** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, 1
  %27 = udiv i32 %26, 2
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %34 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %35 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %34, i32 0, i32 6
  store %struct.isp1760_udc* %33, %struct.isp1760_udc** %35, align 8
  %36 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %37 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %36, i32 0, i32 5
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %18
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @USB_DIR_IN, align 4
  br label %48

46:                                               ; preds = %41, %18
  %47 = load i32, i32* @USB_DIR_OUT, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %53 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %55 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %54, i32 0, i32 4
  store i32* null, i32** %55, align 8
  %56 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %57 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %48
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  br label %68

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67, %62
  %69 = phi i8* [ %66, %62 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %67 ]
  %70 = call i32 @sprintf(i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %59, i8* %69)
  %71 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %72 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i32* @isp1760_ep_ops, i32** %73, align 8
  %74 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %75 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %78 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %68
  %83 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %84 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %83, i32 0, i32 2
  %85 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %84, i32 64)
  %86 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %87 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %91 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %95 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  store i32 1, i32* %97, align 8
  %98 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %99 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %98, i32 0, i32 1
  store i32 64, i32* %99, align 4
  %100 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %101 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %100, i32 0, i32 2
  %102 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %103 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %104, align 8
  br label %130

105:                                              ; preds = %68
  %106 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %107 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %106, i32 0, i32 2
  %108 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %107, i32 512)
  %109 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %110 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  store i32 1, i32* %112, align 4
  %113 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %114 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  store i32 1, i32* %116, align 8
  %117 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %118 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 5
  store i32 1, i32* %120, align 4
  %121 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %122 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  %123 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %124 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %127 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = call i32 @list_add_tail(i32* %125, i32* %128)
  br label %130

130:                                              ; preds = %105, %82
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %135 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  br label %143

138:                                              ; preds = %130
  %139 = load %struct.isp1760_ep*, %struct.isp1760_ep** %4, align 8
  %140 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  store i32 1, i32* %142, align 8
  br label %143

143:                                              ; preds = %138, %133
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %3, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %3, align 4
  br label %11

147:                                              ; preds = %11
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.isp1760_ep*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
