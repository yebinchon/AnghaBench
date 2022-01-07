; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_set_wap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_set_wap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i16, i64, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.sockaddr = type { i64, i32 }

@IW_MODE_MASTER = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtllib_wx_set_wap(%struct.rtllib_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.rtllib_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca %struct.sockaddr*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %14 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %13, i32 0, i32 0
  %15 = load i16, i16* %14, align 8
  store i16 %15, i16* %11, align 2
  %16 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %17 = bitcast %union.iwreq_data* %16 to %struct.sockaddr*
  store %struct.sockaddr* %17, %struct.sockaddr** %12, align 8
  %18 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %19 = call i32 @rtllib_stop_scan_syncro(%struct.rtllib_device* %18)
  %20 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %21 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %20, i32 0, i32 4
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %24 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IW_MODE_MASTER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 -1, i32* %9, align 4
  br label %103

29:                                               ; preds = %4
  %30 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ARPHRD_ETHER, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %103

38:                                               ; preds = %29
  %39 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %40 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @is_zero_ether_addr(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %46 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %45, i32 0, i32 5
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %50 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %54 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ether_addr_copy(i32 %52, i32 %55)
  %57 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %58 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %57, i32 0, i32 2
  store i32 0, i32* %58, align 8
  %59 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %60 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %59, i32 0, i32 5
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  store i32 -1, i32* %9, align 4
  br label %103

63:                                               ; preds = %38
  %64 = load i16, i16* %11, align 2
  %65 = icmp ne i16 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %68 = call i32 @rtllib_stop_protocol(%struct.rtllib_device* %67, i32 1)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %71 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %70, i32 0, i32 5
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %75 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %74, i32 0, i32 3
  store i32 0, i32* %75, align 4
  %76 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %77 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %81 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ether_addr_copy(i32 %79, i32 %82)
  %84 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %85 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @is_zero_ether_addr(i32 %86)
  %88 = icmp ne i64 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %92 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %94 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %93, i32 0, i32 5
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load i16, i16* %11, align 2
  %98 = icmp ne i16 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %69
  %100 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %101 = call i32 @rtllib_start_protocol(%struct.rtllib_device* %100)
  br label %102

102:                                              ; preds = %99, %69
  br label %103

103:                                              ; preds = %102, %44, %35, %28
  %104 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %105 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %104, i32 0, i32 4
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i32 @rtllib_stop_scan_syncro(%struct.rtllib_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rtllib_stop_protocol(%struct.rtllib_device*, i32) #1

declare dso_local i32 @rtllib_start_protocol(%struct.rtllib_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
