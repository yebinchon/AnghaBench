; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_esas2r_queue_fw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_esas2r_queue_fw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.esas2r_fw_event_work = type { i32, i32, i32, %struct.esas2r_adapter*, i32* }
%struct.esas2r_vda_ae = type { i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ESAS2R_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"esas2r_queue_fw_event failed to alloc\00", align 1
@fw_event_vda_ae = common dso_local global i32 0, align 4
@ESAS2R_VDA_EVENT_SIG = common dso_local global i32 0, align 4
@esas2r_firmware_event_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_queue_fw_event(%struct.esas2r_adapter* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.esas2r_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.esas2r_fw_event_work*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.esas2r_vda_ae*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.esas2r_fw_event_work* @kzalloc(i32 32, i32 %12)
  store %struct.esas2r_fw_event_work* %13, %struct.esas2r_fw_event_work** %9, align 8
  %14 = load %struct.esas2r_fw_event_work*, %struct.esas2r_fw_event_work** %9, align 8
  %15 = icmp ne %struct.esas2r_fw_event_work* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %18 = call i32 @esas2r_log(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %90

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @fw_event_vda_ae, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = load %struct.esas2r_fw_event_work*, %struct.esas2r_fw_event_work** %9, align 8
  %25 = getelementptr inbounds %struct.esas2r_fw_event_work, %struct.esas2r_fw_event_work* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = bitcast i32* %26 to %struct.esas2r_vda_ae*
  store %struct.esas2r_vda_ae* %27, %struct.esas2r_vda_ae** %11, align 8
  %28 = load i32, i32* @ESAS2R_VDA_EVENT_SIG, align 4
  %29 = load %struct.esas2r_vda_ae*, %struct.esas2r_vda_ae** %11, align 8
  %30 = getelementptr inbounds %struct.esas2r_vda_ae, %struct.esas2r_vda_ae* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.esas2r_vda_ae*, %struct.esas2r_vda_ae** %11, align 8
  %39 = getelementptr inbounds %struct.esas2r_vda_ae, %struct.esas2r_vda_ae* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.esas2r_vda_ae*, %struct.esas2r_vda_ae** %11, align 8
  %46 = getelementptr inbounds %struct.esas2r_vda_ae, %struct.esas2r_vda_ae* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.esas2r_vda_ae*, %struct.esas2r_vda_ae** %11, align 8
  %48 = getelementptr inbounds %struct.esas2r_vda_ae, %struct.esas2r_vda_ae* %47, i32 0, i32 0
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @memcpy(i32* %48, i8* %49, i32 4)
  br label %58

51:                                               ; preds = %19
  %52 = load %struct.esas2r_fw_event_work*, %struct.esas2r_fw_event_work** %9, align 8
  %53 = getelementptr inbounds %struct.esas2r_fw_event_work, %struct.esas2r_fw_event_work* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @memcpy(i32* %54, i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %23
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.esas2r_fw_event_work*, %struct.esas2r_fw_event_work** %9, align 8
  %61 = getelementptr inbounds %struct.esas2r_fw_event_work, %struct.esas2r_fw_event_work* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %63 = load %struct.esas2r_fw_event_work*, %struct.esas2r_fw_event_work** %9, align 8
  %64 = getelementptr inbounds %struct.esas2r_fw_event_work, %struct.esas2r_fw_event_work* %63, i32 0, i32 3
  store %struct.esas2r_adapter* %62, %struct.esas2r_adapter** %64, align 8
  %65 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %65, i32 0, i32 0
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.esas2r_fw_event_work*, %struct.esas2r_fw_event_work** %9, align 8
  %70 = getelementptr inbounds %struct.esas2r_fw_event_work, %struct.esas2r_fw_event_work* %69, i32 0, i32 2
  %71 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %72 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %71, i32 0, i32 2
  %73 = call i32 @list_add_tail(i32* %70, i32* %72)
  %74 = load %struct.esas2r_fw_event_work*, %struct.esas2r_fw_event_work** %9, align 8
  %75 = getelementptr inbounds %struct.esas2r_fw_event_work, %struct.esas2r_fw_event_work* %74, i32 0, i32 1
  %76 = load i32, i32* @esas2r_firmware_event_work, align 4
  %77 = call i32 @INIT_DELAYED_WORK(i32* %75, i32 %76)
  %78 = call i32 (...) @smp_processor_id()
  %79 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %80 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.esas2r_fw_event_work*, %struct.esas2r_fw_event_work** %9, align 8
  %83 = getelementptr inbounds %struct.esas2r_fw_event_work, %struct.esas2r_fw_event_work* %82, i32 0, i32 1
  %84 = call i32 @msecs_to_jiffies(i32 1)
  %85 = call i32 @queue_delayed_work_on(i32 %78, i32 %81, i32* %83, i32 %84)
  %86 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %87 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %86, i32 0, i32 0
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  br label %90

90:                                               ; preds = %58, %16
  ret void
}

declare dso_local %struct.esas2r_fw_event_work* @kzalloc(i32, i32) #1

declare dso_local i32 @esas2r_log(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @queue_delayed_work_on(i32, i32, i32*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
