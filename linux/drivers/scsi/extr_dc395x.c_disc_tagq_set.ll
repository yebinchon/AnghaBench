; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_disc_tagq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_disc_tagq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DeviceCtlBlk = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ScsiInqData = type { i32, i32, i32 }

@SCSI_INQ_CMDQUEUE = common dso_local global i32 0, align 4
@NTC_DO_TAG_QUEUEING = common dso_local global i32 0, align 4
@EN_TAG_QUEUEING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.DeviceCtlBlk*, %struct.ScsiInqData*)* @disc_tagq_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disc_tagq_set(%struct.DeviceCtlBlk* %0, %struct.ScsiInqData* %1) #0 {
  %3 = alloca %struct.DeviceCtlBlk*, align 8
  %4 = alloca %struct.ScsiInqData*, align 8
  store %struct.DeviceCtlBlk* %0, %struct.DeviceCtlBlk** %3, align 8
  store %struct.ScsiInqData* %1, %struct.ScsiInqData** %4, align 8
  %5 = load %struct.ScsiInqData*, %struct.ScsiInqData** %4, align 8
  %6 = getelementptr inbounds %struct.ScsiInqData, %struct.ScsiInqData* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 7
  %9 = icmp sge i32 %8, 2
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.ScsiInqData*, %struct.ScsiInqData** %4, align 8
  %12 = getelementptr inbounds %struct.ScsiInqData, %struct.ScsiInqData* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 15
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %59

16:                                               ; preds = %10, %2
  %17 = load %struct.ScsiInqData*, %struct.ScsiInqData** %4, align 8
  %18 = getelementptr inbounds %struct.ScsiInqData, %struct.ScsiInqData* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SCSI_INQ_CMDQUEUE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %16
  %24 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %25 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NTC_DO_TAG_QUEUEING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %23
  %31 = load %struct.ScsiInqData*, %struct.ScsiInqData** %4, align 8
  %32 = bitcast %struct.ScsiInqData* %31 to i8*
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  %34 = call i32 @tagq_blacklist(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %30
  %37 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %38 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %43 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %48 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %41, %36
  %50 = load i32, i32* @EN_TAG_QUEUEING, align 4
  %51 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %52 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %58

55:                                               ; preds = %30, %23, %16
  %56 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %57 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %49
  br label %59

59:                                               ; preds = %58, %10
  ret void
}

declare dso_local i32 @tagq_blacklist(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
