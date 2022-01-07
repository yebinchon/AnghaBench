; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_handle_buffered_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_handle_buffered_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.esas2r_buffered_ioctl = type { i64, i64, i32, i32 (%struct.esas2r_adapter*, %struct.esas2r_request*, i32)*, i32, i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*, %struct.esas2r_sg_context*, i32)*, i64, %struct.esas2r_adapter.1* }
%struct.esas2r_adapter = type opaque
%struct.esas2r_request = type { i32 }
%struct.esas2r_adapter.0 = type opaque
%struct.esas2r_sg_context = type { i64, i64, i64 }
%struct.esas2r_adapter.1 = type { i64, i32, %struct.TYPE_2__* }

@IOCTL_SUCCESS = common dso_local global i64 0, align 8
@buffered_ioctl_semaphore = common dso_local global i32 0, align 4
@IOCTL_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@esas2r_buffered_ioctl = common dso_local global i64 0, align 8
@esas2r_buffered_ioctl_size = common dso_local global i64 0, align 8
@esas2r_buffered_ioctl_addr = common dso_local global i32 0, align 4
@esas2r_buffered_ioctl_pcid = common dso_local global %struct.TYPE_2__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ESAS2R_LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"could not allocate %d bytes of consistent memory for a buffered ioctl!\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"buffered ioctl alloc failure\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"could not allocate an internal request\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"buffered ioctl - no requests\00", align 1
@complete_buffered_ioctl_req = common dso_local global i32 0, align 4
@get_physaddr_buffered_ioctl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.esas2r_buffered_ioctl*)* @handle_buffered_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @handle_buffered_ioctl(%struct.esas2r_buffered_ioctl* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.esas2r_buffered_ioctl*, align 8
  %4 = alloca %struct.esas2r_adapter.1*, align 8
  %5 = alloca %struct.esas2r_request*, align 8
  %6 = alloca %struct.esas2r_sg_context, align 8
  %7 = alloca i64, align 8
  store %struct.esas2r_buffered_ioctl* %0, %struct.esas2r_buffered_ioctl** %3, align 8
  %8 = load %struct.esas2r_buffered_ioctl*, %struct.esas2r_buffered_ioctl** %3, align 8
  %9 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %8, i32 0, i32 7
  %10 = load %struct.esas2r_adapter.1*, %struct.esas2r_adapter.1** %9, align 8
  store %struct.esas2r_adapter.1* %10, %struct.esas2r_adapter.1** %4, align 8
  %11 = load i64, i64* @IOCTL_SUCCESS, align 8
  store i64 %11, i64* %7, align 8
  %12 = call i64 @down_interruptible(i32* @buffered_ioctl_semaphore)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @IOCTL_OUT_OF_RESOURCES, align 8
  store i64 %15, i64* %2, align 8
  br label %165

16:                                               ; preds = %1
  %17 = load i64, i64* @esas2r_buffered_ioctl, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i64, i64* @esas2r_buffered_ioctl_size, align 8
  %21 = load %struct.esas2r_buffered_ioctl*, %struct.esas2r_buffered_ioctl** %3, align 8
  %22 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.esas2r_adapter.1*, %struct.esas2r_adapter.1** %4, align 8
  %27 = getelementptr inbounds %struct.esas2r_adapter.1, %struct.esas2r_adapter.1* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* @esas2r_buffered_ioctl_size, align 8
  %31 = load i64, i64* @esas2r_buffered_ioctl, align 8
  %32 = load i32, i32* @esas2r_buffered_ioctl_addr, align 4
  %33 = call i32 @dma_free_coherent(i32* %29, i64 %30, i64 %31, i32 %32)
  br label %36

34:                                               ; preds = %19
  br label %50

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.esas2r_buffered_ioctl*, %struct.esas2r_buffered_ioctl** %3, align 8
  %38 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* @esas2r_buffered_ioctl_size, align 8
  %40 = load %struct.esas2r_adapter.1*, %struct.esas2r_adapter.1** %4, align 8
  %41 = getelementptr inbounds %struct.esas2r_adapter.1, %struct.esas2r_adapter.1* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  store %struct.TYPE_2__* %42, %struct.TYPE_2__** @esas2r_buffered_ioctl_pcid, align 8
  %43 = load %struct.esas2r_adapter.1*, %struct.esas2r_adapter.1** %4, align 8
  %44 = getelementptr inbounds %struct.esas2r_adapter.1, %struct.esas2r_adapter.1* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* @esas2r_buffered_ioctl_size, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i64 @dma_alloc_coherent(i32* %46, i64 %47, i32* @esas2r_buffered_ioctl_addr, i32 %48)
  store i64 %49, i64* @esas2r_buffered_ioctl, align 8
  br label %50

50:                                               ; preds = %36, %34
  %51 = load i64, i64* @esas2r_buffered_ioctl, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %55 = load %struct.esas2r_buffered_ioctl*, %struct.esas2r_buffered_ioctl** %3, align 8
  %56 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32, i8*, ...) @esas2r_log(i32 %54, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = call i32 @esas2r_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i64, i64* @IOCTL_OUT_OF_RESOURCES, align 8
  store i64 %60, i64* %7, align 8
  br label %149

61:                                               ; preds = %50
  %62 = load i64, i64* @esas2r_buffered_ioctl, align 8
  %63 = load %struct.esas2r_buffered_ioctl*, %struct.esas2r_buffered_ioctl** %3, align 8
  %64 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.esas2r_buffered_ioctl*, %struct.esas2r_buffered_ioctl** %3, align 8
  %67 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @memcpy(i64 %62, i64 %65, i64 %68)
  %70 = load %struct.esas2r_adapter.1*, %struct.esas2r_adapter.1** %4, align 8
  %71 = call %struct.esas2r_request* @esas2r_alloc_request(%struct.esas2r_adapter.1* %70)
  store %struct.esas2r_request* %71, %struct.esas2r_request** %5, align 8
  %72 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %73 = icmp eq %struct.esas2r_request* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %61
  %75 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %76 = call i32 (i32, i8*, ...) @esas2r_log(i32 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i64, i64* @IOCTL_OUT_OF_RESOURCES, align 8
  store i64 %77, i64* %7, align 8
  %78 = call i32 @esas2r_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %149

79:                                               ; preds = %61
  %80 = load %struct.esas2r_adapter.1*, %struct.esas2r_adapter.1** %4, align 8
  %81 = getelementptr inbounds %struct.esas2r_adapter.1, %struct.esas2r_adapter.1* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @complete_buffered_ioctl_req, align 4
  %83 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %84 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i64, i64* @esas2r_buffered_ioctl, align 8
  %86 = load %struct.esas2r_buffered_ioctl*, %struct.esas2r_buffered_ioctl** %3, align 8
  %87 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %6, i32 0, i32 2
  store i64 %89, i64* %90, align 8
  %91 = load i64, i64* @get_physaddr_buffered_ioctl, align 8
  %92 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %6, i32 0, i32 1
  store i64 %91, i64* %92, align 8
  %93 = load i64, i64* @esas2r_buffered_ioctl_size, align 8
  %94 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %6, i32 0, i32 0
  store i64 %93, i64* %94, align 8
  %95 = load %struct.esas2r_buffered_ioctl*, %struct.esas2r_buffered_ioctl** %3, align 8
  %96 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %95, i32 0, i32 5
  %97 = load i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*, %struct.esas2r_sg_context*, i32)*, i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*, %struct.esas2r_sg_context*, i32)** %96, align 8
  %98 = load %struct.esas2r_adapter.1*, %struct.esas2r_adapter.1** %4, align 8
  %99 = bitcast %struct.esas2r_adapter.1* %98 to %struct.esas2r_adapter.0*
  %100 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %101 = load %struct.esas2r_buffered_ioctl*, %struct.esas2r_buffered_ioctl** %3, align 8
  %102 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 %97(%struct.esas2r_adapter.0* %99, %struct.esas2r_request* %100, %struct.esas2r_sg_context* %6, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %79
  %107 = load %struct.esas2r_adapter.1*, %struct.esas2r_adapter.1** %4, align 8
  %108 = getelementptr inbounds %struct.esas2r_adapter.1, %struct.esas2r_adapter.1* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  br label %125

109:                                              ; preds = %79
  br label %110

110:                                              ; preds = %116, %109
  %111 = load %struct.esas2r_adapter.1*, %struct.esas2r_adapter.1** %4, align 8
  %112 = getelementptr inbounds %struct.esas2r_adapter.1, %struct.esas2r_adapter.1* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  %115 = xor i1 %114, true
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = load %struct.esas2r_adapter.1*, %struct.esas2r_adapter.1** %4, align 8
  %118 = getelementptr inbounds %struct.esas2r_adapter.1, %struct.esas2r_adapter.1* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.esas2r_adapter.1*, %struct.esas2r_adapter.1** %4, align 8
  %121 = getelementptr inbounds %struct.esas2r_adapter.1, %struct.esas2r_adapter.1* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @wait_event_interruptible(i32 %119, i64 %122)
  br label %110

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124, %106
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* @IOCTL_SUCCESS, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %145

129:                                              ; preds = %125
  %130 = load %struct.esas2r_buffered_ioctl*, %struct.esas2r_buffered_ioctl** %3, align 8
  %131 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %130, i32 0, i32 3
  %132 = load i32 (%struct.esas2r_adapter*, %struct.esas2r_request*, i32)*, i32 (%struct.esas2r_adapter*, %struct.esas2r_request*, i32)** %131, align 8
  %133 = icmp ne i32 (%struct.esas2r_adapter*, %struct.esas2r_request*, i32)* %132, null
  br i1 %133, label %134, label %145

134:                                              ; preds = %129
  %135 = load %struct.esas2r_buffered_ioctl*, %struct.esas2r_buffered_ioctl** %3, align 8
  %136 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %135, i32 0, i32 3
  %137 = load i32 (%struct.esas2r_adapter*, %struct.esas2r_request*, i32)*, i32 (%struct.esas2r_adapter*, %struct.esas2r_request*, i32)** %136, align 8
  %138 = load %struct.esas2r_adapter.1*, %struct.esas2r_adapter.1** %4, align 8
  %139 = bitcast %struct.esas2r_adapter.1* %138 to %struct.esas2r_adapter*
  %140 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %141 = load %struct.esas2r_buffered_ioctl*, %struct.esas2r_buffered_ioctl** %3, align 8
  %142 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 %137(%struct.esas2r_adapter* %139, %struct.esas2r_request* %140, i32 %143)
  br label %145

145:                                              ; preds = %134, %129, %125
  %146 = load %struct.esas2r_adapter.1*, %struct.esas2r_adapter.1** %4, align 8
  %147 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %148 = call i32 @esas2r_free_request(%struct.esas2r_adapter.1* %146, %struct.esas2r_request* %147)
  br label %149

149:                                              ; preds = %145, %74, %53
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* @IOCTL_SUCCESS, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %149
  %154 = load %struct.esas2r_buffered_ioctl*, %struct.esas2r_buffered_ioctl** %3, align 8
  %155 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @esas2r_buffered_ioctl, align 8
  %158 = load %struct.esas2r_buffered_ioctl*, %struct.esas2r_buffered_ioctl** %3, align 8
  %159 = getelementptr inbounds %struct.esas2r_buffered_ioctl, %struct.esas2r_buffered_ioctl* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @memcpy(i64 %156, i64 %157, i64 %160)
  br label %162

162:                                              ; preds = %153, %149
  %163 = call i32 @up(i32* @buffered_ioctl_semaphore)
  %164 = load i64, i64* %7, align 8
  store i64 %164, i64* %2, align 8
  br label %165

165:                                              ; preds = %162, %14
  %166 = load i64, i64* %2, align 8
  ret i64 %166
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i64, i32) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @esas2r_log(i32, i8*, ...) #1

declare dso_local i32 @esas2r_debug(i8*) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local %struct.esas2r_request* @esas2r_alloc_request(%struct.esas2r_adapter.1*) #1

declare dso_local i32 @wait_event_interruptible(i32, i64) #1

declare dso_local i32 @esas2r_free_request(%struct.esas2r_adapter.1*, %struct.esas2r_request*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
