; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_goku_udc.c_udc_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_goku_udc.c_udc_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goku_udc = type { %struct.goku_ep*, %struct.TYPE_6__, %struct.TYPE_5__*, i64, i32 }
%struct.goku_ep = type { i32, %struct.TYPE_8__, i32*, i32, %struct.goku_udc*, i32*, i32* }
%struct.TYPE_8__ = type { i8*, i32, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32*, i32*, i32* }

@udc_reinit.names = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"ep0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ep1-bulk\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ep2-bulk\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ep3-bulk\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@EP0_DISCONNECT = common dso_local global i32 0, align 4
@goku_ep_ops = common dso_local global i32 0, align 4
@MAX_EP0_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.goku_udc*)* @udc_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_reinit(%struct.goku_udc* %0) #0 {
  %2 = alloca %struct.goku_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.goku_ep*, align 8
  store %struct.goku_udc* %0, %struct.goku_udc** %2, align 8
  %5 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %6 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %10 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %9, i32 0, i32 0
  %11 = load %struct.goku_ep*, %struct.goku_ep** %10, align 8
  %12 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %11, i64 0
  %13 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %12, i32 0, i32 1
  %14 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %15 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %16, align 8
  %17 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %18 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %19 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @EP0_DISCONNECT, align 4
  %22 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %23 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %25 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %115, %1
  %27 = load i32, i32* %3, align 4
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %29, label %118

29:                                               ; preds = %26
  %30 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %31 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %30, i32 0, i32 0
  %32 = load %struct.goku_ep*, %struct.goku_ep** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %32, i64 %34
  store %struct.goku_ep* %35, %struct.goku_ep** %4, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %38 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i8*], [4 x i8*]* @udc_reinit.names, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %44 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %47 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %55 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %54, i32 0, i32 6
  store i32* %53, i32** %55, align 8
  %56 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %57 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %65 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %64, i32 0, i32 5
  store i32* %63, i32** %65, align 8
  %66 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %67 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %75 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %74, i32 0, i32 2
  store i32* %73, i32** %75, align 8
  %76 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %77 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  store i32* @goku_ep_ops, i32** %78, align 8
  %79 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %80 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %83 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i32 @list_add_tail(i32* %81, i32* %84)
  %86 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %87 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %88 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %87, i32 0, i32 4
  store %struct.goku_udc* %86, %struct.goku_udc** %88, align 8
  %89 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %90 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %89, i32 0, i32 3
  %91 = call i32 @INIT_LIST_HEAD(i32* %90)
  %92 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %93 = call i32 @ep_reset(i32* null, %struct.goku_ep* %92)
  %94 = load i32, i32* %3, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %29
  %97 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %98 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 4
  br label %106

101:                                              ; preds = %29
  %102 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %103 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %108 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  store i32 1, i32* %110, align 4
  %111 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %112 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  store i32 1, i32* %114, align 4
  br label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %3, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %3, align 4
  br label %26

118:                                              ; preds = %26
  %119 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %120 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %119, i32 0, i32 0
  %121 = load %struct.goku_ep*, %struct.goku_ep** %120, align 8
  %122 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %121, i64 0
  %123 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %122, i32 0, i32 2
  store i32* null, i32** %123, align 8
  %124 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %125 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %124, i32 0, i32 0
  %126 = load %struct.goku_ep*, %struct.goku_ep** %125, align 8
  %127 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %126, i64 0
  %128 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %127, i32 0, i32 1
  %129 = load i32, i32* @MAX_EP0_SIZE, align 4
  %130 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__* %128, i32 %129)
  %131 = load %struct.goku_udc*, %struct.goku_udc** %2, align 8
  %132 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %131, i32 0, i32 0
  %133 = load %struct.goku_ep*, %struct.goku_ep** %132, align 8
  %134 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %133, i64 0
  %135 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = call i32 @list_del_init(i32* %136)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ep_reset(i32*, %struct.goku_ep*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
