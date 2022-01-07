; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_msg_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_msg_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, %struct.completion* }
%struct.completion = type { i32 }

@US_FLIDX_ABORTING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@US_FLIDX_URB_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"-- cancelling URB\0A\00", align 1
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s -- cancelling URB\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Signal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32)* @usb_stor_msg_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_stor_msg_common(%struct.us_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.completion, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @US_FLIDX_ABORTING, align 4
  %10 = load %struct.us_data*, %struct.us_data** %4, align 8
  %11 = getelementptr inbounds %struct.us_data, %struct.us_data* %10, i32 0, i32 2
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %117

17:                                               ; preds = %2
  %18 = call i32 @init_completion(%struct.completion* %6)
  %19 = load %struct.us_data*, %struct.us_data** %4, align 8
  %20 = getelementptr inbounds %struct.us_data, %struct.us_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  store %struct.completion* %6, %struct.completion** %22, align 8
  %23 = load %struct.us_data*, %struct.us_data** %4, align 8
  %24 = getelementptr inbounds %struct.us_data, %struct.us_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32 0, i32* %26, align 8
  %27 = load %struct.us_data*, %struct.us_data** %4, align 8
  %28 = getelementptr inbounds %struct.us_data, %struct.us_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.us_data*, %struct.us_data** %4, align 8
  %33 = getelementptr inbounds %struct.us_data, %struct.us_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %17
  %37 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %38 = load %struct.us_data*, %struct.us_data** %4, align 8
  %39 = getelementptr inbounds %struct.us_data, %struct.us_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %36, %17
  %45 = load %struct.us_data*, %struct.us_data** %4, align 8
  %46 = getelementptr inbounds %struct.us_data, %struct.us_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.us_data*, %struct.us_data** %4, align 8
  %49 = getelementptr inbounds %struct.us_data, %struct.us_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 4
  %52 = load %struct.us_data*, %struct.us_data** %4, align 8
  %53 = getelementptr inbounds %struct.us_data, %struct.us_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* @GFP_NOIO, align 4
  %56 = call i32 @usb_submit_urb(%struct.TYPE_4__* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %117

61:                                               ; preds = %44
  %62 = load i32, i32* @US_FLIDX_URB_ACTIVE, align 4
  %63 = load %struct.us_data*, %struct.us_data** %4, align 8
  %64 = getelementptr inbounds %struct.us_data, %struct.us_data* %63, i32 0, i32 2
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  %66 = load i32, i32* @US_FLIDX_ABORTING, align 4
  %67 = load %struct.us_data*, %struct.us_data** %4, align 8
  %68 = getelementptr inbounds %struct.us_data, %struct.us_data* %67, i32 0, i32 2
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %61
  %72 = load i32, i32* @US_FLIDX_URB_ACTIVE, align 4
  %73 = load %struct.us_data*, %struct.us_data** %4, align 8
  %74 = getelementptr inbounds %struct.us_data, %struct.us_data* %73, i32 0, i32 2
  %75 = call i64 @test_and_clear_bit(i32 %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.us_data*, %struct.us_data** %4, align 8
  %79 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.us_data*, %struct.us_data** %4, align 8
  %81 = getelementptr inbounds %struct.us_data, %struct.us_data* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = call i32 @usb_unlink_urb(%struct.TYPE_4__* %82)
  br label %84

84:                                               ; preds = %77, %71
  br label %85

85:                                               ; preds = %84, %61
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  br label %91

91:                                               ; preds = %89, %88
  %92 = phi i32 [ %86, %88 ], [ %90, %89 ]
  %93 = call i64 @wait_for_completion_interruptible_timeout(%struct.completion* %6, i32 %92)
  store i64 %93, i64* %7, align 8
  %94 = load i32, i32* @US_FLIDX_URB_ACTIVE, align 4
  %95 = load %struct.us_data*, %struct.us_data** %4, align 8
  %96 = getelementptr inbounds %struct.us_data, %struct.us_data* %95, i32 0, i32 2
  %97 = call i32 @clear_bit(i32 %94, i32* %96)
  %98 = load i64, i64* %7, align 8
  %99 = icmp sle i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %91
  %101 = load %struct.us_data*, %struct.us_data** %4, align 8
  %102 = load i64, i64* %7, align 8
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %106 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %105)
  %107 = load %struct.us_data*, %struct.us_data** %4, align 8
  %108 = getelementptr inbounds %struct.us_data, %struct.us_data* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = call i32 @usb_kill_urb(%struct.TYPE_4__* %109)
  br label %111

111:                                              ; preds = %100, %91
  %112 = load %struct.us_data*, %struct.us_data** %4, align 8
  %113 = getelementptr inbounds %struct.us_data, %struct.us_data* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %111, %59, %14
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @usb_unlink_urb(%struct.TYPE_4__*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(%struct.completion*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
