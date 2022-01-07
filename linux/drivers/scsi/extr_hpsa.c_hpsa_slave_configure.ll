; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, %struct.TYPE_2__*, i32, i32, %struct.hpsa_scsi_dev_t* }
%struct.TYPE_2__ = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32, i64, i64, i32 }

@EXTERNAL_QD = common dso_local global i32 0, align 4
@HPSA_EH_PTRAID_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @hpsa_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 4
  %7 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  store %struct.hpsa_scsi_dev_t* %7, %struct.hpsa_scsi_dev_t** %3, align 8
  %8 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %9 = icmp ne %struct.hpsa_scsi_dev_t* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %12 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i1 [ true, %1 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %22 = icmp ne %struct.hpsa_scsi_dev_t* %21, null
  br i1 %22, label %23, label %58

23:                                               ; preds = %16
  %24 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %25 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %27 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load i32, i32* @EXTERNAL_QD, align 4
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @HPSA_EH_PTRAID_TIMEOUT, align 4
  %33 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %34 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %36 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @HPSA_EH_PTRAID_TIMEOUT, align 4
  %39 = call i32 @blk_queue_rq_timeout(i32 %37, i32 %38)
  br label %57

40:                                               ; preds = %23
  %41 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %42 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %47 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  br label %55

49:                                               ; preds = %40
  %50 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %51 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %49, %45
  %56 = phi i32 [ %48, %45 ], [ %54, %49 ]
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %30
  br label %64

58:                                               ; preds = %16
  %59 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %60 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %58, %57
  %65 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %65, i32 %66)
  ret i32 0
}

declare dso_local i32 @blk_queue_rq_timeout(i32, i32) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
