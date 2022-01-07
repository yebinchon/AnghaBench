; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_complete_fs_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_complete_fs_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.esas2r_ioctl_fs = type { i64, i32 }

@VDA_FLASH_COMMIT = common dso_local global i64 0, align 8
@RS_SUCCESS = common dso_local global i64 0, align 8
@ATTO_STS_SUCCESS = common dso_local global i32 0, align 4
@ATTO_STS_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_request*)* @esas2r_complete_fs_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_complete_fs_ioctl(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca %struct.esas2r_ioctl_fs*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %6 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %7 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.esas2r_ioctl_fs*
  store %struct.esas2r_ioctl_fs* %9, %struct.esas2r_ioctl_fs** %5, align 8
  %10 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %11 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VDA_FLASH_COMMIT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %20 = call i32 @esas2r_enable_heartbeat(%struct.esas2r_adapter* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %23 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %5, align 8
  %26 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %5, align 8
  %28 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RS_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* @ATTO_STS_SUCCESS, align 4
  %34 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %5, align 8
  %35 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %40

36:                                               ; preds = %21
  %37 = load i32, i32* @ATTO_STS_FAILED, align 4
  %38 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %5, align 8
  %39 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  ret void
}

declare dso_local i32 @esas2r_enable_heartbeat(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
