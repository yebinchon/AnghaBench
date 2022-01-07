; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_change_queue_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_change_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32 }
%struct.snic = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@u32 = common dso_local global i32 0, align 4
@SNIC_MAX_QUEUE_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32)* @snic_change_queue_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_change_queue_depth(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snic*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.snic* @shost_priv(i32 %9)
  store %struct.snic* %10, %struct.snic** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @u32, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SNIC_MAX_QUEUE_DEPTH, align 4
  %14 = call i32 @min_t(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.snic*, %struct.snic** %5, align 8
  %22 = getelementptr inbounds %struct.snic, %struct.snic* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = call i32 @atomic64_inc(i32* %24)
  br label %39

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.snic*, %struct.snic** %5, align 8
  %34 = getelementptr inbounds %struct.snic, %struct.snic* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = call i32 @atomic64_inc(i32* %36)
  br label %38

38:                                               ; preds = %32, %26
  br label %39

39:                                               ; preds = %38, %20
  %40 = load %struct.snic*, %struct.snic** %5, align 8
  %41 = getelementptr inbounds %struct.snic, %struct.snic* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @atomic64_set(i32* %43, i32 %46)
  %48 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %48, i32 %49)
  %51 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %52 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  ret i32 %53
}

declare dso_local %struct.snic* @shost_priv(i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
