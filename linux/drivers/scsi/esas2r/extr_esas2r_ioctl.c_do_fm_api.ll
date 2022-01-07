; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_do_fm_api.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_do_fm_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, %struct.TYPE_5__, %struct.TYPE_4__*, i64, i32, %struct.TYPE_6__, %struct.esas2r_flash_img* }
%struct.TYPE_5__ = type { i64, %struct.esas2r_flash_img*, %struct.esas2r_flash_img }
%struct.esas2r_flash_img = type { i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.esas2r_flash_img*, i8* }
%struct.esas2r_request = type { i32 }

@FI_STAT_BUSY = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to allocate header buffer!\00", align 1
@get_physaddr_fm_api_header = common dso_local global i64 0, align 8
@get_physaddr_fm_api = common dso_local global i64 0, align 8
@complete_fm_api_req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_flash_img*)* @do_fm_api to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_fm_api(%struct.esas2r_adapter* %0, %struct.esas2r_flash_img* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_flash_img*, align 8
  %5 = alloca %struct.esas2r_request*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_flash_img* %1, %struct.esas2r_flash_img** %4, align 8
  %6 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %6, i32 0, i32 0
  %8 = call i64 @mutex_lock_interruptible(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** @FI_STAT_BUSY, align 8
  %12 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %4, align 8
  %13 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  br label %154

14:                                               ; preds = %2
  %15 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %16 = call %struct.esas2r_request* @esas2r_alloc_request(%struct.esas2r_adapter* %15)
  store %struct.esas2r_request* %16, %struct.esas2r_request** %5, align 8
  %17 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %18 = icmp eq %struct.esas2r_request* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i8*, i8** @FI_STAT_BUSY, align 8
  %21 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %4, align 8
  %22 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  br label %150

23:                                               ; preds = %14
  %24 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %4, align 8
  %25 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = icmp eq %struct.esas2r_flash_img* %24, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %23
  %30 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = bitcast i64* %36 to i32*
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.esas2r_flash_img* @dma_alloc_coherent(i32* %33, i64 8, i32* %37, i32 %38)
  %40 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store %struct.esas2r_flash_img* %39, %struct.esas2r_flash_img** %42, align 8
  %43 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %45, align 8
  %47 = icmp eq %struct.esas2r_flash_img* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %29
  %49 = call i32 @esas2r_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %50 = load i8*, i8** @FI_STAT_BUSY, align 8
  %51 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %4, align 8
  %52 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  br label %146

53:                                               ; preds = %29
  %54 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %56, align 8
  %58 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %4, align 8
  %59 = call i32 @memcpy(%struct.esas2r_flash_img* %57, %struct.esas2r_flash_img* %58, i32 8)
  %60 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %62, align 8
  %64 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %64, i32 0, i32 6
  store %struct.esas2r_flash_img* %63, %struct.esas2r_flash_img** %65, align 8
  %66 = load i64, i64* @get_physaddr_fm_api_header, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  br label %80

71:                                               ; preds = %23
  %72 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %4, align 8
  %73 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %73, i32 0, i32 6
  store %struct.esas2r_flash_img* %72, %struct.esas2r_flash_img** %74, align 8
  %75 = load i64, i64* @get_physaddr_fm_api, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i8* %76, i8** %79, align 8
  br label %80

80:                                               ; preds = %71, %53
  %81 = load i32, i32* @complete_fm_api_req, align 4
  %82 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %83 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %86, i32 0, i32 6
  %88 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %87, align 8
  %89 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store %struct.esas2r_flash_img* %88, %struct.esas2r_flash_img** %91, align 8
  %92 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %93 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %93, i32 0, i32 6
  %95 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %94, align 8
  %96 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %97 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %97, i32 0, i32 5
  %99 = call i32 @esas2r_fm_api(%struct.esas2r_adapter* %92, %struct.esas2r_flash_img* %95, %struct.esas2r_request* %96, %struct.TYPE_6__* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %80
  br label %118

102:                                              ; preds = %80
  br label %103

103:                                              ; preds = %109, %102
  %104 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  %108 = xor i1 %107, true
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %114 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @wait_event_interruptible(i32 %112, i64 %115)
  br label %103

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117, %101
  %119 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %4, align 8
  %120 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = icmp eq %struct.esas2r_flash_img* %119, %122
  br i1 %123, label %124, label %145

124:                                              ; preds = %118
  %125 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %4, align 8
  %126 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %127 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %128, align 8
  %130 = call i32 @memcpy(%struct.esas2r_flash_img* %125, %struct.esas2r_flash_img* %129, i32 8)
  %131 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %132 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %131, i32 0, i32 2
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %137, align 8
  %139 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %140 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 @dma_free_coherent(i32* %134, i64 8, %struct.esas2r_flash_img* %138, i32 %143)
  br label %145

145:                                              ; preds = %124, %118
  br label %146

146:                                              ; preds = %145, %48
  %147 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %148 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %149 = call i32 @esas2r_free_request(%struct.esas2r_adapter* %147, %struct.esas2r_request* %148)
  br label %150

150:                                              ; preds = %146, %19
  %151 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %152 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  br label %154

154:                                              ; preds = %150, %10
  ret void
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.esas2r_request* @esas2r_alloc_request(%struct.esas2r_adapter*) #1

declare dso_local %struct.esas2r_flash_img* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @esas2r_debug(i8*) #1

declare dso_local i32 @memcpy(%struct.esas2r_flash_img*, %struct.esas2r_flash_img*, i32) #1

declare dso_local i32 @esas2r_fm_api(%struct.esas2r_adapter*, %struct.esas2r_flash_img*, %struct.esas2r_request*, %struct.TYPE_6__*) #1

declare dso_local i32 @wait_event_interruptible(i32, i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, %struct.esas2r_flash_img*, i32) #1

declare dso_local i32 @esas2r_free_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
