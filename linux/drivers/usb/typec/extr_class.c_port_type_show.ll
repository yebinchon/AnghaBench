; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_port_type_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_port_type_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.typec_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TYPEC_PORT_DRP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@typec_port_types_drp = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@typec_port_power_roles = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @port_type_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_type_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.typec_port*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.typec_port* @to_typec_port(%struct.device* %9)
  store %struct.typec_port* %10, %struct.typec_port** %8, align 8
  %11 = load %struct.typec_port*, %struct.typec_port** %8, align 8
  %12 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TYPEC_PORT_DRP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = load i8**, i8*** @typec_port_types_drp, align 8
  %21 = load %struct.typec_port*, %struct.typec_port** %8, align 8
  %22 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %4, align 4
  br label %38

27:                                               ; preds = %3
  %28 = load i8*, i8** %7, align 8
  %29 = load i8**, i8*** @typec_port_power_roles, align 8
  %30 = load %struct.typec_port*, %struct.typec_port** %8, align 8
  %31 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i8*, i8** %29, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %27, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.typec_port* @to_typec_port(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
