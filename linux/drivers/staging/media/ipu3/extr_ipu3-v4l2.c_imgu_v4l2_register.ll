; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-v4l2.c_imgu_v4l2_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-v4l2.c_imgu_v4l2_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_device = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32 }

@IMGU_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to register V4L2 device (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to register pipes (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to register subdevs (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to register media device (%d)\0A\00", align 1
@IMGU_MAX_PIPE_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imgu_v4l2_register(%struct.imgu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imgu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.imgu_device* %0, %struct.imgu_device** %3, align 8
  %5 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %6 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %8 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %7, i32 0, i32 1
  %9 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %10 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = load i32, i32* @IMGU_NAME, align 4
  %13 = call i32 @media_device_pci_init(i32* %8, %struct.TYPE_6__* %11, i32 %12)
  %14 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %15 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %14, i32 0, i32 1
  %16 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %17 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i32* %15, i32** %18, align 8
  %19 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %20 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %23 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %27 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %26, i32 0, i32 2
  %28 = call i32 @v4l2_device_register(i32* %25, %struct.TYPE_5__* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %33 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %85

38:                                               ; preds = %1
  %39 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %40 = call i32 @imgu_v4l2_register_pipes(%struct.imgu_device* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %45 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %81

50:                                               ; preds = %38
  %51 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %52 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %51, i32 0, i32 2
  %53 = call i32 @v4l2_device_register_subdev_nodes(%struct.TYPE_5__* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %58 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %77

63:                                               ; preds = %50
  %64 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %65 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %64, i32 0, i32 1
  %66 = call i32 @media_device_register(i32* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %71 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %77

76:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %90

77:                                               ; preds = %69, %56
  %78 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %79 = load i32, i32* @IMGU_MAX_PIPE_NUM, align 4
  %80 = call i32 @imgu_v4l2_cleanup_pipes(%struct.imgu_device* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %43
  %82 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %83 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %82, i32 0, i32 2
  %84 = call i32 @v4l2_device_unregister(%struct.TYPE_5__* %83)
  br label %85

85:                                               ; preds = %81, %31
  %86 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %87 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %86, i32 0, i32 1
  %88 = call i32 @media_device_cleanup(i32* %87)
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %85, %76
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @media_device_pci_init(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @imgu_v4l2_register_pipes(%struct.imgu_device*) #1

declare dso_local i32 @v4l2_device_register_subdev_nodes(%struct.TYPE_5__*) #1

declare dso_local i32 @media_device_register(i32*) #1

declare dso_local i32 @imgu_v4l2_cleanup_pipes(%struct.imgu_device*, i32) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @media_device_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
