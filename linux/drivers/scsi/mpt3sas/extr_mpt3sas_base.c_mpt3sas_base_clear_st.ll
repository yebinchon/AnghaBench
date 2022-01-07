; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c_mpt3sas_base_clear_st.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c_mpt3sas_base_clear_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scsiio_tracker = type { i32, i32, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpt3sas_base_clear_st(%struct.MPT3SAS_ADAPTER* %0, %struct.scsiio_tracker* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.scsiio_tracker*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct.scsiio_tracker* %1, %struct.scsiio_tracker** %4, align 8
  %5 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %4, align 8
  %6 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %4, align 8
  %15 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %14, i32 0, i32 1
  store i32 255, i32* %15, align 4
  %16 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %4, align 8
  %17 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %4, align 8
  %19 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %21 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %4, align 8
  %24 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @atomic_set(i32* %29, i32 0)
  %31 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %4, align 8
  %32 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
