; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_register_plug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_register_plug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_plug = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.typec_cable = type { %struct.TYPE_6__ }
%struct.typec_plug_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"plug%d\00", align 1
@typec_class = common dso_local global i32 0, align 4
@typec_plug_dev_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to register plug (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.typec_plug* @typec_register_plug(%struct.typec_cable* %0, %struct.typec_plug_desc* %1) #0 {
  %3 = alloca %struct.typec_plug*, align 8
  %4 = alloca %struct.typec_cable*, align 8
  %5 = alloca %struct.typec_plug_desc*, align 8
  %6 = alloca %struct.typec_plug*, align 8
  %7 = alloca [8 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.typec_cable* %0, %struct.typec_cable** %4, align 8
  store %struct.typec_plug_desc* %1, %struct.typec_plug_desc** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.typec_plug* @kzalloc(i32 40, i32 %9)
  store %struct.typec_plug* %10, %struct.typec_plug** %6, align 8
  %11 = load %struct.typec_plug*, %struct.typec_plug** %6, align 8
  %12 = icmp ne %struct.typec_plug* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.typec_plug* @ERR_PTR(i32 %15)
  store %struct.typec_plug* %16, %struct.typec_plug** %3, align 8
  br label %69

17:                                               ; preds = %2
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %19 = load %struct.typec_plug_desc*, %struct.typec_plug_desc** %5, align 8
  %20 = getelementptr inbounds %struct.typec_plug_desc, %struct.typec_plug_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.typec_plug*, %struct.typec_plug** %6, align 8
  %24 = getelementptr inbounds %struct.typec_plug, %struct.typec_plug* %23, i32 0, i32 2
  %25 = call i32 @ida_init(i32* %24)
  %26 = load %struct.typec_plug_desc*, %struct.typec_plug_desc** %5, align 8
  %27 = getelementptr inbounds %struct.typec_plug_desc, %struct.typec_plug_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.typec_plug*, %struct.typec_plug** %6, align 8
  %30 = getelementptr inbounds %struct.typec_plug, %struct.typec_plug* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @typec_class, align 4
  %32 = load %struct.typec_plug*, %struct.typec_plug** %6, align 8
  %33 = getelementptr inbounds %struct.typec_plug, %struct.typec_plug* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load %struct.typec_cable*, %struct.typec_cable** %4, align 8
  %36 = getelementptr inbounds %struct.typec_cable, %struct.typec_cable* %35, i32 0, i32 0
  %37 = load %struct.typec_plug*, %struct.typec_plug** %6, align 8
  %38 = getelementptr inbounds %struct.typec_plug, %struct.typec_plug* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.typec_plug*, %struct.typec_plug** %6, align 8
  %41 = getelementptr inbounds %struct.typec_plug, %struct.typec_plug* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32* @typec_plug_dev_type, i32** %42, align 8
  %43 = load %struct.typec_plug*, %struct.typec_plug** %6, align 8
  %44 = getelementptr inbounds %struct.typec_plug, %struct.typec_plug* %43, i32 0, i32 1
  %45 = load %struct.typec_cable*, %struct.typec_cable** %4, align 8
  %46 = getelementptr inbounds %struct.typec_cable, %struct.typec_cable* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_name(i32 %48)
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %51 = call i32 @dev_set_name(%struct.TYPE_5__* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %49, i8* %50)
  %52 = load %struct.typec_plug*, %struct.typec_plug** %6, align 8
  %53 = getelementptr inbounds %struct.typec_plug, %struct.typec_plug* %52, i32 0, i32 1
  %54 = call i32 @device_register(%struct.TYPE_5__* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %17
  %58 = load %struct.typec_cable*, %struct.typec_cable** %4, align 8
  %59 = getelementptr inbounds %struct.typec_cable, %struct.typec_cable* %58, i32 0, i32 0
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @dev_err(%struct.TYPE_6__* %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load %struct.typec_plug*, %struct.typec_plug** %6, align 8
  %63 = getelementptr inbounds %struct.typec_plug, %struct.typec_plug* %62, i32 0, i32 1
  %64 = call i32 @put_device(%struct.TYPE_5__* %63)
  %65 = load i32, i32* %8, align 4
  %66 = call %struct.typec_plug* @ERR_PTR(i32 %65)
  store %struct.typec_plug* %66, %struct.typec_plug** %3, align 8
  br label %69

67:                                               ; preds = %17
  %68 = load %struct.typec_plug*, %struct.typec_plug** %6, align 8
  store %struct.typec_plug* %68, %struct.typec_plug** %3, align 8
  br label %69

69:                                               ; preds = %67, %57, %13
  %70 = load %struct.typec_plug*, %struct.typec_plug** %3, align 8
  ret %struct.typec_plug* %70
}

declare dso_local %struct.typec_plug* @kzalloc(i32, i32) #1

declare dso_local %struct.typec_plug* @ERR_PTR(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32, i8*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
