; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_parahotplug_request_kickoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_parahotplug_request_kickoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.parahotplug_request = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.controlvm_message_packet }
%struct.controlvm_message_packet = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"VISOR_PARAHOTPLUG=1\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"VISOR_PARAHOTPLUG_ID=%d\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"VISOR_PARAHOTPLUG_STATE=%d\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"VISOR_PARAHOTPLUG_BUS=%d\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"VISOR_PARAHOTPLUG_DEVICE=%d\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"VISOR_PARAHOTPLUG_FUNCTION=%d\00", align 1
@chipset_dev = common dso_local global %struct.TYPE_12__* null, align 8
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parahotplug_request*)* @parahotplug_request_kickoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parahotplug_request_kickoff(%struct.parahotplug_request* %0) #0 {
  %2 = alloca %struct.parahotplug_request*, align 8
  %3 = alloca %struct.controlvm_message_packet*, align 8
  %4 = alloca [40 x i8], align 16
  %5 = alloca [40 x i8], align 16
  %6 = alloca [40 x i8], align 16
  %7 = alloca [40 x i8], align 16
  %8 = alloca [40 x i8], align 16
  %9 = alloca [40 x i8], align 16
  %10 = alloca [7 x i8*], align 16
  store %struct.parahotplug_request* %0, %struct.parahotplug_request** %2, align 8
  %11 = load %struct.parahotplug_request*, %struct.parahotplug_request** %2, align 8
  %12 = getelementptr inbounds %struct.parahotplug_request, %struct.parahotplug_request* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store %struct.controlvm_message_packet* %13, %struct.controlvm_message_packet** %3, align 8
  %14 = getelementptr inbounds [7 x i8*], [7 x i8*]* %10, i64 0, i64 0
  %15 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 1
  %17 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 1
  %19 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  store i8* %19, i8** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 1
  %21 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 1
  %23 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  store i8* %23, i8** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 1
  %25 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  store i8* %25, i8** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 1
  store i8* null, i8** %26, align 8
  %27 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %29 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %30 = load %struct.parahotplug_request*, %struct.parahotplug_request** %2, align 8
  %31 = getelementptr inbounds %struct.parahotplug_request, %struct.parahotplug_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %35 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %3, align 8
  %36 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %42 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %3, align 8
  %43 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %48 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %3, align 8
  %49 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 3
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  %55 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %3, align 8
  %56 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 7
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** @chipset_dev, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* @KOBJ_CHANGE, align 4
  %67 = getelementptr inbounds [7 x i8*], [7 x i8*]* %10, i64 0, i64 0
  %68 = call i32 @kobject_uevent_env(i32* %65, i32 %66, i8** %67)
  ret i32 %68
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
