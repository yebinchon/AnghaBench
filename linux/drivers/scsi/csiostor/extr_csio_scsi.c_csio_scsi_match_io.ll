; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_match_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_match_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { i32, i32 }
%struct.csio_scsi_level_data = type { i32, i32, i32, i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_ioreq*, %struct.csio_scsi_level_data*)* @csio_scsi_match_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_scsi_match_io(%struct.csio_ioreq* %0, %struct.csio_scsi_level_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csio_ioreq*, align 8
  %5 = alloca %struct.csio_scsi_level_data*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %4, align 8
  store %struct.csio_scsi_level_data* %1, %struct.csio_scsi_level_data** %5, align 8
  %7 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %8 = call %struct.scsi_cmnd* @csio_scsi_cmnd(%struct.csio_ioreq* %7)
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %6, align 8
  %9 = load %struct.csio_scsi_level_data*, %struct.csio_scsi_level_data** %5, align 8
  %10 = getelementptr inbounds %struct.csio_scsi_level_data, %struct.csio_scsi_level_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %74 [
    i32 129, label %12
    i32 128, label %45
    i32 130, label %64
    i32 131, label %73
  ]

12:                                               ; preds = %2
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %14 = icmp eq %struct.scsi_cmnd* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %75

16:                                               ; preds = %12
  %17 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %18 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.csio_scsi_level_data*, %struct.csio_scsi_level_data** %5, align 8
  %21 = getelementptr inbounds %struct.csio_scsi_level_data, %struct.csio_scsi_level_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %16
  %25 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %26 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.csio_scsi_level_data*, %struct.csio_scsi_level_data** %5, align 8
  %29 = getelementptr inbounds %struct.csio_scsi_level_data, %struct.csio_scsi_level_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.csio_scsi_level_data*, %struct.csio_scsi_level_data** %5, align 8
  %39 = getelementptr inbounds %struct.csio_scsi_level_data, %struct.csio_scsi_level_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %37, %40
  br label %42

42:                                               ; preds = %32, %24, %16
  %43 = phi i1 [ false, %24 ], [ false, %16 ], [ %41, %32 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %75

45:                                               ; preds = %2
  %46 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %47 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.csio_scsi_level_data*, %struct.csio_scsi_level_data** %5, align 8
  %50 = getelementptr inbounds %struct.csio_scsi_level_data, %struct.csio_scsi_level_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %55 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.csio_scsi_level_data*, %struct.csio_scsi_level_data** %5, align 8
  %58 = getelementptr inbounds %struct.csio_scsi_level_data, %struct.csio_scsi_level_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %56, %59
  br label %61

61:                                               ; preds = %53, %45
  %62 = phi i1 [ false, %45 ], [ %60, %53 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %75

64:                                               ; preds = %2
  %65 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %66 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.csio_scsi_level_data*, %struct.csio_scsi_level_data** %5, align 8
  %69 = getelementptr inbounds %struct.csio_scsi_level_data, %struct.csio_scsi_level_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %67, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %75

74:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %73, %64, %61, %42, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.scsi_cmnd* @csio_scsi_cmnd(%struct.csio_ioreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
