; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_device_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_device_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_scsi_dev = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_scsi_dev*, %struct.pqi_scsi_dev*)* @pqi_device_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_device_equal(%struct.pqi_scsi_dev* %0, %struct.pqi_scsi_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_scsi_dev*, align 8
  %5 = alloca %struct.pqi_scsi_dev*, align 8
  store %struct.pqi_scsi_dev* %0, %struct.pqi_scsi_dev** %4, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %5, align 8
  %6 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %7 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %10 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %24 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %38

28:                                               ; preds = %14
  %29 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %33 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @memcmp(i32 %31, i32 %34, i32 4)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %28, %19, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
