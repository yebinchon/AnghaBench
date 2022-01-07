; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_register_cable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_register_cable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_cable = type { %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32, i32 }
%struct.typec_port = type { i32 }
%struct.typec_cable_desc = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@usb_pd_id_groups = common dso_local global i32 0, align 4
@typec_class = common dso_local global i32 0, align 4
@typec_cable_dev_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s-cable\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to register cable (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.typec_cable* @typec_register_cable(%struct.typec_port* %0, %struct.typec_cable_desc* %1) #0 {
  %3 = alloca %struct.typec_cable*, align 8
  %4 = alloca %struct.typec_port*, align 8
  %5 = alloca %struct.typec_cable_desc*, align 8
  %6 = alloca %struct.typec_cable*, align 8
  %7 = alloca i32, align 4
  store %struct.typec_port* %0, %struct.typec_port** %4, align 8
  store %struct.typec_cable_desc* %1, %struct.typec_cable_desc** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.typec_cable* @kzalloc(i32 40, i32 %8)
  store %struct.typec_cable* %9, %struct.typec_cable** %6, align 8
  %10 = load %struct.typec_cable*, %struct.typec_cable** %6, align 8
  %11 = icmp ne %struct.typec_cable* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.typec_cable* @ERR_PTR(i32 %14)
  store %struct.typec_cable* %15, %struct.typec_cable** %3, align 8
  br label %77

16:                                               ; preds = %2
  %17 = load %struct.typec_cable_desc*, %struct.typec_cable_desc** %5, align 8
  %18 = getelementptr inbounds %struct.typec_cable_desc, %struct.typec_cable_desc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.typec_cable*, %struct.typec_cable** %6, align 8
  %21 = getelementptr inbounds %struct.typec_cable, %struct.typec_cable* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.typec_cable_desc*, %struct.typec_cable_desc** %5, align 8
  %23 = getelementptr inbounds %struct.typec_cable_desc, %struct.typec_cable_desc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.typec_cable*, %struct.typec_cable** %6, align 8
  %26 = getelementptr inbounds %struct.typec_cable, %struct.typec_cable* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.typec_cable_desc*, %struct.typec_cable_desc** %5, align 8
  %28 = getelementptr inbounds %struct.typec_cable_desc, %struct.typec_cable_desc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %16
  %32 = load i32, i32* @usb_pd_id_groups, align 4
  %33 = load %struct.typec_cable*, %struct.typec_cable** %6, align 8
  %34 = getelementptr inbounds %struct.typec_cable, %struct.typec_cable* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load %struct.typec_cable_desc*, %struct.typec_cable_desc** %5, align 8
  %37 = getelementptr inbounds %struct.typec_cable_desc, %struct.typec_cable_desc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.typec_cable*, %struct.typec_cable** %6, align 8
  %40 = getelementptr inbounds %struct.typec_cable, %struct.typec_cable* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %31, %16
  %42 = load i32, i32* @typec_class, align 4
  %43 = load %struct.typec_cable*, %struct.typec_cable** %6, align 8
  %44 = getelementptr inbounds %struct.typec_cable, %struct.typec_cable* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 8
  %46 = load %struct.typec_port*, %struct.typec_port** %4, align 8
  %47 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %46, i32 0, i32 0
  %48 = load %struct.typec_cable*, %struct.typec_cable** %6, align 8
  %49 = getelementptr inbounds %struct.typec_cable, %struct.typec_cable* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32* %47, i32** %50, align 8
  %51 = load %struct.typec_cable*, %struct.typec_cable** %6, align 8
  %52 = getelementptr inbounds %struct.typec_cable, %struct.typec_cable* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32* @typec_cable_dev_type, i32** %53, align 8
  %54 = load %struct.typec_cable*, %struct.typec_cable** %6, align 8
  %55 = getelementptr inbounds %struct.typec_cable, %struct.typec_cable* %54, i32 0, i32 0
  %56 = load %struct.typec_port*, %struct.typec_port** %4, align 8
  %57 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %56, i32 0, i32 0
  %58 = call i32 @dev_name(i32* %57)
  %59 = call i32 @dev_set_name(%struct.TYPE_4__* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.typec_cable*, %struct.typec_cable** %6, align 8
  %61 = getelementptr inbounds %struct.typec_cable, %struct.typec_cable* %60, i32 0, i32 0
  %62 = call i32 @device_register(%struct.TYPE_4__* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %41
  %66 = load %struct.typec_port*, %struct.typec_port** %4, align 8
  %67 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %66, i32 0, i32 0
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.typec_cable*, %struct.typec_cable** %6, align 8
  %71 = getelementptr inbounds %struct.typec_cable, %struct.typec_cable* %70, i32 0, i32 0
  %72 = call i32 @put_device(%struct.TYPE_4__* %71)
  %73 = load i32, i32* %7, align 4
  %74 = call %struct.typec_cable* @ERR_PTR(i32 %73)
  store %struct.typec_cable* %74, %struct.typec_cable** %3, align 8
  br label %77

75:                                               ; preds = %41
  %76 = load %struct.typec_cable*, %struct.typec_cable** %6, align 8
  store %struct.typec_cable* %76, %struct.typec_cable** %3, align 8
  br label %77

77:                                               ; preds = %75, %65, %12
  %78 = load %struct.typec_cable*, %struct.typec_cable** %3, align 8
  ret %struct.typec_cable* %78
}

declare dso_local %struct.typec_cable* @kzalloc(i32, i32) #1

declare dso_local %struct.typec_cable* @ERR_PTR(i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
