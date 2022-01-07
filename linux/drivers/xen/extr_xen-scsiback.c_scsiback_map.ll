; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsibk_info = type { %struct.xenbus_device* }
%struct.xenbus_device = type { i32 }

@XBT_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ring-ref\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"event-channel\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"reading %s ring\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vscsibk_info*)* @scsiback_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsiback_map(%struct.vscsibk_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vscsibk_info*, align 8
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vscsibk_info* %0, %struct.vscsibk_info** %3, align 8
  %8 = load %struct.vscsibk_info*, %struct.vscsibk_info** %3, align 8
  %9 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %8, i32 0, i32 0
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %9, align 8
  store %struct.xenbus_device* %10, %struct.xenbus_device** %4, align 8
  %11 = load i32, i32* @XBT_NIL, align 4
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %13 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @xenbus_gather(i32 %11, i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32* null)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %22 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %19, i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load %struct.vscsibk_info*, %struct.vscsibk_info** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @scsiback_init_sring(%struct.vscsibk_info* %27, i32 %28, i32 %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %26, %18
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @xenbus_gather(i32, i32, i8*, i8*, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, i32) #1

declare dso_local i32 @scsiback_init_sring(%struct.vscsibk_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
