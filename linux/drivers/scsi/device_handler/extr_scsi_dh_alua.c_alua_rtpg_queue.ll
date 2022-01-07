; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_rtpg_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_rtpg_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alua_port_group = type { i32, i32, i32, i32, %struct.scsi_device*, i64, i32 }
%struct.scsi_device = type { i32 }
%struct.alua_queue_data = type { i32 }

@ALUA_PG_RUN_STPG = common dso_local global i32 0, align 4
@ALUA_PG_RUN_RTPG = common dso_local global i32 0, align 4
@ALUA_PG_RUNNING = common dso_local global i32 0, align 4
@kaluad_wq = common dso_local global i32 0, align 4
@ALUA_RTPG_DELAY_MSECS = common dso_local global i32 0, align 4
@release_port_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alua_port_group*, %struct.scsi_device*, %struct.alua_queue_data*, i32)* @alua_rtpg_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_rtpg_queue(%struct.alua_port_group* %0, %struct.scsi_device* %1, %struct.alua_queue_data* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.alua_port_group*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.alua_queue_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.alua_port_group* %0, %struct.alua_port_group** %6, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %7, align 8
  store %struct.alua_queue_data* %2, %struct.alua_queue_data** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %13 = icmp ne %struct.alua_port_group* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %20 = call i64 @scsi_device_get(%struct.scsi_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %4
  store i32 0, i32* %5, align 4
  br label %117

23:                                               ; preds = %18
  %24 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %25 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %24, i32 0, i32 3
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.alua_queue_data*, %struct.alua_queue_data** %8, align 8
  %29 = icmp ne %struct.alua_queue_data* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.alua_queue_data*, %struct.alua_queue_data** %8, align 8
  %32 = getelementptr inbounds %struct.alua_queue_data, %struct.alua_queue_data* %31, i32 0, i32 0
  %33 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %34 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %33, i32 0, i32 6
  %35 = call i32 @list_add_tail(i32* %32, i32* %34)
  %36 = load i32, i32* @ALUA_PG_RUN_STPG, align 4
  %37 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %38 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %30, %23
  %42 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %43 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %42, i32 0, i32 4
  %44 = load %struct.scsi_device*, %struct.scsi_device** %43, align 8
  %45 = icmp eq %struct.scsi_device* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %48 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @ALUA_PG_RUN_RTPG, align 4
  %50 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %51 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %55 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %54, i32 0, i32 1
  %56 = call i32 @kref_get(i32* %55)
  %57 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %58 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %59 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %58, i32 0, i32 4
  store %struct.scsi_device* %57, %struct.scsi_device** %59, align 8
  store i32 1, i32* %10, align 4
  br label %88

60:                                               ; preds = %41
  %61 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %62 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ALUA_PG_RUN_RTPG, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i32, i32* @ALUA_PG_RUN_RTPG, align 4
  %72 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %73 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %77 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ALUA_PG_RUNNING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %70
  %83 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %84 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %83, i32 0, i32 1
  %85 = call i32 @kref_get(i32* %84)
  store i32 1, i32* %10, align 4
  br label %86

86:                                               ; preds = %82, %70
  br label %87

87:                                               ; preds = %86, %67, %60
  br label %88

88:                                               ; preds = %87, %46
  %89 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %90 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %89, i32 0, i32 3
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %88
  %96 = load i32, i32* @kaluad_wq, align 4
  %97 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %98 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %97, i32 0, i32 2
  %99 = load i32, i32* @ALUA_RTPG_DELAY_MSECS, align 4
  %100 = call i32 @msecs_to_jiffies(i32 %99)
  %101 = call i64 @queue_delayed_work(i32 %96, i32* %98, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store %struct.scsi_device* null, %struct.scsi_device** %7, align 8
  br label %109

104:                                              ; preds = %95
  %105 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %106 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %105, i32 0, i32 1
  %107 = load i32, i32* @release_port_group, align 4
  %108 = call i32 @kref_put(i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %103
  br label %110

110:                                              ; preds = %109, %88
  %111 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %112 = icmp ne %struct.scsi_device* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %115 = call i32 @scsi_device_put(%struct.scsi_device* %114)
  br label %116

116:                                              ; preds = %113, %110
  store i32 1, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %22
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @scsi_device_get(%struct.scsi_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
