; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_setup_scsi_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_setup_scsi_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.request = type { i64 }
%struct.scsi_cmnd = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@BLK_STS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_device*, %struct.request*)* @scsi_setup_scsi_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scsi_setup_scsi_cmnd(%struct.scsi_device* %0, %struct.request* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %8 = load %struct.request*, %struct.request** %5, align 8
  %9 = call %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request* %8)
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %6, align 8
  %10 = load %struct.request*, %struct.request** %5, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %16 = call i64 @scsi_init_io(%struct.scsi_cmnd* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @BLK_STS_OK, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %3, align 8
  br label %57

25:                                               ; preds = %14
  br label %33

26:                                               ; preds = %2
  %27 = load %struct.request*, %struct.request** %5, align 8
  %28 = call i32 @blk_rq_bytes(%struct.request* %27)
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 4
  %32 = call i32 @memset(i32* %31, i32 0, i32 4)
  br label %33

33:                                               ; preds = %26, %25
  %34 = load %struct.request*, %struct.request** %5, align 8
  %35 = call %struct.TYPE_2__* @scsi_req(%struct.request* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.request*, %struct.request** %5, align 8
  %41 = call %struct.TYPE_2__* @scsi_req(%struct.request* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.request*, %struct.request** %5, align 8
  %47 = call i32 @blk_rq_bytes(%struct.request* %46)
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.request*, %struct.request** %5, align 8
  %51 = call %struct.TYPE_2__* @scsi_req(%struct.request* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i64, i64* @BLK_STS_OK, align 8
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %33, %23
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @scsi_init_io(%struct.scsi_cmnd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @scsi_req(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
