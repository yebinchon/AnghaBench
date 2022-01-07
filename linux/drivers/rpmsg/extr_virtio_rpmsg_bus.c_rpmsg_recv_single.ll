; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_recv_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_recv_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtproc_info = type { i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.rpmsg_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.rpmsg_endpoint = type { i32, i32, i32, i32, i32 (i32, i32, i32, i32, i32)* }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"From: 0x%x, To: 0x%x, Len: %d, Flags: %d, Reserved: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"inbound msg too big: (%d, %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@__ept_release = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"msg received with no recipient\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to add a virtqueue buffer: %d\0A\00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtproc_info*, %struct.device*, %struct.rpmsg_hdr*, i32)* @rpmsg_recv_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmsg_recv_single(%struct.virtproc_info* %0, %struct.device* %1, %struct.rpmsg_hdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtproc_info*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.rpmsg_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpmsg_endpoint*, align 8
  %11 = alloca %struct.scatterlist, align 4
  %12 = alloca i32, align 4
  store %struct.virtproc_info* %0, %struct.virtproc_info** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store %struct.rpmsg_hdr* %2, %struct.rpmsg_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %8, align 8
  %15 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %8, align 8
  %18 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %8, align 8
  %21 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %8, align 8
  %24 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %8, align 8
  %27 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22, i32 %25, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %32 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ugt i32 %30, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %4
  %36 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %8, align 8
  %37 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = zext i32 %38 to i64
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = sub i64 %41, 24
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %35, %4
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %8, align 8
  %48 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %134

53:                                               ; preds = %35
  %54 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %55 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %54, i32 0, i32 2
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %58 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %57, i32 0, i32 3
  %59 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %8, align 8
  %60 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.rpmsg_endpoint* @idr_find(i32* %58, i32 %61)
  store %struct.rpmsg_endpoint* %62, %struct.rpmsg_endpoint** %10, align 8
  %63 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %10, align 8
  %64 = icmp ne %struct.rpmsg_endpoint* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %10, align 8
  %67 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %66, i32 0, i32 0
  %68 = call i32 @kref_get(i32* %67)
  br label %69

69:                                               ; preds = %65, %53
  %70 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %71 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %70, i32 0, i32 2
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %10, align 8
  %74 = icmp ne %struct.rpmsg_endpoint* %73, null
  br i1 %74, label %75, label %111

75:                                               ; preds = %69
  %76 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %10, align 8
  %77 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %76, i32 0, i32 1
  %78 = call i32 @mutex_lock(i32* %77)
  %79 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %10, align 8
  %80 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %79, i32 0, i32 4
  %81 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %80, align 8
  %82 = icmp ne i32 (i32, i32, i32, i32, i32)* %81, null
  br i1 %82, label %83, label %103

83:                                               ; preds = %75
  %84 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %10, align 8
  %85 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %84, i32 0, i32 4
  %86 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %85, align 8
  %87 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %10, align 8
  %88 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %8, align 8
  %91 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %8, align 8
  %94 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %10, align 8
  %97 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %8, align 8
  %100 = getelementptr inbounds %struct.rpmsg_hdr, %struct.rpmsg_hdr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 %86(i32 %89, i32 %92, i32 %95, i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %83, %75
  %104 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %10, align 8
  %105 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %10, align 8
  %108 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %107, i32 0, i32 0
  %109 = load i32, i32* @__ept_release, align 4
  %110 = call i32 @kref_put(i32* %108, i32 %109)
  br label %114

111:                                              ; preds = %69
  %112 = load %struct.device*, %struct.device** %7, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %103
  %115 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %8, align 8
  %116 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %117 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @rpmsg_sg_init(%struct.scatterlist* %11, %struct.rpmsg_hdr* %115, i32 %118)
  %120 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %121 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %8, align 8
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call i32 @virtqueue_add_inbuf(i32 %122, %struct.scatterlist* %11, i32 1, %struct.rpmsg_hdr* %123, i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %114
  %129 = load %struct.device*, %struct.device** %7, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @dev_err(%struct.device* %129, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %5, align 4
  br label %134

133:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %128, %44
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.rpmsg_endpoint* @idr_find(i32*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @rpmsg_sg_init(%struct.scatterlist*, %struct.rpmsg_hdr*, i32) #1

declare dso_local i32 @virtqueue_add_inbuf(i32, %struct.scatterlist*, i32, %struct.rpmsg_hdr*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
