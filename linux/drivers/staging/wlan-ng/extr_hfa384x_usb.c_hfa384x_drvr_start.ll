; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_drvr_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_drvr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Cannot get bulk in endpoint status.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to reset bulk in endpoint.\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Cannot get bulk out endpoint status.\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to reset bulk out endpoint.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Fatal, failed to submit RX URB, result=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"cmd_initialize() failed on two attempts, results %d and %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"First cmd_initialize() failed (result %d),\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"but second attempt succeeded. All should be ok\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"First cmd_initialize() succeeded, but second attempt failed (result=%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Most likely the card will be functional\0A\00", align 1
@HFA384x_STATE_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfa384x_drvr_start(%struct.hfa384x* %0) #0 {
  %2 = alloca %struct.hfa384x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hfa384x* %0, %struct.hfa384x** %2, align 8
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %9 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %12 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %13 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_get_std_status(i32 %10, i32 %11, i32 %14, i32* %6)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %20 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @netdev_err(i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %149

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %30 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %33 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @usb_clear_halt(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %39 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @netdev_err(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %37, %28, %25
  %45 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %46 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %49 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %50 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @usb_get_std_status(i32 %47, i32 %48, i32 %51, i32* %6)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %44
  %56 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %57 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @netdev_err(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %149

62:                                               ; preds = %44
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %67 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %70 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @usb_clear_halt(i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  %75 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %76 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, ...) @netdev_err(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %74, %65, %62
  %82 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %83 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %82, i32 0, i32 2
  %84 = call i32 @usb_kill_urb(i32* %83)
  %85 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i32 @submit_rx_urb(%struct.hfa384x* %85, i32 %86)
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %92 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %3, align 4
  %97 = call i32 (i32, i8*, ...) @netdev_err(i32 %95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  br label %149

98:                                               ; preds = %81
  %99 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %100 = call i32 @hfa384x_cmd_initialize(%struct.hfa384x* %99)
  store i32 %100, i32* %4, align 4
  %101 = call i32 @msleep(i32 1000)
  %102 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %103 = call i32 @hfa384x_cmd_initialize(%struct.hfa384x* %102)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %98
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %112 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 (i32, i8*, ...) @netdev_err(i32 %115, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %120 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %119, i32 0, i32 2
  %121 = call i32 @usb_kill_urb(i32* %120)
  br label %149

122:                                              ; preds = %107
  %123 = load i32, i32* %4, align 4
  %124 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  %125 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %126

126:                                              ; preds = %122
  br label %145

127:                                              ; preds = %98
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %132 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %131, i32 0, i32 1
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %5, align 4
  %137 = call i32 (i32, i8*, ...) @netdev_warn(i32 %135, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0), i32 %136)
  %138 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %139 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %138, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i8*, ...) @netdev_warn(i32 %142, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  br label %149

144:                                              ; preds = %127
  br label %145

145:                                              ; preds = %144, %126
  %146 = load i32, i32* @HFA384x_STATE_RUNNING, align 4
  %147 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %148 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %145, %130, %110, %90, %55, %18
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @usb_get_std_status(i32, i32, i32, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i64 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @submit_rx_urb(%struct.hfa384x*, i32) #1

declare dso_local i32 @hfa384x_cmd_initialize(%struct.hfa384x*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @netdev_warn(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
