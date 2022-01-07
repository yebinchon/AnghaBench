; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_ep_config_from_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_ep_config_from_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb_fifo_cfg = type { i32 }
%struct.musb = type { i32, %struct.TYPE_2__*, i32, %struct.musb_hw_ep* }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.musb_fifo_cfg* }
%struct.musb_hw_ep = type { i32 }

@fifo_mode = common dso_local global i32 0, align 4
@mode_0_cfg = common dso_local global %struct.musb_fifo_cfg* null, align 8
@mode_1_cfg = common dso_local global %struct.musb_fifo_cfg* null, align 8
@mode_2_cfg = common dso_local global %struct.musb_fifo_cfg* null, align 8
@mode_3_cfg = common dso_local global %struct.musb_fifo_cfg* null, align 8
@mode_4_cfg = common dso_local global %struct.musb_fifo_cfg* null, align 8
@mode_5_cfg = common dso_local global %struct.musb_fifo_cfg* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"%s: setup fifo_mode %d\0A\00", align 1
@musb_driver_name = common dso_local global i32 0, align 4
@ep0_cfg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: invalid ep %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: mem overrun, ep %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: %d/%d max ep, %d/%d memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s: missing bulk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*)* @ep_config_from_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_config_from_table(%struct.musb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musb*, align 8
  %4 = alloca %struct.musb_fifo_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.musb_hw_ep*, align 8
  %9 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %3, align 8
  %10 = load %struct.musb*, %struct.musb** %3, align 8
  %11 = getelementptr inbounds %struct.musb, %struct.musb* %10, i32 0, i32 3
  %12 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %11, align 8
  store %struct.musb_hw_ep* %12, %struct.musb_hw_ep** %8, align 8
  %13 = load %struct.musb*, %struct.musb** %3, align 8
  %14 = getelementptr inbounds %struct.musb, %struct.musb* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** %16, align 8
  %18 = icmp ne %struct.musb_fifo_cfg* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.musb*, %struct.musb** %3, align 8
  %21 = getelementptr inbounds %struct.musb, %struct.musb* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** %23, align 8
  store %struct.musb_fifo_cfg* %24, %struct.musb_fifo_cfg** %4, align 8
  %25 = load %struct.musb*, %struct.musb** %3, align 8
  %26 = getelementptr inbounds %struct.musb, %struct.musb* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  br label %61

30:                                               ; preds = %1
  %31 = load i32, i32* @fifo_mode, align 4
  switch i32 %31, label %32 [
    i32 0, label %33
    i32 1, label %37
    i32 2, label %41
    i32 3, label %45
    i32 4, label %49
    i32 5, label %53
  ]

32:                                               ; preds = %30
  store i32 0, i32* @fifo_mode, align 4
  br label %33

33:                                               ; preds = %30, %32
  %34 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** @mode_0_cfg, align 8
  store %struct.musb_fifo_cfg* %34, %struct.musb_fifo_cfg** %4, align 8
  %35 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** @mode_0_cfg, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.musb_fifo_cfg* %35)
  store i32 %36, i32* %6, align 4
  br label %57

37:                                               ; preds = %30
  %38 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** @mode_1_cfg, align 8
  store %struct.musb_fifo_cfg* %38, %struct.musb_fifo_cfg** %4, align 8
  %39 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** @mode_1_cfg, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.musb_fifo_cfg* %39)
  store i32 %40, i32* %6, align 4
  br label %57

41:                                               ; preds = %30
  %42 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** @mode_2_cfg, align 8
  store %struct.musb_fifo_cfg* %42, %struct.musb_fifo_cfg** %4, align 8
  %43 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** @mode_2_cfg, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.musb_fifo_cfg* %43)
  store i32 %44, i32* %6, align 4
  br label %57

45:                                               ; preds = %30
  %46 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** @mode_3_cfg, align 8
  store %struct.musb_fifo_cfg* %46, %struct.musb_fifo_cfg** %4, align 8
  %47 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** @mode_3_cfg, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.musb_fifo_cfg* %47)
  store i32 %48, i32* %6, align 4
  br label %57

49:                                               ; preds = %30
  %50 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** @mode_4_cfg, align 8
  store %struct.musb_fifo_cfg* %50, %struct.musb_fifo_cfg** %4, align 8
  %51 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** @mode_4_cfg, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.musb_fifo_cfg* %51)
  store i32 %52, i32* %6, align 4
  br label %57

53:                                               ; preds = %30
  %54 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** @mode_5_cfg, align 8
  store %struct.musb_fifo_cfg* %54, %struct.musb_fifo_cfg** %4, align 8
  %55 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** @mode_5_cfg, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.musb_fifo_cfg* %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %49, %45, %41, %37, %33
  %58 = load i32, i32* @musb_driver_name, align 4
  %59 = load i32, i32* @fifo_mode, align 4
  %60 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %19
  %62 = load %struct.musb*, %struct.musb** %3, align 8
  %63 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %8, align 8
  %64 = call i32 @fifo_setup(%struct.musb* %62, %struct.musb_hw_ep* %63, i32* @ep0_cfg, i32 0)
  store i32 %64, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %114, %61
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %117

69:                                               ; preds = %65
  %70 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** %4, align 8
  %71 = getelementptr inbounds %struct.musb_fifo_cfg, %struct.musb_fifo_cfg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.musb*, %struct.musb** %3, align 8
  %75 = getelementptr inbounds %struct.musb, %struct.musb* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %73, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %69
  %81 = load i32, i32* @musb_driver_name, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %147

86:                                               ; preds = %69
  %87 = load %struct.musb*, %struct.musb** %3, align 8
  %88 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %88, i64 %90
  %92 = load %struct.musb_fifo_cfg*, %struct.musb_fifo_cfg** %4, align 8
  %93 = getelementptr inbounds %struct.musb_fifo_cfg, %struct.musb_fifo_cfg* %92, i32 1
  store %struct.musb_fifo_cfg* %93, %struct.musb_fifo_cfg** %4, align 8
  %94 = bitcast %struct.musb_fifo_cfg* %92 to i32*
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @fifo_setup(%struct.musb* %87, %struct.musb_hw_ep* %91, i32* %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %86
  %100 = load i32, i32* @musb_driver_name, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %147

104:                                              ; preds = %86
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.musb*, %struct.musb** %3, align 8
  %109 = getelementptr inbounds %struct.musb, %struct.musb* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @max(i32 %107, i32 %110)
  %112 = load %struct.musb*, %struct.musb** %3, align 8
  %113 = getelementptr inbounds %struct.musb, %struct.musb* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %5, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %65

117:                                              ; preds = %65
  %118 = load i32, i32* @musb_driver_name, align 4
  %119 = load i32, i32* %6, align 4
  %120 = add i32 %119, 1
  %121 = load %struct.musb*, %struct.musb** %3, align 8
  %122 = getelementptr inbounds %struct.musb, %struct.musb* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %125, 2
  %127 = sub nsw i32 %126, 1
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.musb*, %struct.musb** %3, align 8
  %130 = getelementptr inbounds %struct.musb, %struct.musb* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 2
  %135 = shl i32 1, %134
  %136 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %120, i32 %127, i32 %128, i32 %135)
  %137 = load %struct.musb*, %struct.musb** %3, align 8
  %138 = getelementptr inbounds %struct.musb, %struct.musb* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %117
  %142 = load i32, i32* @musb_driver_name, align 4
  %143 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %147

146:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %141, %99, %80
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @ARRAY_SIZE(%struct.musb_fifo_cfg*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @fifo_setup(%struct.musb*, %struct.musb_hw_ep*, i32*, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
