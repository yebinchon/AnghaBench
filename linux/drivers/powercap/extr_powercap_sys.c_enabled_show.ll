; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_powercap_sys.c_enabled_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_powercap_sys.c_enabled_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.device_attribute = type { i32 }
%struct.powercap_zone = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.powercap_zone*, i32*)* }
%struct.powercap_control_type = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.powercap_control_type*, i32*)* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @enabled_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enabled_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.powercap_zone*, align 8
  %9 = alloca %struct.powercap_control_type*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.powercap_zone* @to_powercap_zone(%struct.device* %15)
  store %struct.powercap_zone* %16, %struct.powercap_zone** %8, align 8
  %17 = load %struct.powercap_zone*, %struct.powercap_zone** %8, align 8
  %18 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64 (%struct.powercap_zone*, i32*)*, i64 (%struct.powercap_zone*, i32*)** %20, align 8
  %22 = icmp ne i64 (%struct.powercap_zone*, i32*)* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %14
  %24 = load %struct.powercap_zone*, %struct.powercap_zone** %8, align 8
  %25 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64 (%struct.powercap_zone*, i32*)*, i64 (%struct.powercap_zone*, i32*)** %27, align 8
  %29 = load %struct.powercap_zone*, %struct.powercap_zone** %8, align 8
  %30 = call i64 %28(%struct.powercap_zone* %29, i32* %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %23
  br label %34

34:                                               ; preds = %33, %14
  br label %61

35:                                               ; preds = %3
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call %struct.powercap_control_type* @to_powercap_control_type(%struct.device* %36)
  store %struct.powercap_control_type* %37, %struct.powercap_control_type** %9, align 8
  %38 = load %struct.powercap_control_type*, %struct.powercap_control_type** %9, align 8
  %39 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %35
  %43 = load %struct.powercap_control_type*, %struct.powercap_control_type** %9, align 8
  %44 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64 (%struct.powercap_control_type*, i32*)*, i64 (%struct.powercap_control_type*, i32*)** %46, align 8
  %48 = icmp ne i64 (%struct.powercap_control_type*, i32*)* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.powercap_control_type*, %struct.powercap_control_type** %9, align 8
  %51 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64 (%struct.powercap_control_type*, i32*)*, i64 (%struct.powercap_control_type*, i32*)** %53, align 8
  %55 = load %struct.powercap_control_type*, %struct.powercap_control_type** %9, align 8
  %56 = call i64 %54(%struct.powercap_control_type* %55, i32* %7)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %49
  br label %60

60:                                               ; preds = %59, %42, %35
  br label %61

61:                                               ; preds = %60, %34
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %63)
  ret i32 %64
}

declare dso_local %struct.powercap_zone* @to_powercap_zone(%struct.device*) #1

declare dso_local %struct.powercap_control_type* @to_powercap_control_type(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
