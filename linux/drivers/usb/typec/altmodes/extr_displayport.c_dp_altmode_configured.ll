; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_configured.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp_altmode = type { %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"displayport\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"configuration\00", align 1
@TYPEC_STATE_USB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"pin_assignment\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dp_altmode*)* @dp_altmode_configured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_altmode_configured(%struct.dp_altmode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dp_altmode*, align 8
  %4 = alloca i32, align 4
  store %struct.dp_altmode* %0, %struct.dp_altmode** %3, align 8
  %5 = load %struct.dp_altmode*, %struct.dp_altmode** %3, align 8
  %6 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @sysfs_notify(i32* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.dp_altmode*, %struct.dp_altmode** %3, align 8
  %12 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.dp_altmode*, %struct.dp_altmode** %3, align 8
  %18 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* @TYPEC_STATE_USB, align 4
  %21 = load %struct.dp_altmode*, %struct.dp_altmode** %3, align 8
  %22 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %21, i32 0, i32 1
  %23 = call i32 @typec_altmode_notify(%struct.TYPE_5__* %19, i32 %20, %struct.TYPE_6__* %22)
  store i32 %23, i32* %2, align 4
  br label %38

24:                                               ; preds = %1
  %25 = load %struct.dp_altmode*, %struct.dp_altmode** %3, align 8
  %26 = call i32 @dp_altmode_notify(%struct.dp_altmode* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %38

31:                                               ; preds = %24
  %32 = load %struct.dp_altmode*, %struct.dp_altmode** %3, align 8
  %33 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @sysfs_notify(i32* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %31, %29, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @sysfs_notify(i32*, i8*, i8*) #1

declare dso_local i32 @typec_altmode_notify(%struct.TYPE_5__*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dp_altmode_notify(%struct.dp_altmode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
