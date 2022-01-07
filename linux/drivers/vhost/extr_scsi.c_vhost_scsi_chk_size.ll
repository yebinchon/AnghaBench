; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_chk_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_chk_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { i32 }
%struct.vhost_scsi_ctx = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [51 x i8] c"Response buf too small, need min %zu bytes got %zu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Request buf too small, need min %zu bytes got %zu\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_virtqueue*, %struct.vhost_scsi_ctx*)* @vhost_scsi_chk_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_scsi_chk_size(%struct.vhost_virtqueue* %0, %struct.vhost_scsi_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhost_virtqueue*, align 8
  %5 = alloca %struct.vhost_scsi_ctx*, align 8
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %4, align 8
  store %struct.vhost_scsi_ctx* %1, %struct.vhost_scsi_ctx** %5, align 8
  %6 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %5, align 8
  %7 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %18 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @vq_err(%struct.vhost_virtqueue* %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %51

27:                                               ; preds = %2
  %28 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %27
  %39 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %40 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @vq_err(%struct.vhost_virtqueue* %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %42, i64 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %38, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vq_err(%struct.vhost_virtqueue*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
