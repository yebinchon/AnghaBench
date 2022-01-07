; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_get_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_scsi = type { i32 }
%struct.vhost_virtqueue = type { i64, i32* }
%struct.vhost_scsi_ctx = type { i64, i64, i64, i8*, i32, i8* }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"vhost_get_vq_desc: head: %d, out: %u in: %u\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_scsi*, %struct.vhost_virtqueue*, %struct.vhost_scsi_ctx*)* @vhost_scsi_get_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_scsi_get_desc(%struct.vhost_scsi* %0, %struct.vhost_virtqueue* %1, %struct.vhost_scsi_ctx* %2) #0 {
  %4 = alloca %struct.vhost_scsi*, align 8
  %5 = alloca %struct.vhost_virtqueue*, align 8
  %6 = alloca %struct.vhost_scsi_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.vhost_scsi* %0, %struct.vhost_scsi** %4, align 8
  store %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue** %5, align 8
  store %struct.vhost_scsi_ctx* %2, %struct.vhost_scsi_ctx** %6, align 8
  %8 = load i32, i32* @ENXIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %11 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %12 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %15 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @ARRAY_SIZE(i32* %16)
  %18 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %18, i32 0, i32 1
  %20 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %20, i32 0, i32 2
  %22 = call i64 @vhost_get_vq_desc(%struct.vhost_virtqueue* %10, i32* %13, i32 %17, i64* %19, i64* %21, i32* null, i32* null)
  %23 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %30, i64 %33)
  %35 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  br label %102

43:                                               ; preds = %3
  %44 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %48 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %43
  %52 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %53 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %52, i32 0, i32 0
  %54 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %55 = call i32 @vhost_enable_notify(i32* %53, %struct.vhost_virtqueue* %54)
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %60 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %59, i32 0, i32 0
  %61 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %62 = call i32 @vhost_disable_notify(i32* %60, %struct.vhost_virtqueue* %61)
  %63 = load i32, i32* @EAGAIN, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %58, %51
  br label %102

66:                                               ; preds = %43
  %67 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %68 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i8* @iov_length(i32* %69, i64 %72)
  %74 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %77 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %80 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %84 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i8* @iov_length(i32* %82, i64 %85)
  %87 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %88 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %89, i32 0, i32 4
  %91 = load i32, i32* @WRITE, align 4
  %92 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %93 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %96 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %6, align 8
  %99 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @iov_iter_init(i32* %90, i32 %91, i32* %94, i64 %97, i8* %100)
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %66, %65, %42
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i64 @vhost_get_vq_desc(%struct.vhost_virtqueue*, i32*, i32, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vhost_enable_notify(i32*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_disable_notify(i32*, %struct.vhost_virtqueue*) #1

declare dso_local i8* @iov_length(i32*, i64) #1

declare dso_local i32 @iov_iter_init(i32*, i32, i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
