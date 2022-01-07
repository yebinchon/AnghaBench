; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_chipset_selftest_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_chipset_selftest_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.controlvm_message_header = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"SPARSP_SELFTEST=%d\00", align 1
@chipset_dev = common dso_local global %struct.TYPE_8__* null, align 8
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controlvm_message_header*)* @chipset_selftest_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipset_selftest_uevent(%struct.controlvm_message_header* %0) #0 {
  %2 = alloca %struct.controlvm_message_header*, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca [2 x i8*], align 16
  %5 = alloca i32, align 4
  store %struct.controlvm_message_header* %0, %struct.controlvm_message_header** %2, align 8
  %6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8* %7, i8** %6, align 8
  %8 = getelementptr inbounds i8*, i8** %6, i64 1
  store i8* null, i8** %8, align 8
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %10 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 1)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* @KOBJ_CHANGE, align 4
  %17 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %18 = call i32 @kobject_uevent_env(i32* %15, i32 %16, i8** %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %2, align 8
  %20 = getelementptr inbounds %struct.controlvm_message_header, %struct.controlvm_message_header* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @controlvm_respond(%struct.controlvm_message_header* %25, i32 %26, i32* null)
  br label %28

28:                                               ; preds = %24, %1
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

declare dso_local i32 @controlvm_respond(%struct.controlvm_message_header*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
