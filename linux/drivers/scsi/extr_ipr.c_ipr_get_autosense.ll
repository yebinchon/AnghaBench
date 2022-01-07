; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_get_autosense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_get_autosense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { %struct.ipr_ioasa64, %struct.ipr_ioasa }
%struct.ipr_ioasa64 = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.ipr_ioasa = type { %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@IPR_AUTOSENSE_VALID = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_get_autosense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_get_autosense(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca %struct.ipr_ioasa*, align 8
  %5 = alloca %struct.ipr_ioasa64*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %3, align 8
  %6 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %7 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store %struct.ipr_ioasa* %8, %struct.ipr_ioasa** %4, align 8
  %9 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store %struct.ipr_ioasa64* %11, %struct.ipr_ioasa64** %5, align 8
  %12 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %4, align 8
  %13 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be32_to_cpu(i32 %15)
  %17 = load i32, i32* @IPR_AUTOSENSE_VALID, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

21:                                               ; preds = %1
  %22 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %23 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %21
  %29 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %30 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipr_ioasa64*, %struct.ipr_ioasa64** %5, align 8
  %35 = getelementptr inbounds %struct.ipr_ioasa64, %struct.ipr_ioasa64* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @u16, align 4
  %39 = load %struct.ipr_ioasa64*, %struct.ipr_ioasa64** %5, align 8
  %40 = getelementptr inbounds %struct.ipr_ioasa64, %struct.ipr_ioasa64* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be16_to_cpu(i32 %42)
  %44 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %45 = call i32 @min_t(i32 %38, i32 %43, i32 %44)
  %46 = call i32 @memcpy(i32 %33, i32 %37, i32 %45)
  br label %66

47:                                               ; preds = %21
  %48 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %49 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %4, align 8
  %54 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @u16, align 4
  %58 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %4, align 8
  %59 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @be16_to_cpu(i32 %61)
  %63 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %64 = call i32 @min_t(i32 %57, i32 %62, i32 %63)
  %65 = call i32 @memcpy(i32 %52, i32 %56, i32 %64)
  br label %66

66:                                               ; preds = %47, %28
  store i32 1, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %20
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
