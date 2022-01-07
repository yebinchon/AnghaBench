; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_nbu2ss_drv_ep_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_nbu2ss_drv_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.nbu2ss_udc = type { %struct.nbu2ss_ep*, %struct.TYPE_4__ }
%struct.nbu2ss_ep = type { %struct.TYPE_5__, i32, i32*, %struct.nbu2ss_udc* }
%struct.TYPE_5__ = type { i32, i32*, i32, i32, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }

@NUM_ENDPOINTS = common dso_local global i32 0, align 4
@ep_info = common dso_local global %struct.TYPE_6__* null, align 8
@nbu2ss_ep_ops = common dso_local global i32 0, align 4
@EP0_PACKETSIZE = common dso_local global i32 0, align 4
@EP_PACKETSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbu2ss_udc*)* @nbu2ss_drv_ep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbu2ss_drv_ep_init(%struct.nbu2ss_udc* %0) #0 {
  %2 = alloca %struct.nbu2ss_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nbu2ss_ep*, align 8
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %2, align 8
  %5 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %6 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %10 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %9, i32 0, i32 0
  %11 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %10, align 8
  %12 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %11, i64 0
  %13 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %12, i32 0, i32 0
  %14 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %15 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %16, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %78, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @NUM_ENDPOINTS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %81

21:                                               ; preds = %17
  %22 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %23 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %22, i32 0, i32 0
  %24 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %24, i64 %26
  store %struct.nbu2ss_ep* %27, %struct.nbu2ss_ep** %4, align 8
  %28 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %29 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %30 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %29, i32 0, i32 3
  store %struct.nbu2ss_udc* %28, %struct.nbu2ss_udc** %30, align 8
  %31 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %32 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %34 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ep_info, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %43 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ep_info, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %52 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  %54 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %55 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32* @nbu2ss_ep_ops, i32** %56, align 8
  %57 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %58 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %57, i32 0, i32 0
  %59 = load i32, i32* %3, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %21
  %62 = load i32, i32* @EP0_PACKETSIZE, align 4
  br label %65

63:                                               ; preds = %21
  %64 = load i32, i32* @EP_PACKETSIZE, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_5__* %58, i32 %66)
  %68 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %69 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %72 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @list_add_tail(i32* %70, i32* %73)
  %75 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %76 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %75, i32 0, i32 1
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  br label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %17

81:                                               ; preds = %17
  %82 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %83 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %82, i32 0, i32 0
  %84 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %83, align 8
  %85 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %84, i64 0
  %86 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = call i32 @list_del_init(i32* %87)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
