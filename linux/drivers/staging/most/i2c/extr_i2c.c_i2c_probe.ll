; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/i2c/extr_i2c.c_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/i2c/extr_i2c.c_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.hdm_i2c = type { %struct.TYPE_8__, %struct.i2c_client*, %struct.TYPE_7__, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"i2c-%d-%04x\00", align 1
@NUM_CHANNELS = common dso_local global i32 0, align 4
@MOST_CH_CONTROL = common dso_local global i32 0, align 4
@MAX_BUFFERS_CONTROL = common dso_local global i32 0, align 4
@MAX_BUF_SIZE_CONTROL = common dso_local global i32 0, align 4
@MOST_CH_RX = common dso_local global i32 0, align 4
@CH_RX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@MOST_CH_TX = common dso_local global i32 0, align 4
@CH_TX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@ITYPE_I2C = common dso_local global i32 0, align 4
@configure_channel = common dso_local global i32 0, align 4
@enqueue = common dso_local global i32 0, align 4
@poison_channel = common dso_local global i32 0, align 4
@pending_rx_work = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to register i2c as a MOST interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.hdm_i2c*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.hdm_i2c* @kzalloc(i32 64, i32 %9)
  store %struct.hdm_i2c* %10, %struct.hdm_i2c** %6, align 8
  %11 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %12 = icmp ne %struct.hdm_i2c* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %146

16:                                               ; preds = %2
  %17 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %18 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snprintf(i32 %19, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %58, %16
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @NUM_CHANNELS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = load i32, i32* @MOST_CH_CONTROL, align 4
  %35 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %36 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  store i32 %34, i32* %41, align 4
  %42 = load i32, i32* @MAX_BUFFERS_CONTROL, align 4
  %43 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %44 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  store i32 %42, i32* %49, align 8
  %50 = load i32, i32* @MAX_BUF_SIZE_CONTROL, align 4
  %51 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %52 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %51, i32 0, i32 3
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 %50, i32* %57, align 4
  br label %58

58:                                               ; preds = %33
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %29

61:                                               ; preds = %29
  %62 = load i32, i32* @MOST_CH_RX, align 4
  %63 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %64 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %63, i32 0, i32 3
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i64, i64* @CH_RX, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i32 %62, i32* %68, align 8
  %69 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %70 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %69, i32 0, i32 3
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i64, i64* @CH_RX, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %74, align 8
  %75 = load i32, i32* @MOST_CH_TX, align 4
  %76 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %77 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %76, i32 0, i32 3
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i64, i64* @CH_TX, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 %75, i32* %81, align 8
  %82 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %83 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i64, i64* @CH_TX, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %87, align 8
  %88 = load i32, i32* @ITYPE_I2C, align 4
  %89 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %90 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 6
  store i32 %88, i32* %91, align 4
  %92 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %93 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %96 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 5
  store i32 %94, i32* %97, align 8
  %98 = load i32, i32* @NUM_CHANNELS, align 4
  %99 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %100 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %103 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %102, i32 0, i32 3
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %106 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 4
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %107, align 8
  %108 = load i32, i32* @configure_channel, align 4
  %109 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %110 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @enqueue, align 4
  %113 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %114 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  store i32 %112, i32* %115, align 8
  %116 = load i32, i32* @poison_channel, align 4
  %117 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %118 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %121 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = call i32 @INIT_LIST_HEAD(i32* %122)
  %124 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %125 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* @pending_rx_work, align 4
  %128 = call i32 @INIT_DELAYED_WORK(i32* %126, i32 %127)
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %131 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %130, i32 0, i32 1
  store %struct.i2c_client* %129, %struct.i2c_client** %131, align 8
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %134 = call i32 @i2c_set_clientdata(%struct.i2c_client* %132, %struct.hdm_i2c* %133)
  %135 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %136 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %135, i32 0, i32 0
  %137 = call i32 @most_register_interface(%struct.TYPE_8__* %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %61
  %141 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %142 = load %struct.hdm_i2c*, %struct.hdm_i2c** %6, align 8
  %143 = call i32 @kfree(%struct.hdm_i2c* %142)
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %3, align 4
  br label %146

145:                                              ; preds = %61
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %140, %13
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.hdm_i2c* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.hdm_i2c*) #1

declare dso_local i32 @most_register_interface(%struct.TYPE_8__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.hdm_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
