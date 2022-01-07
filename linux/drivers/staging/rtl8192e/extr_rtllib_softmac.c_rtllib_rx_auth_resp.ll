; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_rx_auth_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_rx_auth_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i32, %struct.TYPE_6__, i32 (i32, i64)*, i32 (i32)*, %struct.TYPE_5__*, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Authentication response status code 0x%x\00", align 1
@RTLLIB_ASSOCIATING_AUTHENTICATED = common dso_local global i32 0, align 4
@HT_IOT_ACT_PURE_N_MODE = common dso_local global i32 0, align 4
@IEEE_G = common dso_local global i64 0, align 8
@IEEE_N_24G = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"======>enter half N mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*, %struct.sk_buff*)* @rtllib_rx_auth_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_rx_auth_resp(%struct.rtllib_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %11 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i64 @auth_parse(i32 %12, %struct.sk_buff* %13, i32** %6, i32* %7)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %19 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %24 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 (i32, i8*, ...) @netdev_info(i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %29 = call i32 @rtllib_associate_abort(%struct.rtllib_device* %28)
  br label %124

30:                                               ; preds = %2
  %31 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %32 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %119, label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* @RTLLIB_ASSOCIATING_AUTHENTICATED, align 4
  %40 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %41 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %43 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %48 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %47, i32 0, i32 5
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @HT_IOT_ACT_PURE_N_MODE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %38
  %56 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %57 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %56, i32 0, i32 4
  %58 = load i32 (i32)*, i32 (i32)** %57, align 8
  %59 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %60 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 %58(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %55
  %65 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %66 = call i64 @IsHTHalfNmodeAPs(%struct.rtllib_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %70

69:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %69, %68
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %71, %38
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %77 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %76, i32 0, i32 3
  %78 = load i32 (i32, i64)*, i32 (i32, i64)** %77, align 8
  %79 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %80 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %83 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 %78(i32 %81, i64 %85)
  br label %96

87:                                               ; preds = %72
  %88 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %89 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %88, i32 0, i32 3
  %90 = load i32 (i32, i64)*, i32 (i32, i64)** %89, align 8
  %91 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %92 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* @IEEE_G, align 8
  %95 = call i32 %90(i32 %93, i64 %94)
  br label %96

96:                                               ; preds = %87, %75
  %97 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %98 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @IEEE_N_24G, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %96
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %108 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, ...) @netdev_info(i32 %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %112 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  br label %116

113:                                              ; preds = %103, %96
  %114 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %115 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  br label %116

116:                                              ; preds = %113, %106
  %117 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %118 = call i32 @rtllib_associate_step2(%struct.rtllib_device* %117)
  br label %124

119:                                              ; preds = %35
  %120 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @rtllib_auth_challenge(%struct.rtllib_device* %120, i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %17, %119, %116
  ret void
}

declare dso_local i64 @auth_parse(i32, %struct.sk_buff*, i32**, i32*) #1

declare dso_local i32 @netdev_info(i32, i8*, ...) #1

declare dso_local i32 @rtllib_associate_abort(%struct.rtllib_device*) #1

declare dso_local i64 @IsHTHalfNmodeAPs(%struct.rtllib_device*) #1

declare dso_local i32 @rtllib_associate_step2(%struct.rtllib_device*) #1

declare dso_local i32 @rtllib_auth_challenge(%struct.rtllib_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
