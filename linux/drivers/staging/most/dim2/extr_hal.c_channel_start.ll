; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_channel_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_channel_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.dim_channel = type { i64, i64, i64, %struct.int_ch_state }
%struct.int_ch_state = type { i32, i32 }

@DIM_ERR_BAD_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Bad buffer size\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Bad control/async buffer size\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Bad isochronous buffer size\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Bad synchronous buffer size\00", align 1
@DIM_ERR_OVERFLOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Channel overflow\00", align 1
@g = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dim_channel*, i32, i32)* @channel_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_start(%struct.dim_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dim_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.int_ch_state*, align 8
  store %struct.dim_channel* %0, %struct.dim_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dim_channel*, %struct.dim_channel** %5, align 8
  %10 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %9, i32 0, i32 3
  store %struct.int_ch_state* %10, %struct.int_ch_state** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @DIM_ERR_BAD_BUFFER_SIZE, align 4
  %15 = call i32 @dim_on_error(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %4, align 4
  br label %122

16:                                               ; preds = %3
  %17 = load %struct.dim_channel*, %struct.dim_channel** %5, align 8
  %18 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.dim_channel*, %struct.dim_channel** %5, align 8
  %23 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @dim_norm_ctrl_async_buffer_size(i32 %28)
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @DIM_ERR_BAD_BUFFER_SIZE, align 4
  %33 = call i32 @dim_on_error(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %4, align 4
  br label %122

34:                                               ; preds = %26, %21, %16
  %35 = load %struct.dim_channel*, %struct.dim_channel** %5, align 8
  %36 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.dim_channel*, %struct.dim_channel** %5, align 8
  %43 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @norm_isoc_buffer_size(i32 %41, i64 %44)
  %46 = icmp ne i32 %40, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @DIM_ERR_BAD_BUFFER_SIZE, align 4
  %49 = call i32 @dim_on_error(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 %49, i32* %4, align 4
  br label %122

50:                                               ; preds = %39, %34
  %51 = load %struct.dim_channel*, %struct.dim_channel** %5, align 8
  %52 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.dim_channel*, %struct.dim_channel** %5, align 8
  %59 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @norm_sync_buffer_size(i32 %57, i64 %60)
  %62 = icmp ne i32 %56, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @DIM_ERR_BAD_BUFFER_SIZE, align 4
  %65 = call i32 @dim_on_error(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 %65, i32* %4, align 4
  br label %122

66:                                               ; preds = %55, %50
  %67 = load %struct.int_ch_state*, %struct.int_ch_state** %8, align 8
  %68 = getelementptr inbounds %struct.int_ch_state, %struct.int_ch_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp uge i32 %69, 2
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @DIM_ERR_OVERFLOW, align 4
  %73 = call i32 @dim_on_error(i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 %73, i32* %4, align 4
  br label %122

74:                                               ; preds = %66
  %75 = load %struct.int_ch_state*, %struct.int_ch_state** %8, align 8
  %76 = getelementptr inbounds %struct.int_ch_state, %struct.int_ch_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.dim_channel*, %struct.dim_channel** %5, align 8
  %80 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0, i32 0), align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @dbrcnt_enq(i32 %85)
  br label %87

87:                                               ; preds = %84, %74
  %88 = load %struct.dim_channel*, %struct.dim_channel** %5, align 8
  %89 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.dim_channel*, %struct.dim_channel** %5, align 8
  %94 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %92, %87
  %98 = load %struct.dim_channel*, %struct.dim_channel** %5, align 8
  %99 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.int_ch_state*, %struct.int_ch_state** %8, align 8
  %102 = getelementptr inbounds %struct.int_ch_state, %struct.int_ch_state* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @dim2_start_isoc_sync(i64 %100, i32 %103, i32 %104, i32 %105)
  br label %117

107:                                              ; preds = %92
  %108 = load %struct.dim_channel*, %struct.dim_channel** %5, align 8
  %109 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.int_ch_state*, %struct.int_ch_state** %8, align 8
  %112 = getelementptr inbounds %struct.int_ch_state, %struct.int_ch_state* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @dim2_start_ctrl_async(i64 %110, i32 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %107, %97
  %118 = load %struct.int_ch_state*, %struct.int_ch_state** %8, align 8
  %119 = getelementptr inbounds %struct.int_ch_state, %struct.int_ch_state* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = xor i32 %120, 1
  store i32 %121, i32* %119, align 4
  store i32 1, i32* %4, align 4
  br label %122

122:                                              ; preds = %117, %71, %63, %47, %31, %13
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @dim_on_error(i32, i8*) #1

declare dso_local i32 @dim_norm_ctrl_async_buffer_size(i32) #1

declare dso_local i32 @norm_isoc_buffer_size(i32, i64) #1

declare dso_local i32 @norm_sync_buffer_size(i32, i64) #1

declare dso_local i32 @dbrcnt_enq(i32) #1

declare dso_local i32 @dim2_start_isoc_sync(i64, i32, i32, i32) #1

declare dso_local i32 @dim2_start_ctrl_async(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
