; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i64, i64 }
%struct.zd1201 = type { i32 }

@ZD1201_RID_CURRENTTXRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @zd1201_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_get_rate(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zd1201*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.zd1201* @netdev_priv(%struct.net_device* %13)
  store %struct.zd1201* %14, %struct.zd1201** %10, align 8
  %15 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %16 = load i32, i32* @ZD1201_RID_CURRENTTXRATE, align 4
  %17 = call i32 @zd1201_getconfig16(%struct.zd1201* %15, i32 %16, i16* %11)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %45

22:                                               ; preds = %4
  %23 = load i16, i16* %11, align 2
  %24 = sext i16 %23 to i32
  switch i32 %24, label %37 [
    i32 1, label %25
    i32 2, label %28
    i32 5, label %31
    i32 11, label %34
  ]

25:                                               ; preds = %22
  %26 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %27 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %26, i32 0, i32 0
  store i32 1000000, i32* %27, align 8
  br label %40

28:                                               ; preds = %22
  %29 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %30 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %29, i32 0, i32 0
  store i32 2000000, i32* %30, align 8
  br label %40

31:                                               ; preds = %22
  %32 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %33 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %32, i32 0, i32 0
  store i32 5500000, i32* %33, align 8
  br label %40

34:                                               ; preds = %22
  %35 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %36 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %35, i32 0, i32 0
  store i32 11000000, i32* %36, align 8
  br label %40

37:                                               ; preds = %22
  %38 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %39 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %34, %31, %28, %25
  %41 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %42 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %44 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %20
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @zd1201_getconfig16(%struct.zd1201*, i32, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
