; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_camera = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.gb_interface* }
%struct.TYPE_3__ = type { %struct.gb_svc* }
%struct.gb_svc = type { i32 }
%struct.gb_interface = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"failed to set module interface to %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"HS\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PWM\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to set AP interface to %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_camera*, i32)* @gb_camera_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_camera_set_power_mode(%struct.gb_camera* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_camera*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_interface*, align 8
  %7 = alloca %struct.gb_svc*, align 8
  %8 = alloca i32, align 4
  store %struct.gb_camera* %0, %struct.gb_camera** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gb_camera*, %struct.gb_camera** %4, align 8
  %10 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.gb_interface*, %struct.gb_interface** %12, align 8
  store %struct.gb_interface* %13, %struct.gb_interface** %6, align 8
  %14 = load %struct.gb_camera*, %struct.gb_camera** %4, align 8
  %15 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.gb_svc*, %struct.gb_svc** %19, align 8
  store %struct.gb_svc* %20, %struct.gb_svc** %7, align 8
  %21 = load %struct.gb_camera*, %struct.gb_camera** %4, align 8
  %22 = load %struct.gb_interface*, %struct.gb_interface** %6, align 8
  %23 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @gb_camera_set_intf_power_mode(%struct.gb_camera* %21, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.gb_camera*, %struct.gb_camera** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @gcam_err(%struct.gb_camera* %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %66

38:                                               ; preds = %2
  %39 = load %struct.gb_camera*, %struct.gb_camera** %4, align 8
  %40 = load %struct.gb_svc*, %struct.gb_svc** %7, align 8
  %41 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @gb_camera_set_intf_power_mode(%struct.gb_camera* %39, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %38
  %48 = load %struct.gb_camera*, %struct.gb_camera** %4, align 8
  %49 = load %struct.gb_interface*, %struct.gb_interface** %6, align 8
  %50 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @gb_camera_set_intf_power_mode(%struct.gb_camera* %48, i32 %51, i32 %55)
  %57 = load %struct.gb_camera*, %struct.gb_camera** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @gcam_err(%struct.gb_camera* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %47, %29
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @gb_camera_set_intf_power_mode(%struct.gb_camera*, i32, i32) #1

declare dso_local i32 @gcam_err(%struct.gb_camera*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
