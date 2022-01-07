; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_dot11d.c_dot11d_channel_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_dot11d.c_dot11d_channel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.rtllib_device = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@channel_array = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dot11d_channel_map(i64 %0, %struct.rtllib_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.rtllib_device* %1, %struct.rtllib_device** %4, align 8
  store i32 14, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %8 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %9 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @channel_array, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %75

16:                                               ; preds = %2
  %17 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %18 = call %struct.TYPE_4__* @GET_DOT11D_INFO(%struct.rtllib_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @memset(i32* %20, i32 0, i32 8)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %71, %16
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @channel_array, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %23, %28
  br i1 %29, label %30, label %74

30:                                               ; preds = %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @channel_array, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %30
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @channel_array, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42, %30
  br label %74

55:                                               ; preds = %42
  %56 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %57 = call %struct.TYPE_4__* @GET_DOT11D_INFO(%struct.rtllib_device* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @channel_array, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %59, i64 %69
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %55
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %22

74:                                               ; preds = %54, %22
  br label %75

75:                                               ; preds = %74, %2
  %76 = load i64, i64* %3, align 8
  switch i64 %76, label %119 [
    i64 129, label %77
    i64 128, label %99
  ]

77:                                               ; preds = %75
  %78 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %79 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  store i32 12, i32* %5, align 4
  br label %80

80:                                               ; preds = %91, %77
  %81 = load i32, i32* %5, align 4
  %82 = icmp sle i32 %81, 14
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %85 = call %struct.TYPE_4__* @GET_DOT11D_INFO(%struct.rtllib_device* %84)
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 2, i32* %90, align 4
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %80

94:                                               ; preds = %80
  %95 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %96 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %95, i32 0, i32 1
  store i32 10, i32* %96, align 4
  %97 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %98 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %97, i32 0, i32 2
  store i32 11, i32* %98, align 4
  br label %124

99:                                               ; preds = %75
  store i32 12, i32* %5, align 4
  br label %100

100:                                              ; preds = %111, %99
  %101 = load i32, i32* %5, align 4
  %102 = icmp sle i32 %101, 13
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %105 = call %struct.TYPE_4__* @GET_DOT11D_INFO(%struct.rtllib_device* %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 2, i32* %110, align 4
  br label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %100

114:                                              ; preds = %100
  %115 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %116 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %115, i32 0, i32 1
  store i32 10, i32* %116, align 4
  %117 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %118 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %117, i32 0, i32 2
  store i32 11, i32* %118, align 4
  br label %124

119:                                              ; preds = %75
  %120 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %121 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  %122 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %123 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %122, i32 0, i32 2
  store i32 14, i32* %123, align 4
  br label %124

124:                                              ; preds = %119, %114, %94
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @GET_DOT11D_INFO(%struct.rtllib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
