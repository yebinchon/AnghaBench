; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_wx.c_rtllib_wx_set_mlme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_wx.c_rtllib_wx_set_mlme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i64, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i8*, i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.iw_mlme = type { i32, i32 }

@RTLLIB_LINKED = common dso_local global i64 0, align 8
@ENOLINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"disauth packet !\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"dis associate packet!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtllib_wx_set_mlme(%struct.rtllib_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtllib_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iw_mlme*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.iw_mlme*
  store %struct.iw_mlme* %14, %struct.iw_mlme** %12, align 8
  %15 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %16 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RTLLIB_LINKED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOLINK, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %92

23:                                               ; preds = %4
  %24 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %25 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %24, i32 0, i32 2
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.iw_mlme*, %struct.iw_mlme** %12, align 8
  %28 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %82 [
    i32 129, label %30
    i32 128, label %31
  ]

30:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  br label %31

31:                                               ; preds = %23, %30
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %36 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @netdev_info(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %44

39:                                               ; preds = %31
  %40 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %41 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @netdev_info(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %46 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  %47 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.iw_mlme*, %struct.iw_mlme** %12, align 8
  %50 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @SendDisassociation(%struct.rtllib_device* %47, i32 %48, i32 %51)
  %53 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %54 = call i32 @rtllib_disassociate(%struct.rtllib_device* %53)
  %55 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %56 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %55, i32 0, i32 5
  store i32 0, i32* %56, align 4
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %68, %44
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 6
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %62 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 85, i32* %67, align 4
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %57

71:                                               ; preds = %57
  %72 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %73 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %72, i32 0, i32 4
  store i32 0, i32* %73, align 8
  %74 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %75 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 0, i8* %78, align 1
  %79 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %80 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 0, i32* %81, align 8
  br label %88

82:                                               ; preds = %23
  %83 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %84 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %83, i32 0, i32 2
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* @EOPNOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %92

88:                                               ; preds = %71
  %89 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %90 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %89, i32 0, i32 2
  %91 = call i32 @mutex_unlock(i32* %90)
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %82, %20
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @SendDisassociation(%struct.rtllib_device*, i32, i32) #1

declare dso_local i32 @rtllib_disassociate(%struct.rtllib_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
