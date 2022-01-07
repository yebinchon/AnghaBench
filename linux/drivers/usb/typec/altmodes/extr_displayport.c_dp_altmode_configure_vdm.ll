; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_configure_vdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_configure_vdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp_altmode = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DP_CMD_CONFIGURE = common dso_local global i32 0, align 4
@TYPEC_STATE_SAFE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unable to put to connector to safe mode\0A\00", align 1
@TYPEC_STATE_USB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dp_altmode*, i32)* @dp_altmode_configure_vdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_altmode_configure_vdm(%struct.dp_altmode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dp_altmode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dp_altmode* %0, %struct.dp_altmode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %9 = load i32, i32* @DP_CMD_CONFIGURE, align 4
  %10 = call i32 @DP_HEADER(%struct.dp_altmode* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %12 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* @TYPEC_STATE_SAFE, align 4
  %15 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %16 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %15, i32 0, i32 0
  %17 = call i32 @typec_altmode_notify(%struct.TYPE_4__* %13, i32 %14, %struct.TYPE_5__* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %22 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %2
  %28 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %29 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @typec_altmode_vdm(%struct.TYPE_4__* %30, i32 %31, i32* %5, i32 2)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %27
  %36 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %37 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @DP_CONF_GET_PIN_ASSIGN(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %44 = call i32 @dp_altmode_notify(%struct.dp_altmode* %43)
  br label %53

45:                                               ; preds = %35
  %46 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %47 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* @TYPEC_STATE_USB, align 4
  %50 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %51 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %50, i32 0, i32 0
  %52 = call i32 @typec_altmode_notify(%struct.TYPE_4__* %48, i32 %49, %struct.TYPE_5__* %51)
  br label %53

53:                                               ; preds = %45, %42
  br label %54

54:                                               ; preds = %53, %27
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %20
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @DP_HEADER(%struct.dp_altmode*, i32) #1

declare dso_local i32 @typec_altmode_notify(%struct.TYPE_4__*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @typec_altmode_vdm(%struct.TYPE_4__*, i32, i32*, i32) #1

declare dso_local i64 @DP_CONF_GET_PIN_ASSIGN(i32) #1

declare dso_local i32 @dp_altmode_notify(%struct.dp_altmode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
