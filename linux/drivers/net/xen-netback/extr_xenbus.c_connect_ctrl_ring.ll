; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_connect_ctrl_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_connect_ctrl_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backend_info = type { %struct.xenvif*, %struct.xenbus_device* }
%struct.xenvif = type { i32 }
%struct.xenbus_device = type { i32 }

@XBT_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ctrl-ring-ref\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"event-channel-ctrl\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"reading %s/event-channel-ctrl\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"mapping shared-frame %u port %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backend_info*)* @connect_ctrl_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_ctrl_ring(%struct.backend_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backend_info*, align 8
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.xenvif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.backend_info* %0, %struct.backend_info** %3, align 8
  %10 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %11 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %10, i32 0, i32 1
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  store %struct.xenbus_device* %12, %struct.xenbus_device** %4, align 8
  %13 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %14 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %13, i32 0, i32 0
  %15 = load %struct.xenvif*, %struct.xenvif** %14, align 8
  store %struct.xenvif* %15, %struct.xenvif** %5, align 8
  %16 = load i32, i32* @XBT_NIL, align 4
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %18 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @xenbus_scanf(i32 %16, i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %55

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @XBT_NIL, align 4
  %27 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %28 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @xenbus_scanf(i32 %26, i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %37 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.xenbus_device*, i32, i8*, i32, ...) @xenbus_dev_fatal(%struct.xenbus_device* %34, i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %56

40:                                               ; preds = %24
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @xenvif_connect_ctrl(%struct.xenvif* %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (%struct.xenbus_device*, i32, i8*, i32, ...) @xenbus_dev_fatal(%struct.xenbus_device* %49, i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %51, i32 %52)
  br label %56

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %23
  store i32 0, i32* %2, align 4
  br label %58

56:                                               ; preds = %48, %33
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @xenbus_scanf(i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, i32, ...) #1

declare dso_local i32 @xenvif_connect_ctrl(%struct.xenvif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
