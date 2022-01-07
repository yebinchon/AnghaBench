; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c___wusbhc_keep_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c___wusbhc_keep_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, i32, %struct.wuie_keep_alive, %struct.device* }
%struct.wuie_keep_alive = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.wusb_dev = type { i32, i64, i32* }
%struct.wusb_port = type { %struct.wusb_dev* }

@WUIE_ELT_MAX = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"KEEPALIVE: device %u timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wusbhc*)* @__wusbhc_keep_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wusbhc_keep_alive(%struct.wusbhc* %0) #0 {
  %2 = alloca %struct.wusbhc*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wusb_dev*, align 8
  %6 = alloca %struct.wusb_port*, align 8
  %7 = alloca %struct.wuie_keep_alive*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %2, align 8
  %11 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %12 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %11, i32 0, i32 3
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %3, align 8
  %14 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %15 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %14, i32 0, i32 2
  store %struct.wuie_keep_alive* %15, %struct.wuie_keep_alive** %7, align 8
  %16 = load %struct.wuie_keep_alive*, %struct.wuie_keep_alive** %7, align 8
  %17 = getelementptr inbounds %struct.wuie_keep_alive, %struct.wuie_keep_alive* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %98, %1
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @WUIE_ELT_MAX, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %30 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br label %33

33:                                               ; preds = %27, %23
  %34 = phi i1 [ false, %23 ], [ %32, %27 ]
  br i1 %34, label %35, label %101

35:                                               ; preds = %33
  %36 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %37 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @msecs_to_jiffies(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call %struct.wusb_port* @wusb_port_by_idx(%struct.wusbhc* %40, i32 %41)
  store %struct.wusb_port* %42, %struct.wusb_port** %6, align 8
  %43 = load %struct.wusb_port*, %struct.wusb_port** %6, align 8
  %44 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %43, i32 0, i32 0
  %45 = load %struct.wusb_dev*, %struct.wusb_dev** %44, align 8
  store %struct.wusb_dev* %45, %struct.wusb_dev** %5, align 8
  %46 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %47 = icmp eq %struct.wusb_dev* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %98

49:                                               ; preds = %35
  %50 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %51 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %98

55:                                               ; preds = %49
  %56 = load i32, i32* @jiffies, align 4
  %57 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %58 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = call i64 @time_after(i32 %56, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %55
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %68 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %72 = load %struct.wusb_port*, %struct.wusb_port** %6, align 8
  %73 = call i32 @__wusbhc_dev_disconnect(%struct.wusbhc* %71, %struct.wusb_port* %72)
  br label %97

74:                                               ; preds = %55
  %75 = load i32, i32* @jiffies, align 4
  %76 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %77 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = udiv i32 %79, 3
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %78, %81
  %83 = call i64 @time_after(i32 %75, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %74
  %86 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %87 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.wuie_keep_alive*, %struct.wuie_keep_alive** %7, align 8
  %90 = getelementptr inbounds %struct.wuie_keep_alive, %struct.wuie_keep_alive* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %8, align 4
  %94 = zext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %88, i32* %95, align 4
  br label %96

96:                                               ; preds = %85, %74
  br label %97

97:                                               ; preds = %96, %65
  br label %98

98:                                               ; preds = %97, %54, %48
  %99 = load i32, i32* %4, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %23

101:                                              ; preds = %33
  %102 = load i32, i32* %8, align 4
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load %struct.wuie_keep_alive*, %struct.wuie_keep_alive** %7, align 8
  %107 = getelementptr inbounds %struct.wuie_keep_alive, %struct.wuie_keep_alive* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %8, align 4
  %111 = zext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 127, i32* %112, align 4
  br label %113

113:                                              ; preds = %105, %101
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = add i64 4, %116
  %118 = trunc i64 %117 to i32
  %119 = load %struct.wuie_keep_alive*, %struct.wuie_keep_alive** %7, align 8
  %120 = getelementptr inbounds %struct.wuie_keep_alive, %struct.wuie_keep_alive* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load i32, i32* %8, align 4
  %123 = icmp ugt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %113
  %125 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %126 = load %struct.wuie_keep_alive*, %struct.wuie_keep_alive** %7, align 8
  %127 = getelementptr inbounds %struct.wuie_keep_alive, %struct.wuie_keep_alive* %126, i32 0, i32 1
  %128 = call i32 @wusbhc_mmcie_set(%struct.wusbhc* %125, i32 10, i32 5, %struct.TYPE_3__* %127)
  br label %138

129:                                              ; preds = %113
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %134 = load %struct.wuie_keep_alive*, %struct.wuie_keep_alive** %7, align 8
  %135 = getelementptr inbounds %struct.wuie_keep_alive, %struct.wuie_keep_alive* %134, i32 0, i32 1
  %136 = call i32 @wusbhc_mmcie_rm(%struct.wusbhc* %133, %struct.TYPE_3__* %135)
  br label %137

137:                                              ; preds = %132, %129
  br label %138

138:                                              ; preds = %137, %124
  ret void
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local %struct.wusb_port* @wusb_port_by_idx(%struct.wusbhc*, i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @__wusbhc_dev_disconnect(%struct.wusbhc*, %struct.wusb_port*) #1

declare dso_local i32 @wusbhc_mmcie_set(%struct.wusbhc*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @wusbhc_mmcie_rm(%struct.wusbhc*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
