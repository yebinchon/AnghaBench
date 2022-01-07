; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_eps_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_eps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_udc = type { i32, i32*, %struct.TYPE_5__, %struct.mv_ep* }
%struct.TYPE_5__ = type { i32 }
%struct.mv_ep = type { i32, i32*, %struct.TYPE_6__, i32, i64, i32, %struct.mv_udc*, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ep0\00", align 1
@mv_ep_ops = common dso_local global i32 0, align 4
@EP0_MAX_PKT_SIZE = common dso_local global i16 0, align 2
@mv_ep0_desc = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ep%din\00", align 1
@EP_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ep%dout\00", align 1
@EP_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_udc*)* @eps_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eps_init(%struct.mv_udc* %0) #0 {
  %2 = alloca %struct.mv_udc*, align 8
  %3 = alloca %struct.mv_ep*, align 8
  %4 = alloca [14 x i8], align 1
  %5 = alloca i32, align 4
  store %struct.mv_udc* %0, %struct.mv_udc** %2, align 8
  %6 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %7 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %6, i32 0, i32 3
  %8 = load %struct.mv_ep*, %struct.mv_ep** %7, align 8
  %9 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %8, i64 0
  store %struct.mv_ep* %9, %struct.mv_ep** %3, align 8
  %10 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %11 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %12 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %11, i32 0, i32 6
  store %struct.mv_udc* %10, %struct.mv_udc** %12, align 8
  %13 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %14 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @strncpy(i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4)
  %17 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %18 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %21 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 8
  %23 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %24 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32* @mv_ep_ops, i32** %25, align 8
  %26 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %27 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %26, i32 0, i32 9
  store i64 0, i64* %27, align 8
  %28 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %29 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %31 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %30, i32 0, i32 2
  %32 = load i16, i16* @EP0_MAX_PKT_SIZE, align 2
  %33 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %31, i16 zeroext %32)
  %34 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %35 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %39 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %43 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %47 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %49 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  store i32* @mv_ep0_desc, i32** %50, align 8
  %51 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %52 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %51, i32 0, i32 3
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load i32, i32* @USB_ENDPOINT_XFER_CONTROL, align 4
  %55 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %56 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 4
  store i32 2, i32* %5, align 4
  br label %57

57:                                               ; preds = %155, %1
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %60 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %61, 2
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %158

64:                                               ; preds = %57
  %65 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %66 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %65, i32 0, i32 3
  %67 = load %struct.mv_ep*, %struct.mv_ep** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %67, i64 %69
  store %struct.mv_ep* %70, %struct.mv_ep** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = srem i32 %71, 2
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %64
  %75 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %76 = load i32, i32* %5, align 4
  %77 = sdiv i32 %76, 2
  %78 = call i32 @snprintf(i8* %75, i32 14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EP_DIR_IN, align 4
  %80 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %81 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  %82 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %83 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  br label %98

86:                                               ; preds = %64
  %87 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %88 = load i32, i32* %5, align 4
  %89 = sdiv i32 %88, 2
  %90 = call i32 @snprintf(i8* %87, i32 14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EP_DIR_OUT, align 4
  %92 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %93 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 8
  %94 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %95 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %86, %74
  %99 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %100 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %101 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %100, i32 0, i32 6
  store %struct.mv_udc* %99, %struct.mv_udc** %101, align 8
  %102 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %103 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %106 = call i32 @strncpy(i32 %104, i8* %105, i32 4)
  %107 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %108 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %111 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  store i32 %109, i32* %112, align 8
  %113 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %114 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  store i32 1, i32* %116, align 4
  %117 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %118 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  store i32 1, i32* %120, align 8
  %121 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %122 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 5
  store i32 1, i32* %124, align 4
  %125 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %126 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i32* @mv_ep_ops, i32** %127, align 8
  %128 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %129 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %128, i32 0, i32 4
  store i64 0, i64* %129, align 8
  %130 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %131 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %130, i32 0, i32 2
  %132 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %131, i16 zeroext -1)
  %133 = load i32, i32* %5, align 4
  %134 = sdiv i32 %133, 2
  %135 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %136 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %138 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %137, i32 0, i32 3
  %139 = call i32 @INIT_LIST_HEAD(i32* %138)
  %140 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %141 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %144 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = call i32 @list_add_tail(i32* %142, i32* %145)
  %147 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %148 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %154 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %153, i32 0, i32 1
  store i32* %152, i32** %154, align 8
  br label %155

155:                                              ; preds = %98
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %5, align 4
  br label %57

158:                                              ; preds = %57
  ret i32 0
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__*, i16 zeroext) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
