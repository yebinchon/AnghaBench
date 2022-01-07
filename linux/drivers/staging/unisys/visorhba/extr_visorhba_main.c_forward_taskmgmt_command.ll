; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_forward_taskmgmt_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_forward_taskmgmt_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.uiscmdrsp = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.visorhba_devdata = type { i32, %struct.TYPE_8__*, i32, i64, i64 }
%struct.TYPE_8__ = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@CMD_SCSITASKMGMT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"visorhba: initiating type=%d taskmgmt command\0A\00", align 1
@IOCHAN_TO_IOPART = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"visorhba: taskmgmt type=%d success; result=0x%x\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"visorhba: taskmgmt type=%d not executed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.scsi_device*)* @forward_taskmgmt_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forward_taskmgmt_command(i32 %0, %struct.scsi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.uiscmdrsp*, align 8
  %7 = alloca %struct.visorhba_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.scsi_device* %1, %struct.scsi_device** %5, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.visorhba_devdata*
  store %struct.visorhba_devdata* %16, %struct.visorhba_devdata** %7, align 8
  store i32 65535, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %7, align 8
  %18 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %7, align 8
  %23 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %2
  %27 = load i32, i32* @FAILED, align 4
  store i32 %27, i32* %3, align 4
  br label %126

28:                                               ; preds = %21
  %29 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %7, align 8
  %30 = load i32, i32* @CMD_SCSITASKMGMT_TYPE, align 4
  %31 = call i32 @add_scsipending_entry(%struct.visorhba_devdata* %29, i32 %30, i32* null)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @FAILED, align 4
  store i32 %35, i32* %3, align 4
  br label %126

36:                                               ; preds = %28
  %37 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call %struct.uiscmdrsp* @get_scsipending_cmdrsp(%struct.visorhba_devdata* %37, i32 %38)
  store %struct.uiscmdrsp* %39, %struct.uiscmdrsp** %6, align 8
  %40 = call i32 @init_waitqueue_head(i32* %9)
  %41 = load i32, i32* @CMD_SCSITASKMGMT_TYPE, align 4
  %42 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %6, align 8
  %43 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %7, align 8
  %45 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %44, i32 0, i32 0
  %46 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %7, align 8
  %47 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %46, i32 0, i32 2
  %48 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %6, align 8
  %49 = call i32 @setup_scsitaskmgmt_handles(i32* %45, i32* %47, %struct.uiscmdrsp* %48, i32* %9, i32* %8)
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %6, align 8
  %52 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %55 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %6, align 8
  %58 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  store i32 %56, i32* %60, align 4
  %61 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %62 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %6, align 8
  %65 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  %68 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %69 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %6, align 8
  %72 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %6, align 8
  %77 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %80 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %79, i32 0, i32 0
  %81 = load i32, i32* %4, align 4
  %82 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %7, align 8
  %84 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IOCHAN_TO_IOPART, align 4
  %89 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %6, align 8
  %90 = call i64 @visorchannel_signalinsert(i32 %87, i32 %88, %struct.uiscmdrsp* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %36
  br label %113

93:                                               ; preds = %36
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 65535
  %97 = zext i1 %96 to i32
  %98 = call i32 @msecs_to_jiffies(i32 45000)
  %99 = call i32 @wait_event_timeout(i32 %94, i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %93
  br label %113

102:                                              ; preds = %93
  %103 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %104 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %103, i32 0, i32 0
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %104, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %7, align 8
  %109 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %108, i32 0, i32 0
  %110 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %6, align 8
  %111 = call i32 @cleanup_scsitaskmgmt_handles(i32* %109, %struct.uiscmdrsp* %110)
  %112 = load i32, i32* @SUCCESS, align 4
  store i32 %112, i32* %3, align 4
  br label %126

113:                                              ; preds = %101, %92
  %114 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %115 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %114, i32 0, i32 0
  %116 = load i32, i32* %4, align 4
  %117 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %7, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @del_scsipending_ent(%struct.visorhba_devdata* %118, i32 %119)
  %121 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %7, align 8
  %122 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %121, i32 0, i32 0
  %123 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %6, align 8
  %124 = call i32 @cleanup_scsitaskmgmt_handles(i32* %122, %struct.uiscmdrsp* %123)
  %125 = load i32, i32* @FAILED, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %113, %102, %34, %26
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @add_scsipending_entry(%struct.visorhba_devdata*, i32, i32*) #1

declare dso_local %struct.uiscmdrsp* @get_scsipending_cmdrsp(%struct.visorhba_devdata*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @setup_scsitaskmgmt_handles(i32*, i32*, %struct.uiscmdrsp*, i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i64 @visorchannel_signalinsert(i32, i32, %struct.uiscmdrsp*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cleanup_scsitaskmgmt_handles(i32*, %struct.uiscmdrsp*) #1

declare dso_local i32 @del_scsipending_ent(%struct.visorhba_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
