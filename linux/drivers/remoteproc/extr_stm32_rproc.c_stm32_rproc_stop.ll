; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i64, i32, %struct.stm32_rproc* }
%struct.stm32_rproc = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@RPROC_OFFLINE = common dso_local global i64 0, align 8
@STM32_MBX_SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"warning: remote FW shutdown without ack\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to assert the reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"failed to set pdds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @stm32_rproc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rproc_stop(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.stm32_rproc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %8 = load %struct.rproc*, %struct.rproc** %3, align 8
  %9 = getelementptr inbounds %struct.rproc, %struct.rproc* %8, i32 0, i32 2
  %10 = load %struct.stm32_rproc*, %struct.stm32_rproc** %9, align 8
  store %struct.stm32_rproc* %10, %struct.stm32_rproc** %4, align 8
  %11 = load %struct.rproc*, %struct.rproc** %3, align 8
  %12 = getelementptr inbounds %struct.rproc, %struct.rproc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RPROC_OFFLINE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %1
  %17 = load %struct.rproc*, %struct.rproc** %3, align 8
  %18 = load i32, i32* @STM32_MBX_SHUTDOWN, align 4
  %19 = call i32 @stm32_rproc_mbox_idx(%struct.rproc* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = load %struct.stm32_rproc*, %struct.stm32_rproc** %4, align 8
  %24 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %22
  %33 = load %struct.stm32_rproc*, %struct.stm32_rproc** %4, align 8
  %34 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @mbox_send_message(i64 %40, i32* %6)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load %struct.rproc*, %struct.rproc** %3, align 8
  %46 = getelementptr inbounds %struct.rproc, %struct.rproc* %45, i32 0, i32 1
  %47 = call i32 @dev_warn(i32* %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %32
  br label %49

49:                                               ; preds = %48, %22, %16
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.rproc*, %struct.rproc** %3, align 8
  %52 = call i32 @stm32_rproc_set_hold_boot(%struct.rproc* %51, i32 1)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %98

57:                                               ; preds = %50
  %58 = load %struct.stm32_rproc*, %struct.stm32_rproc** %4, align 8
  %59 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @reset_control_assert(i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.rproc*, %struct.rproc** %3, align 8
  %66 = getelementptr inbounds %struct.rproc, %struct.rproc* %65, i32 0, i32 1
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %98

69:                                               ; preds = %57
  %70 = load %struct.stm32_rproc*, %struct.stm32_rproc** %4, align 8
  %71 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %69
  %76 = load %struct.stm32_rproc*, %struct.stm32_rproc** %4, align 8
  %77 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.stm32_rproc*, %struct.stm32_rproc** %4, align 8
  %81 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.stm32_rproc*, %struct.stm32_rproc** %4, align 8
  %85 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @regmap_update_bits(i64 %79, i32 %83, i32 %87, i32 1)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %75
  %92 = load %struct.rproc*, %struct.rproc** %3, align 8
  %93 = getelementptr inbounds %struct.rproc, %struct.rproc* %92, i32 0, i32 1
  %94 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %98

96:                                               ; preds = %75
  br label %97

97:                                               ; preds = %96, %69
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %91, %64, %55
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @stm32_rproc_mbox_idx(%struct.rproc*, i32) #1

declare dso_local i32 @mbox_send_message(i64, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @stm32_rproc_set_hold_boot(%struct.rproc*, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @regmap_update_bits(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
