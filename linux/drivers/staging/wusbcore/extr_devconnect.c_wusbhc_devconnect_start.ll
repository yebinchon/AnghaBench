; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c_wusbhc_devconnect_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c_wusbhc_devconnect_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, i32, %struct.wuie_host_info*, i32, %struct.TYPE_3__*, %struct.device* }
%struct.wuie_host_info = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WUIE_ID_HOST_INFO = common dso_local global i32 0, align 4
@WUIE_HI_CAP_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cannot add Host Info MMCIE: %d\0A\00", align 1
@wusbd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusbhc_devconnect_start(%struct.wusbhc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.wuie_host_info*, align 8
  %6 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  %7 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %8 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %7, i32 0, i32 5
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.wuie_host_info* @kzalloc(i32 16, i32 %10)
  store %struct.wuie_host_info* %11, %struct.wuie_host_info** %5, align 8
  %12 = load %struct.wuie_host_info*, %struct.wuie_host_info** %5, align 8
  %13 = icmp eq %struct.wuie_host_info* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %68

17:                                               ; preds = %1
  %18 = load %struct.wuie_host_info*, %struct.wuie_host_info** %5, align 8
  %19 = getelementptr inbounds %struct.wuie_host_info, %struct.wuie_host_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 16, i32* %20, align 4
  %21 = load i32, i32* @WUIE_ID_HOST_INFO, align 4
  %22 = load %struct.wuie_host_info*, %struct.wuie_host_info** %5, align 8
  %23 = getelementptr inbounds %struct.wuie_host_info, %struct.wuie_host_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %26 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %25, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 3
  %31 = load i32, i32* @WUIE_HI_CAP_ALL, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @cpu_to_le16(i32 %32)
  %34 = load %struct.wuie_host_info*, %struct.wuie_host_info** %5, align 8
  %35 = getelementptr inbounds %struct.wuie_host_info, %struct.wuie_host_info* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %37 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.wuie_host_info*, %struct.wuie_host_info** %5, align 8
  %40 = getelementptr inbounds %struct.wuie_host_info, %struct.wuie_host_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %42 = load %struct.wuie_host_info*, %struct.wuie_host_info** %5, align 8
  %43 = getelementptr inbounds %struct.wuie_host_info, %struct.wuie_host_info* %42, i32 0, i32 0
  %44 = call i32 @wusbhc_mmcie_set(%struct.wusbhc* %41, i32 0, i32 0, %struct.TYPE_4__* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %17
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %64

51:                                               ; preds = %17
  %52 = load %struct.wuie_host_info*, %struct.wuie_host_info** %5, align 8
  %53 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %54 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %53, i32 0, i32 2
  store %struct.wuie_host_info* %52, %struct.wuie_host_info** %54, align 8
  %55 = load i32, i32* @wusbd, align 4
  %56 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %57 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %56, i32 0, i32 1
  %58 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %59 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sdiv i32 %60, 2
  %62 = call i32 @msecs_to_jiffies(i32 %61)
  %63 = call i32 @queue_delayed_work(i32 %55, i32* %57, i32 %62)
  store i32 0, i32* %2, align 4
  br label %68

64:                                               ; preds = %47
  %65 = load %struct.wuie_host_info*, %struct.wuie_host_info** %5, align 8
  %66 = call i32 @kfree(%struct.wuie_host_info* %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %51, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.wuie_host_info* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wusbhc_mmcie_set(%struct.wusbhc*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @kfree(%struct.wuie_host_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
