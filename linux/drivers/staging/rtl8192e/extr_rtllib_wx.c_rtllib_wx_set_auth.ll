; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_wx.c_rtllib_wx_set_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_wx.c_rtllib_wx_set_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32 }

@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@IW_AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@IW_AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@IW_AUTH_ALG_LEAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtllib_wx_set_auth(%struct.rtllib_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtllib_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %11 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IW_AUTH_INDEX, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %92 [
    i32 128, label %15
    i32 135, label %16
    i32 136, label %16
    i32 133, label %16
    i32 130, label %17
    i32 134, label %23
    i32 137, label %29
    i32 129, label %71
    i32 131, label %80
    i32 132, label %86
  ]

15:                                               ; preds = %4
  br label %95

16:                                               ; preds = %4, %4, %4
  br label %95

17:                                               ; preds = %4
  %18 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %19 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %22 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %95

23:                                               ; preds = %4
  %24 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %25 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %28 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %95

29:                                               ; preds = %4
  %30 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %31 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IW_AUTH_ALG_SHARED_KEY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %38 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %37, i32 0, i32 2
  store i32 0, i32* %38, align 4
  %39 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %40 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %39, i32 0, i32 3
  store i32 1, i32* %40, align 4
  br label %70

41:                                               ; preds = %29
  %42 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %43 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IW_AUTH_ALG_OPEN_SYSTEM, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %50 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %49, i32 0, i32 2
  store i32 1, i32* %50, align 4
  %51 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %52 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %51, i32 0, i32 3
  store i32 0, i32* %52, align 4
  br label %69

53:                                               ; preds = %41
  %54 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %55 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IW_AUTH_ALG_LEAP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %62 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  %63 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %64 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %63, i32 0, i32 3
  store i32 2, i32* %64, align 4
  br label %68

65:                                               ; preds = %53
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %96

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %48
  br label %70

70:                                               ; preds = %69, %36
  br label %95

71:                                               ; preds = %4
  %72 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %73 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1, i32 0
  %78 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %79 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  br label %95

80:                                               ; preds = %4
  %81 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %82 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %85 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  br label %95

86:                                               ; preds = %4
  %87 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %88 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %91 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  br label %95

92:                                               ; preds = %4
  %93 = load i32, i32* @EOPNOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %96

95:                                               ; preds = %86, %80, %71, %70, %23, %17, %16, %15
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %92, %65
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
