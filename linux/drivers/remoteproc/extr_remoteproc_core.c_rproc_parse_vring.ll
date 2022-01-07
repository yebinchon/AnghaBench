; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_parse_vring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_parse_vring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc_vdev = type { %struct.rproc_vring*, %struct.rproc* }
%struct.rproc_vring = type { %struct.rproc_vdev*, i64, i64 }
%struct.rproc = type { %struct.device }
%struct.device = type { i32 }
%struct.fw_rsc_vdev = type { %struct.fw_rsc_vdev_vring* }
%struct.fw_rsc_vdev_vring = type { i64, i64, i32 }

@.str = private unnamed_addr constant [46 x i8] c"vdev rsc: vring%d: da 0x%x, qsz %d, align %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"invalid qsz (%d) or alignment (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc_vdev*, %struct.fw_rsc_vdev*, i32)* @rproc_parse_vring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_parse_vring(%struct.rproc_vdev* %0, %struct.fw_rsc_vdev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rproc_vdev*, align 8
  %6 = alloca %struct.fw_rsc_vdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rproc*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.fw_rsc_vdev_vring*, align 8
  %11 = alloca %struct.rproc_vring*, align 8
  store %struct.rproc_vdev* %0, %struct.rproc_vdev** %5, align 8
  store %struct.fw_rsc_vdev* %1, %struct.fw_rsc_vdev** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.rproc_vdev*, %struct.rproc_vdev** %5, align 8
  %13 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %12, i32 0, i32 1
  %14 = load %struct.rproc*, %struct.rproc** %13, align 8
  store %struct.rproc* %14, %struct.rproc** %8, align 8
  %15 = load %struct.rproc*, %struct.rproc** %8, align 8
  %16 = getelementptr inbounds %struct.rproc, %struct.rproc* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %6, align 8
  %18 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %17, i32 0, i32 0
  %19 = load %struct.fw_rsc_vdev_vring*, %struct.fw_rsc_vdev_vring** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.fw_rsc_vdev_vring, %struct.fw_rsc_vdev_vring* %19, i64 %21
  store %struct.fw_rsc_vdev_vring* %22, %struct.fw_rsc_vdev_vring** %10, align 8
  %23 = load %struct.rproc_vdev*, %struct.rproc_vdev** %5, align 8
  %24 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %23, i32 0, i32 0
  %25 = load %struct.rproc_vring*, %struct.rproc_vring** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %25, i64 %27
  store %struct.rproc_vring* %28, %struct.rproc_vring** %11, align 8
  %29 = load %struct.device*, %struct.device** %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.fw_rsc_vdev_vring*, %struct.fw_rsc_vdev_vring** %10, align 8
  %32 = getelementptr inbounds %struct.fw_rsc_vdev_vring, %struct.fw_rsc_vdev_vring* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.fw_rsc_vdev_vring*, %struct.fw_rsc_vdev_vring** %10, align 8
  %35 = getelementptr inbounds %struct.fw_rsc_vdev_vring, %struct.fw_rsc_vdev_vring* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.fw_rsc_vdev_vring*, %struct.fw_rsc_vdev_vring** %10, align 8
  %38 = getelementptr inbounds %struct.fw_rsc_vdev_vring, %struct.fw_rsc_vdev_vring* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i64 %36, i64 %39)
  %41 = load %struct.fw_rsc_vdev_vring*, %struct.fw_rsc_vdev_vring** %10, align 8
  %42 = getelementptr inbounds %struct.fw_rsc_vdev_vring, %struct.fw_rsc_vdev_vring* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %3
  %46 = load %struct.fw_rsc_vdev_vring*, %struct.fw_rsc_vdev_vring** %10, align 8
  %47 = getelementptr inbounds %struct.fw_rsc_vdev_vring, %struct.fw_rsc_vdev_vring* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %45, %3
  %51 = load %struct.device*, %struct.device** %9, align 8
  %52 = load %struct.fw_rsc_vdev_vring*, %struct.fw_rsc_vdev_vring** %10, align 8
  %53 = getelementptr inbounds %struct.fw_rsc_vdev_vring, %struct.fw_rsc_vdev_vring* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.fw_rsc_vdev_vring*, %struct.fw_rsc_vdev_vring** %10, align 8
  %56 = getelementptr inbounds %struct.fw_rsc_vdev_vring, %struct.fw_rsc_vdev_vring* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %54, i64 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %75

61:                                               ; preds = %45
  %62 = load %struct.fw_rsc_vdev_vring*, %struct.fw_rsc_vdev_vring** %10, align 8
  %63 = getelementptr inbounds %struct.fw_rsc_vdev_vring, %struct.fw_rsc_vdev_vring* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.rproc_vring*, %struct.rproc_vring** %11, align 8
  %66 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.fw_rsc_vdev_vring*, %struct.fw_rsc_vdev_vring** %10, align 8
  %68 = getelementptr inbounds %struct.fw_rsc_vdev_vring, %struct.fw_rsc_vdev_vring* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.rproc_vring*, %struct.rproc_vring** %11, align 8
  %71 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.rproc_vdev*, %struct.rproc_vdev** %5, align 8
  %73 = load %struct.rproc_vring*, %struct.rproc_vring** %11, align 8
  %74 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %73, i32 0, i32 0
  store %struct.rproc_vdev* %72, %struct.rproc_vdev** %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %61, %50
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
