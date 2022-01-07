; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r871x_wx_set_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r871x_wx_set_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8*, i32 }
%struct.iw_param = type { i32, i32 }

@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@Ndis802_11Encryption1Enabled = common dso_local global i32 0, align 4
@Ndis802_11EncryptionDisabled = common dso_local global i32 0, align 4
@_NO_PRIVACY_ = common dso_local global i8* null, align 8
@Ndis802_11AuthModeOpen = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r871x_wx_set_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r871x_wx_set_auth(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._adapter*, align 8
  %11 = alloca %struct.iw_param*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct._adapter* @netdev_priv(%struct.net_device* %15)
  store %struct._adapter* %16, %struct._adapter** %10, align 8
  %17 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %18 = bitcast %union.iwreq_data* %17 to i32*
  %19 = bitcast i32* %18 to %struct.iw_param*
  store %struct.iw_param* %19, %struct.iw_param** %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %21 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IW_AUTH_INDEX, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %26 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %12, align 4
  switch i32 %28, label %84 [
    i32 128, label %29
    i32 135, label %30
    i32 136, label %31
    i32 133, label %32
    i32 130, label %33
    i32 134, label %45
    i32 137, label %77
    i32 129, label %81
    i32 131, label %82
    i32 132, label %83
  ]

29:                                               ; preds = %4
  br label %87

30:                                               ; preds = %4
  br label %87

31:                                               ; preds = %4
  br label %87

32:                                               ; preds = %4
  br label %87

33:                                               ; preds = %4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct._adapter*, %struct._adapter** %10, align 8
  %38 = getelementptr inbounds %struct._adapter, %struct._adapter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %44

40:                                               ; preds = %33
  %41 = load %struct._adapter*, %struct._adapter** %10, align 8
  %42 = getelementptr inbounds %struct._adapter, %struct._adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %36
  br label %87

45:                                               ; preds = %4
  %46 = load %struct._adapter*, %struct._adapter** %10, align 8
  %47 = getelementptr inbounds %struct._adapter, %struct._adapter* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @Ndis802_11Encryption1Enabled, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %87

53:                                               ; preds = %45
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = load i32, i32* @Ndis802_11EncryptionDisabled, align 4
  %58 = load %struct._adapter*, %struct._adapter** %10, align 8
  %59 = getelementptr inbounds %struct._adapter, %struct._adapter* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 5
  store i32 %57, i32* %60, align 8
  %61 = load i8*, i8** @_NO_PRIVACY_, align 8
  %62 = load %struct._adapter*, %struct._adapter** %10, align 8
  %63 = getelementptr inbounds %struct._adapter, %struct._adapter* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  store i8* %61, i8** %64, align 8
  %65 = load i8*, i8** @_NO_PRIVACY_, align 8
  %66 = load %struct._adapter*, %struct._adapter** %10, align 8
  %67 = getelementptr inbounds %struct._adapter, %struct._adapter* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store i8* %65, i8** %68, align 8
  %69 = load %struct._adapter*, %struct._adapter** %10, align 8
  %70 = getelementptr inbounds %struct._adapter, %struct._adapter* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 0, i32* %71, align 8
  %72 = load i32, i32* @Ndis802_11AuthModeOpen, align 4
  %73 = load %struct._adapter*, %struct._adapter** %10, align 8
  %74 = getelementptr inbounds %struct._adapter, %struct._adapter* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %56, %53
  br label %87

77:                                               ; preds = %4
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @wpa_set_auth_algs(%struct.net_device* %78, i32 %79)
  store i32 %80, i32* %14, align 4
  br label %87

81:                                               ; preds = %4
  br label %87

82:                                               ; preds = %4
  br label %87

83:                                               ; preds = %4
  br label %87

84:                                               ; preds = %4
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %89

87:                                               ; preds = %83, %82, %81, %77, %76, %52, %44, %32, %31, %30, %29
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wpa_set_auth_algs(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
