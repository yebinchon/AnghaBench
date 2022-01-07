; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_id.c_snsid_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_id.c_snsid_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.ccw_dev_id }
%struct.TYPE_3__ = type { %struct.senseid }
%struct.senseid = type { i32, i32, i32, i32 }
%struct.ccw_dev_id = type { i32, i32 }

@MACHINE_IS_VM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"snsid: device 0.%x.%04x: rc=%d %04x/%02x %04x/%02x%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" (diag210)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i8*, i32)* @snsid_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snsid_callback(%struct.ccw_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccw_dev_id*, align 8
  %8 = alloca %struct.senseid*, align 8
  %9 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %11 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.ccw_dev_id* %13, %struct.ccw_dev_id** %7, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.senseid* %19, %struct.senseid** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load i64, i64* @MACHINE_IS_VM, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %27 = call i32 @snsid_init(%struct.ccw_device* %26)
  %28 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %29 = call i64 @diag210_get_dev_info(%struct.ccw_device* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %25
  br label %33

33:                                               ; preds = %32, %22, %3
  %34 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %7, align 8
  %35 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %7, align 8
  %38 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.senseid*, %struct.senseid** %8, align 8
  %42 = getelementptr inbounds %struct.senseid, %struct.senseid* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.senseid*, %struct.senseid** %8, align 8
  %45 = getelementptr inbounds %struct.senseid, %struct.senseid* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.senseid*, %struct.senseid** %8, align 8
  %48 = getelementptr inbounds %struct.senseid, %struct.senseid* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.senseid*, %struct.senseid** %8, align 8
  %51 = getelementptr inbounds %struct.senseid, %struct.senseid* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %57 = call i32 @CIO_MSG_EVENT(i32 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i8* %56)
  %58 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @ccw_device_sense_id_done(%struct.ccw_device* %58, i32 %59)
  ret void
}

declare dso_local i32 @snsid_init(%struct.ccw_device*) #1

declare dso_local i64 @diag210_get_dev_info(%struct.ccw_device*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @ccw_device_sense_id_done(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
