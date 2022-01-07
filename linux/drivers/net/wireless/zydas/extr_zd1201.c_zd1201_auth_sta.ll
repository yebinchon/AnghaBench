; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_auth_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_auth_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.sockaddr = type { i32 }
%struct.zd1201 = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ZD1201_RID_AUTHENTICATESTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.sockaddr*, i8*)* @zd1201_auth_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_auth_sta(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.sockaddr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zd1201*, align 8
  %11 = alloca [10 x i8], align 1
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.zd1201* @netdev_priv(%struct.net_device* %12)
  store %struct.zd1201* %13, %struct.zd1201** %10, align 8
  %14 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %15 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %38

21:                                               ; preds = %4
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %23 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %24 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @memcpy(i8* %22, i32 %25, i32 %26)
  %28 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %29 = getelementptr inbounds i8, i8* %28, i64 6
  %30 = bitcast i8* %29 to i16*
  store i16 0, i16* %30, align 2
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %32 = getelementptr inbounds i8, i8* %31, i64 8
  %33 = bitcast i8* %32 to i16*
  store i16 0, i16* %33, align 2
  %34 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %35 = load i32, i32* @ZD1201_RID_AUTHENTICATESTA, align 4
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %37 = call i32 @zd1201_setconfig(%struct.zd1201* %34, i32 %35, i8* %36, i32 10, i32 1)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %21, %18
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @zd1201_setconfig(%struct.zd1201*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
