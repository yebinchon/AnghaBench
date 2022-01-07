; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_port_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_port_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub = type { i32, %struct.ast_vhub_port* }
%struct.ast_vhub_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@USB_PORT_STAT_ENABLE = common dso_local global i32 0, align 4
@USB_PORT_STAT_SUSPEND = common dso_local global i32 0, align 4
@USB_PORT_STAT_RESET = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@USB_PORT_STAT_LOW_SPEED = common dso_local global i32 0, align 4
@USB_PORT_STAT_HIGH_SPEED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unsupported speed %d when connecting device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_vhub*, i64)* @ast_vhub_port_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_vhub_port_reset(%struct.ast_vhub* %0, i64 %1) #0 {
  %3 = alloca %struct.ast_vhub*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ast_vhub_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ast_vhub* %0, %struct.ast_vhub** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ast_vhub*, %struct.ast_vhub** %3, align 8
  %10 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %9, i32 0, i32 1
  %11 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %11, i64 %12
  store %struct.ast_vhub_port* %13, %struct.ast_vhub_port** %5, align 8
  %14 = load %struct.ast_vhub*, %struct.ast_vhub** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %17 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @USB_PORT_STAT_RESET, align 4
  %20 = call i32 @ast_vhub_change_port_stat(%struct.ast_vhub* %14, i64 %15, i32 %18, i32 %19, i32 0)
  %21 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %5, align 8
  %22 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %78

27:                                               ; preds = %2
  %28 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %5, align 8
  %29 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %28, i32 0, i32 0
  %30 = call i32 @ast_vhub_dev_reset(%struct.TYPE_4__* %29)
  %31 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %5, align 8
  %32 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.ast_vhub*, %struct.ast_vhub** %3, align 8
  %43 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40, %27
  %47 = load %struct.ast_vhub*, %struct.ast_vhub** %3, align 8
  %48 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i32, i32* %8, align 4
  switch i32 %51, label %62 [
    i32 128, label %52
    i32 130, label %55
    i32 129, label %59
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* @USB_PORT_STAT_LOW_SPEED, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @USB_PORT_STAT_HIGH_SPEED, align 4
  store i32 %54, i32* %7, align 4
  br label %66

55:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  %56 = load i32, i32* @USB_PORT_STAT_LOW_SPEED, align 4
  %57 = load i32, i32* @USB_PORT_STAT_HIGH_SPEED, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %7, align 4
  br label %66

59:                                               ; preds = %50
  %60 = load i32, i32* @USB_PORT_STAT_HIGH_SPEED, align 4
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @USB_PORT_STAT_LOW_SPEED, align 4
  store i32 %61, i32* %7, align 4
  br label %66

62:                                               ; preds = %50
  %63 = load %struct.ast_vhub*, %struct.ast_vhub** %3, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @UDCDBG(%struct.ast_vhub* %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %78

66:                                               ; preds = %59, %55, %52
  %67 = load i32, i32* @USB_PORT_STAT_RESET, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load %struct.ast_vhub*, %struct.ast_vhub** %3, align 8
  %74 = load i64, i64* %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @ast_vhub_change_port_stat(%struct.ast_vhub* %73, i64 %74, i32 %75, i32 %76, i32 1)
  br label %78

78:                                               ; preds = %66, %62, %26
  ret void
}

declare dso_local i32 @ast_vhub_change_port_stat(%struct.ast_vhub*, i64, i32, i32, i32) #1

declare dso_local i32 @ast_vhub_dev_reset(%struct.TYPE_4__*) #1

declare dso_local i32 @UDCDBG(%struct.ast_vhub*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
