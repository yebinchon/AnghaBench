; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_freq }
%struct.iw_freq = type { i32, i32 }
%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@frequency_list = common dso_local global i32* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8711_wx_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8711_wx_set_freq(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._adapter*, align 8
  %10 = alloca %struct.iw_freq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct._adapter* @netdev_priv(%struct.net_device* %15)
  store %struct._adapter* %16, %struct._adapter** %9, align 8
  %17 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %18 = bitcast %union.iwreq_data* %17 to %struct.iw_freq*
  store %struct.iw_freq* %18, %struct.iw_freq** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %20 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %61

23:                                               ; preds = %4
  %24 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %25 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 241200000
  br i1 %27, label %28, label %61

28:                                               ; preds = %23
  %29 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %30 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sle i32 %31, 248700000
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %35 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 100000
  store i32 %37, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %51, %33
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 14
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** @frequency_list, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %42, %47
  br label %49

49:                                               ; preds = %41, %38
  %50 = phi i1 [ false, %38 ], [ %48, %41 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %38

54:                                               ; preds = %49
  %55 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %56 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %60 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %28, %23, %4
  %62 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %63 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 14
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %68 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66, %61
  %72 = load i32, i32* @EOPNOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  br label %92

74:                                               ; preds = %66
  %75 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %76 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %14, align 4
  %82 = icmp sgt i32 %81, 14
  br i1 %82, label %83, label %86

83:                                               ; preds = %80, %74
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  br label %91

86:                                               ; preds = %80
  %87 = load i32, i32* %14, align 4
  %88 = load %struct._adapter*, %struct._adapter** %9, align 8
  %89 = getelementptr inbounds %struct._adapter, %struct._adapter* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %83
  br label %92

92:                                               ; preds = %91, %71
  %93 = load i32, i32* %11, align 4
  ret i32 %93
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
