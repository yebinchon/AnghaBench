; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_get_wap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_get_wap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.sockaddr = type { i8* }
%struct.zd1201 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ZD1201_RID_COMMSQUALITY = common dso_local global i32 0, align 4
@ZD1201_RID_CURRENTBSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.sockaddr*, i8*)* @zd1201_get_wap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_get_wap(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.sockaddr* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.zd1201*, align 8
  %10 = alloca [6 x i8], align 1
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.zd1201* @netdev_priv(%struct.net_device* %11)
  store %struct.zd1201* %12, %struct.zd1201** %9, align 8
  %13 = load %struct.zd1201*, %struct.zd1201** %9, align 8
  %14 = load i32, i32* @ZD1201_RID_COMMSQUALITY, align 4
  %15 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %16 = call i32 @zd1201_getconfig(%struct.zd1201* %13, i32 %14, i8* %15, i32 6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %20 = bitcast i8* %19 to i32*
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 1
  %23 = call i32 @le16_to_cpu(i32 %22)
  %24 = load %struct.zd1201*, %struct.zd1201** %9, align 8
  %25 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.zd1201*, %struct.zd1201** %9, align 8
  %29 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 2, i32* %31, align 4
  br label %32

32:                                               ; preds = %18, %4
  %33 = load %struct.zd1201*, %struct.zd1201** %9, align 8
  %34 = load i32, i32* @ZD1201_RID_CURRENTBSSID, align 4
  %35 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @zd1201_getconfig(%struct.zd1201* %33, i32 %34, i8* %37, i32 6)
  ret i32 %38
}

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @zd1201_getconfig(%struct.zd1201*, i32, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
