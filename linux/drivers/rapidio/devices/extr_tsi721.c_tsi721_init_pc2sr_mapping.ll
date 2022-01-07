; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_init_pc2sr_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_init_pc2sr_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@TSI721_OBWIN_NUM = common dso_local global i32 0, align 4
@TSI721_LUT_DATA0 = common dso_local global i64 0, align 8
@TSI721_LUT_DATA1 = common dso_local global i64 0, align 8
@TSI721_LUT_DATA2 = common dso_local global i64 0, align 8
@TSI721_PC2SR_ZONES = common dso_local global i32 0, align 4
@TSI721_ZONE_SEL = common dso_local global i64 0, align 8
@TSI721_ZONE_SEL_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsi721_device*)* @tsi721_init_pc2sr_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi721_init_pc2sr_mapping(%struct.tsi721_device* %0) #0 {
  %2 = alloca %struct.tsi721_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tsi721_device* %0, %struct.tsi721_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @TSI721_OBWIN_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %12 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @TSI721_OBWINLB(i32 %14)
  %16 = add nsw i64 %13, %15
  %17 = call i32 @iowrite32(i32 0, i64 %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %6

21:                                               ; preds = %6
  %22 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %23 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TSI721_LUT_DATA0, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @iowrite32(i32 0, i64 %26)
  %28 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %29 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TSI721_LUT_DATA1, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @iowrite32(i32 0, i64 %32)
  %34 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %35 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TSI721_LUT_DATA2, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @iowrite32(i32 0, i64 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %80, %21
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @TSI721_OBWIN_NUM, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %76, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @TSI721_PC2SR_ZONES, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %60, %49
  %51 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %52 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TSI721_ZONE_SEL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @ioread32(i64 %55)
  %57 = load i32, i32* @TSI721_ZONE_SEL_GO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = call i32 @udelay(i32 1)
  br label %50

62:                                               ; preds = %50
  %63 = load i32, i32* @TSI721_ZONE_SEL_GO, align 4
  %64 = load i32, i32* %3, align 4
  %65 = shl i32 %64, 3
  %66 = or i32 %63, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %71 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TSI721_ZONE_SEL, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @iowrite32(i32 %69, i64 %74)
  br label %76

76:                                               ; preds = %62
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %45

79:                                               ; preds = %45
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %40

83:                                               ; preds = %40
  %84 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %85 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %83
  %92 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %93 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %92, i32 0, i32 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %101 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  br label %144

102:                                              ; preds = %91, %83
  %103 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %104 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %103, i32 0, i32 2
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %110 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %109, i32 0, i32 2
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i64 %108, i64* %113, align 8
  %114 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %115 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %114, i32 0, i32 2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 1
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %121 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %120, i32 0, i32 2
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  store i64 %119, i64* %124, align 8
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %137, %102
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @TSI721_OBWIN_NUM, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %131 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* %3, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 0, i32* %136, align 4
  br label %137

137:                                              ; preds = %129
  %138 = load i32, i32* %3, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %3, align 4
  br label %125

140:                                              ; preds = %125
  %141 = load i32, i32* @TSI721_OBWIN_NUM, align 4
  %142 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %143 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %140, %99
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @TSI721_OBWINLB(i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
