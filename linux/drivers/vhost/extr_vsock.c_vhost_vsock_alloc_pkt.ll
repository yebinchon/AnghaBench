; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vsock.c_vhost_vsock_alloc_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vsock.c_vhost_vsock_alloc_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_vsock_pkt = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vhost_virtqueue = type { i32 }
%struct.iov_iter = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Expected 0 input buffers, got %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Expected %zu bytes for pkt->hdr, got %zu bytes\0A\00", align 1
@VIRTIO_VSOCK_TYPE_STREAM = common dso_local global i64 0, align 8
@VIRTIO_VSOCK_MAX_PKT_BUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Expected %u byte payload, got %zu bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtio_vsock_pkt* (%struct.vhost_virtqueue*, i32, i32)* @vhost_vsock_alloc_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtio_vsock_pkt* @vhost_vsock_alloc_pkt(%struct.vhost_virtqueue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.virtio_vsock_pkt*, align 8
  %5 = alloca %struct.vhost_virtqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.virtio_vsock_pkt*, align 8
  %9 = alloca %struct.iov_iter, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 (%struct.vhost_virtqueue*, i8*, i32, ...) @vq_err(%struct.vhost_virtqueue* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16)
  store %struct.virtio_vsock_pkt* null, %struct.virtio_vsock_pkt** %4, align 8
  br label %125

18:                                               ; preds = %3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.virtio_vsock_pkt* @kzalloc(i32 24, i32 %19)
  store %struct.virtio_vsock_pkt* %20, %struct.virtio_vsock_pkt** %8, align 8
  %21 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %22 = icmp ne %struct.virtio_vsock_pkt* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.virtio_vsock_pkt* null, %struct.virtio_vsock_pkt** %4, align 8
  br label %125

24:                                               ; preds = %18
  %25 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %26 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @iov_length(i32 %27, i32 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i32, i32* @WRITE, align 4
  %31 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %32 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @iov_iter_init(%struct.iov_iter* %9, i32 %30, i32 %33, i32 %34, i64 %35)
  %37 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %38 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %37, i32 0, i32 3
  %39 = call i64 @copy_from_iter(%struct.TYPE_3__* %38, i32 8, %struct.iov_iter* %9)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 8
  br i1 %41, label %42, label %48

42:                                               ; preds = %24
  %43 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 (%struct.vhost_virtqueue*, i8*, i32, ...) @vq_err(%struct.vhost_virtqueue* %43, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 8, i64 %44)
  %46 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %47 = call i32 @kfree(%struct.virtio_vsock_pkt* %46)
  store %struct.virtio_vsock_pkt* null, %struct.virtio_vsock_pkt** %4, align 8
  br label %125

48:                                               ; preds = %24
  %49 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %50 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le16_to_cpu(i32 %52)
  %54 = load i64, i64* @VIRTIO_VSOCK_TYPE_STREAM, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %58 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %63 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %56, %48
  %65 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %66 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  store %struct.virtio_vsock_pkt* %70, %struct.virtio_vsock_pkt** %4, align 8
  br label %125

71:                                               ; preds = %64
  %72 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %73 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @VIRTIO_VSOCK_MAX_PKT_BUF_SIZE, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %79 = call i32 @kfree(%struct.virtio_vsock_pkt* %78)
  store %struct.virtio_vsock_pkt* null, %struct.virtio_vsock_pkt** %4, align 8
  br label %125

80:                                               ; preds = %71
  %81 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %82 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.TYPE_3__* @kmalloc(i32 %83, i32 %84)
  %86 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %87 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %86, i32 0, i32 2
  store %struct.TYPE_3__* %85, %struct.TYPE_3__** %87, align 8
  %88 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %89 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = icmp ne %struct.TYPE_3__* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %80
  %93 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %94 = call i32 @kfree(%struct.virtio_vsock_pkt* %93)
  store %struct.virtio_vsock_pkt* null, %struct.virtio_vsock_pkt** %4, align 8
  br label %125

95:                                               ; preds = %80
  %96 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %97 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %100 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %102 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %101, i32 0, i32 2
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %105 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @copy_from_iter(%struct.TYPE_3__* %103, i32 %106, %struct.iov_iter* %9)
  store i64 %107, i64* %10, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %110 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = icmp ne i64 %108, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %95
  %115 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %116 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %117 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i64, i64* %10, align 8
  %120 = call i32 (%struct.vhost_virtqueue*, i8*, i32, ...) @vq_err(%struct.vhost_virtqueue* %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %118, i64 %119)
  %121 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  %122 = call i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt* %121)
  store %struct.virtio_vsock_pkt* null, %struct.virtio_vsock_pkt** %4, align 8
  br label %125

123:                                              ; preds = %95
  %124 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %8, align 8
  store %struct.virtio_vsock_pkt* %124, %struct.virtio_vsock_pkt** %4, align 8
  br label %125

125:                                              ; preds = %123, %114, %92, %77, %69, %42, %23, %14
  %126 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  ret %struct.virtio_vsock_pkt* %126
}

declare dso_local i32 @vq_err(%struct.vhost_virtqueue*, i8*, i32, ...) #1

declare dso_local %struct.virtio_vsock_pkt* @kzalloc(i32, i32) #1

declare dso_local i64 @iov_length(i32, i32) #1

declare dso_local i32 @iov_iter_init(%struct.iov_iter*, i32, i32, i32, i64) #1

declare dso_local i64 @copy_from_iter(%struct.TYPE_3__*, i32, %struct.iov_iter*) #1

declare dso_local i32 @kfree(%struct.virtio_vsock_pkt*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_3__* @kmalloc(i32, i32) #1

declare dso_local i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
