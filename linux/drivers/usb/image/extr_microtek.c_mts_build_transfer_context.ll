; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/image/extr_microtek.c_mts_build_transfer_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/image/extr_microtek.c_mts_build_transfer_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.mts_desc = type { %struct.TYPE_4__, i64, i32, i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, i64, i32*, %struct.scsi_cmnd*, %struct.mts_desc* }
%struct.TYPE_5__ = type { i64 }

@mts_read_image_sig = common dso_local global i32 0, align 4
@mts_read_image_sig_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"transferring from desc->ep_image == %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"transferring from desc->ep_response == %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"transferring to desc->ep_out == %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, %struct.mts_desc*)* @mts_build_transfer_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mts_build_transfer_context(%struct.scsi_cmnd* %0, %struct.mts_desc* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.mts_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.mts_desc* %1, %struct.mts_desc** %4, align 8
  %6 = call i32 (...) @MTS_DEBUG_GOT_HERE()
  %7 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %8 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %9 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 5
  store %struct.mts_desc* %7, %struct.mts_desc** %10, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %13 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  store %struct.scsi_cmnd* %11, %struct.scsi_cmnd** %14, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %20 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %23 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  br label %109

25:                                               ; preds = %2
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %27 = call %struct.TYPE_5__* @scsi_sglist(%struct.scsi_cmnd* %26)
  %28 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %29 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %30, align 8
  %31 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %32 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = call i32* @sg_virt(%struct.TYPE_5__* %34)
  %36 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %37 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store i32* %35, i32** %38, align 8
  %39 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %40 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %46 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i64 %44, i64* %47, align 8
  br label %48

48:                                               ; preds = %25
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @mts_read_image_sig, align 4
  %53 = load i32, i32* @mts_read_image_sig_len, align 4
  %54 = call i32 @memcmp(i32* %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %48
  %57 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %58 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %61 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @usb_rcvbulkpipe(i32 %59, i64 %62)
  store i32 %63, i32* %5, align 4
  %64 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %65 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @MTS_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %104

69:                                               ; preds = %48
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @MTS_DIRECTION_IS_IN(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %69
  %78 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %79 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %82 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @usb_rcvbulkpipe(i32 %80, i64 %83)
  store i32 %84, i32* %5, align 4
  %85 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %86 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @MTS_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %103

90:                                               ; preds = %69
  %91 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %92 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @MTS_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %97 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %100 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @usb_sndbulkpipe(i32 %98, i64 %101)
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %90, %77
  br label %104

104:                                              ; preds = %103, %56
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %107 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  br label %109

109:                                              ; preds = %104, %18
  ret void
}

declare dso_local i32 @MTS_DEBUG_GOT_HERE(...) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.TYPE_5__* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32* @sg_virt(%struct.TYPE_5__*) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i64) #1

declare dso_local i32 @MTS_DEBUG(i8*, i32) #1

declare dso_local i64 @MTS_DIRECTION_IS_IN(i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
