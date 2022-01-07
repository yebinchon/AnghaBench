; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/image/extr_microtek.c_mts_scsi_queuecommand_lck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/image/extr_microtek.c_mts_scsi_queuecommand_lck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64* }
%struct.mts_desc = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.scsi_cmnd*)* }

@.str = private unnamed_addr constant [52 x i8] c"Command to LUN=%d ID=%d CHANNEL=%d from SCSI layer\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"this device doesn't exist\0A\00", align 1
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@mts_command_done = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"error %d submitting URB\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32 (%struct.scsi_cmnd*)*)* @mts_scsi_queuecommand_lck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mts_scsi_queuecommand_lck(%struct.scsi_cmnd* %0, i32 (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32 (%struct.scsi_cmnd*)*, align 8
  %5 = alloca %struct.mts_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store i32 (%struct.scsi_cmnd*)* %1, i32 (%struct.scsi_cmnd*)** %4, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mts_desc*
  store %struct.mts_desc* %17, %struct.mts_desc** %5, align 8
  store i32 0, i32* %6, align 4
  %18 = call i32 (...) @MTS_DEBUG_GOT_HERE()
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %20 = call i32 @mts_show_command(%struct.scsi_cmnd* %19)
  %21 = load %struct.mts_desc*, %struct.mts_desc** %5, align 8
  %22 = call i32 @mts_debug_dump(%struct.mts_desc* %21)
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %2
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %36, %29, %2
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %51 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %50, i32 0, i32 3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 (i8*, ...) @MTS_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %55, i32 %61)
  %63 = call i32 (i8*, ...) @MTS_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @DID_BAD_TARGET, align 4
  %65 = shl i32 %64, 16
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %67 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %4, align 8
  %69 = icmp ne i32 (%struct.scsi_cmnd*)* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i64 @likely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %43
  %74 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %4, align 8
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %76 = call i32 %74(%struct.scsi_cmnd* %75)
  br label %77

77:                                               ; preds = %73, %43
  br label %135

78:                                               ; preds = %36
  %79 = load %struct.mts_desc*, %struct.mts_desc** %5, align 8
  %80 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mts_desc*, %struct.mts_desc** %5, align 8
  %83 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mts_desc*, %struct.mts_desc** %5, align 8
  %86 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mts_desc*, %struct.mts_desc** %5, align 8
  %89 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @usb_sndbulkpipe(i32 %87, i32 %90)
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %96 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @mts_command_done, align 4
  %99 = load %struct.mts_desc*, %struct.mts_desc** %5, align 8
  %100 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %99, i32 0, i32 1
  %101 = call i32 @usb_fill_bulk_urb(i32 %81, i32 %84, i32 %91, i32 %94, i32 %97, i32 %98, %struct.TYPE_6__* %100)
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %103 = load %struct.mts_desc*, %struct.mts_desc** %5, align 8
  %104 = call i32 @mts_build_transfer_context(%struct.scsi_cmnd* %102, %struct.mts_desc* %103)
  %105 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %4, align 8
  %106 = load %struct.mts_desc*, %struct.mts_desc** %5, align 8
  %107 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 (%struct.scsi_cmnd*)* %105, i32 (%struct.scsi_cmnd*)** %108, align 8
  %109 = load %struct.mts_desc*, %struct.mts_desc** %5, align 8
  %110 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @GFP_ATOMIC, align 4
  %113 = call i32 @usb_submit_urb(i32 %111, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %78
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @MTS_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @DID_ERROR, align 4
  %121 = shl i32 %120, 16
  %122 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %123 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %4, align 8
  %125 = icmp ne i32 (%struct.scsi_cmnd*)* %124, null
  %126 = zext i1 %125 to i32
  %127 = call i64 @likely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %117
  %130 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %4, align 8
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %132 = call i32 %130(%struct.scsi_cmnd* %131)
  br label %133

133:                                              ; preds = %129, %117
  br label %134

134:                                              ; preds = %133, %78
  br label %135

135:                                              ; preds = %134, %77
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i32 @MTS_DEBUG_GOT_HERE(...) #1

declare dso_local i32 @mts_show_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @mts_debug_dump(%struct.mts_desc*) #1

declare dso_local i32 @MTS_DEBUG(i8*, ...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @mts_build_transfer_context(%struct.scsi_cmnd*, %struct.mts_desc*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @MTS_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
