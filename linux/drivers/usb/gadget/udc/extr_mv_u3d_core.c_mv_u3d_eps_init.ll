; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_u3d_core.c_mv_u3d_eps_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_u3d_core.c_mv_u3d_eps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_u3d = type { i32, i32*, %struct.TYPE_5__, %struct.mv_u3d_ep* }
%struct.TYPE_5__ = type { i32 }
%struct.mv_u3d_ep = type { i32, i32*, i32, i32, %struct.TYPE_6__, i32, i32, %struct.mv_u3d*, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ep0\00", align 1
@mv_u3d_ep_ops = common dso_local global i32 0, align 4
@MV_U3D_EP0_MAX_PKT_SIZE = common dso_local global i16 0, align 2
@mv_u3d_ep0_desc = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ep%din\00", align 1
@MV_U3D_EP_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ep%dout\00", align 1
@MV_U3D_EP_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_u3d*)* @mv_u3d_eps_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_u3d_eps_init(%struct.mv_u3d* %0) #0 {
  %2 = alloca %struct.mv_u3d*, align 8
  %3 = alloca %struct.mv_u3d_ep*, align 8
  %4 = alloca [14 x i8], align 1
  %5 = alloca i32, align 4
  store %struct.mv_u3d* %0, %struct.mv_u3d** %2, align 8
  %6 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %7 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %6, i32 0, i32 3
  %8 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %7, align 8
  %9 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %8, i64 1
  store %struct.mv_u3d_ep* %9, %struct.mv_u3d_ep** %3, align 8
  %10 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %11 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %12 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %11, i32 0, i32 7
  store %struct.mv_u3d* %10, %struct.mv_u3d** %12, align 8
  %13 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %14 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strncpy(i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4)
  %17 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %18 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %21 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 8
  %23 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %24 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32* @mv_u3d_ep_ops, i32** %25, align 8
  %26 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %27 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %26, i32 0, i32 10
  store i64 0, i64* %27, align 8
  %28 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %29 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %28, i32 0, i32 4
  %30 = load i16, i16* @MV_U3D_EP0_MAX_PKT_SIZE, align 2
  %31 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %29, i16 zeroext %30)
  %32 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %33 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %37 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %41 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  %44 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %45 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %47 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  store i32* @mv_u3d_ep0_desc, i32** %48, align 8
  %49 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %50 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %49, i32 0, i32 5
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %53 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %52, i32 0, i32 3
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load i32, i32* @USB_ENDPOINT_XFER_CONTROL, align 4
  %56 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %57 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %59 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %63 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  store i32 2, i32* %5, align 4
  br label %64

64:                                               ; preds = %166, %1
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %67 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %68, 2
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %169

71:                                               ; preds = %64
  %72 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %73 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %72, i32 0, i32 3
  %74 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %74, i64 %76
  store %struct.mv_u3d_ep* %77, %struct.mv_u3d_ep** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %71
  %82 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %83 = load i32, i32* %5, align 4
  %84 = ashr i32 %83, 1
  %85 = call i32 @snprintf(i8* %82, i32 14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @MV_U3D_EP_DIR_IN, align 4
  %87 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %88 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 8
  %89 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %90 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  br label %105

93:                                               ; preds = %71
  %94 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %95 = load i32, i32* %5, align 4
  %96 = ashr i32 %95, 1
  %97 = call i32 @snprintf(i8* %94, i32 14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @MV_U3D_EP_DIR_OUT, align 4
  %99 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %100 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 8
  %101 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %102 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %93, %81
  %106 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %107 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %108 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %107, i32 0, i32 7
  store %struct.mv_u3d* %106, %struct.mv_u3d** %108, align 8
  %109 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %110 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %113 = call i32 @strncpy(i32 %111, i8* %112, i32 4)
  %114 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %115 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %118 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  store i32 %116, i32* %119, align 8
  %120 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %121 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  store i32 1, i32* %123, align 4
  %124 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %125 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 4
  store i32 1, i32* %127, align 8
  %128 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %129 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 5
  store i32 1, i32* %131, align 4
  %132 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %133 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  store i32* @mv_u3d_ep_ops, i32** %134, align 8
  %135 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %136 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %135, i32 0, i32 4
  %137 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %136, i16 zeroext -1)
  %138 = load i32, i32* %5, align 4
  %139 = sdiv i32 %138, 2
  %140 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %141 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %143 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %142, i32 0, i32 5
  %144 = call i32 @INIT_LIST_HEAD(i32* %143)
  %145 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %146 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %149 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = call i32 @list_add_tail(i32* %147, i32* %150)
  %152 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %153 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %152, i32 0, i32 3
  %154 = call i32 @INIT_LIST_HEAD(i32* %153)
  %155 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %156 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %155, i32 0, i32 2
  %157 = call i32 @spin_lock_init(i32* %156)
  %158 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %159 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %165 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %164, i32 0, i32 1
  store i32* %163, i32** %165, align 8
  br label %166

166:                                              ; preds = %105
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %64

169:                                              ; preds = %64
  ret i32 0
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__*, i16 zeroext) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
