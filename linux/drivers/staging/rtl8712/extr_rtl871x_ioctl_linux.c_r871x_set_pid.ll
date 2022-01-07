; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r871x_set_pid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r871x_set_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32 }
%struct._adapter = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r871x_set_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r871x_set_pid(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._adapter*, align 8
  %11 = alloca %struct.iw_point*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct._adapter* @netdev_priv(%struct.net_device* %12)
  store %struct._adapter* %13, %struct._adapter** %10, align 8
  %14 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %15 = bitcast %union.iwreq_data* %14 to %struct.iw_point*
  store %struct.iw_point* %15, %struct.iw_point** %11, align 8
  %16 = load %struct._adapter*, %struct._adapter** %10, align 8
  %17 = getelementptr inbounds %struct._adapter, %struct._adapter* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %22 = icmp eq %struct.iw_point* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %38

26:                                               ; preds = %20
  %27 = load %struct._adapter*, %struct._adapter** %10, align 8
  %28 = getelementptr inbounds %struct._adapter, %struct._adapter* %27, i32 0, i32 0
  %29 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %30 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @copy_from_user(i32* %28, i32 %31, i32 4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %34, %23
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
