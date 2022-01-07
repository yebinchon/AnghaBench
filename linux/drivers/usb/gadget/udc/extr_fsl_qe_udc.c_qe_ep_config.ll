; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_ep_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_ep_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_udc = type { %struct.TYPE_5__, %struct.qe_ep* }
%struct.TYPE_5__ = type { i32 }
%struct.qe_ep = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__, i32, i64, i32, i32*, i32*, i32*, i64, i64, i64, i64, i32, %struct.qe_udc* }
%struct.TYPE_6__ = type { i32, i32*, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@ep_name = common dso_local global i32* null, align 8
@qe_ep_ops = common dso_local global i32 0, align 4
@EP_STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_udc*, i8)* @qe_ep_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_ep_config(%struct.qe_udc* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.qe_udc*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.qe_ep*, align 8
  store %struct.qe_udc* %0, %struct.qe_udc** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %7 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %6, i32 0, i32 1
  %8 = load %struct.qe_ep*, %struct.qe_ep** %7, align 8
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %8, i64 %10
  store %struct.qe_ep* %11, %struct.qe_ep** %5, align 8
  %12 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %13 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %14 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %13, i32 0, i32 15
  store %struct.qe_udc* %12, %struct.qe_udc** %14, align 8
  %15 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %16 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %15, i32 0, i32 14
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** @ep_name, align 8
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcpy(i32 %17, i32 %22)
  %24 = load i32*, i32** @ep_name, align 8
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %30 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 8
  %32 = load i8, i8* %4, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %37 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %53

40:                                               ; preds = %2
  %41 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %42 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %46 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32 1, i32* %48, align 8
  %49 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %50 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %40, %35
  %54 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %55 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  store i32 1, i32* %57, align 8
  %58 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %59 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  store i32 1, i32* %61, align 4
  %62 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %63 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  store i32* @qe_ep_ops, i32** %64, align 8
  %65 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %66 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %68 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %67, i32 0, i32 3
  %69 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %68, i16 zeroext -1)
  %70 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %71 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  %73 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %74 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %73, i32 0, i32 1
  store i32 255, i32* %74, align 4
  %75 = load i8, i8* %4, align 1
  %76 = zext i8 %75 to i64
  %77 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %78 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %77, i32 0, i32 13
  store i64 %76, i64* %78, align 8
  %79 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %80 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %79, i32 0, i32 12
  store i64 0, i64* %80, align 8
  %81 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %82 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %81, i32 0, i32 11
  store i64 0, i64* %82, align 8
  %83 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %84 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %83, i32 0, i32 10
  store i64 0, i64* %84, align 8
  %85 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %86 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %85, i32 0, i32 9
  store i32* null, i32** %86, align 8
  %87 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %88 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %87, i32 0, i32 8
  store i32* null, i32** %88, align 8
  %89 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %90 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %89, i32 0, i32 7
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* @EP_STATE_IDLE, align 4
  %92 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %93 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 8
  %94 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %95 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %94, i32 0, i32 5
  store i64 0, i64* %95, align 8
  %96 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %97 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %96, i32 0, i32 4
  %98 = call i32 @INIT_LIST_HEAD(i32* %97)
  %99 = load i8, i8* %4, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %53
  %103 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %104 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %107 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = call i32 @list_add_tail(i32* %105, i32* %108)
  br label %110

110:                                              ; preds = %102, %53
  %111 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %112 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %111, i32 0, i32 0
  %113 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %114 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %113, i32 0, i32 2
  store %struct.TYPE_5__* %112, %struct.TYPE_5__** %114, align 8
  ret i32 0
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__*, i16 zeroext) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
