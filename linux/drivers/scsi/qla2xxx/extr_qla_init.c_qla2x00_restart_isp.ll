; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_restart_isp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_restart_isp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__, %struct.qla_hw_data* }
%struct.TYPE_12__ = type { i64 }
%struct.qla_hw_data = type { i32, %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { {}* }

@RESET_MARKER_NEEDED = common dso_local global i32 0, align 4
@MK_SYNC_ALL = common dso_local global i32 0, align 4
@LOOP_RESYNC_NEEDED = common dso_local global i32 0, align 4
@DFLG_NO_CABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @qla2x00_restart_isp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_restart_isp(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 3
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  store %struct.qla_hw_data* %7, %struct.qla_hw_data** %4, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = call i64 @qla2x00_isp_firmware(%struct.TYPE_15__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.TYPE_15__*)**
  %20 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %19, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = call i32 %20(%struct.TYPE_15__* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %11
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %27 = call i32 @qla2x00_setup_chip(%struct.TYPE_15__* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %11
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %70, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = call i32 @qla2x00_init_rings(%struct.TYPE_15__* %33)
  store i32 %34, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %70, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @RESET_MARKER_NEEDED, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %45 = call i32 @qla25xx_init_queues(%struct.qla_hw_data* %44)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %47 = call i32 @qla2x00_fw_ready(%struct.TYPE_15__* %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %36
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %53 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MK_SYNC_ALL, align 4
  %56 = call i32 @qla2x00_marker(%struct.TYPE_15__* %51, i32 %54, i32 0, i32 0, i32 %55)
  %57 = load i32, i32* @LOOP_RESYNC_NEEDED, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = call i32 @set_bit(i32 %57, i32* %59)
  br label %61

61:                                               ; preds = %50, %36
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DFLG_NO_CABLE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %61
  br label %70

70:                                               ; preds = %69, %32, %29
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @qla2x00_isp_firmware(%struct.TYPE_15__*) #1

declare dso_local i32 @qla2x00_setup_chip(%struct.TYPE_15__*) #1

declare dso_local i32 @qla2x00_init_rings(%struct.TYPE_15__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qla25xx_init_queues(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_fw_ready(%struct.TYPE_15__*) #1

declare dso_local i32 @qla2x00_marker(%struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
