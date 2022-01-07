; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.resource_table*, %struct.resource_table*, %struct.TYPE_2__*, i32, i32, i32, %struct.device }
%struct.resource_table = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.rproc*)*, i32 (%struct.rproc*)* }
%struct.device = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Failed to load program segments: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to prepare subdevices for %s: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"can't start rproc %s: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to probe subdevices for %s: %d\0A\00", align 1
@RPROC_RUNNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"remote processor %s is now up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, %struct.firmware*)* @rproc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_start(%struct.rproc* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.resource_table*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %9 = load %struct.rproc*, %struct.rproc** %4, align 8
  %10 = getelementptr inbounds %struct.rproc, %struct.rproc* %9, i32 0, i32 6
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.rproc*, %struct.rproc** %4, align 8
  %12 = load %struct.firmware*, %struct.firmware** %5, align 8
  %13 = call i32 @rproc_load_segments(%struct.rproc* %11, %struct.firmware* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %107

21:                                               ; preds = %2
  %22 = load %struct.rproc*, %struct.rproc** %4, align 8
  %23 = load %struct.firmware*, %struct.firmware** %5, align 8
  %24 = call %struct.resource_table* @rproc_find_loaded_rsc_table(%struct.rproc* %22, %struct.firmware* %23)
  store %struct.resource_table* %24, %struct.resource_table** %6, align 8
  %25 = load %struct.resource_table*, %struct.resource_table** %6, align 8
  %26 = icmp ne %struct.resource_table* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.resource_table*, %struct.resource_table** %6, align 8
  %29 = load %struct.rproc*, %struct.rproc** %4, align 8
  %30 = getelementptr inbounds %struct.rproc, %struct.rproc* %29, i32 0, i32 0
  %31 = load %struct.resource_table*, %struct.resource_table** %30, align 8
  %32 = load %struct.rproc*, %struct.rproc** %4, align 8
  %33 = getelementptr inbounds %struct.rproc, %struct.rproc* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @memcpy(%struct.resource_table* %28, %struct.resource_table* %31, i32 %34)
  %36 = load %struct.resource_table*, %struct.resource_table** %6, align 8
  %37 = load %struct.rproc*, %struct.rproc** %4, align 8
  %38 = getelementptr inbounds %struct.rproc, %struct.rproc* %37, i32 0, i32 1
  store %struct.resource_table* %36, %struct.resource_table** %38, align 8
  br label %39

39:                                               ; preds = %27, %21
  %40 = load %struct.rproc*, %struct.rproc** %4, align 8
  %41 = call i32 @rproc_prepare_subdevices(%struct.rproc* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = load %struct.rproc*, %struct.rproc** %4, align 8
  %47 = getelementptr inbounds %struct.rproc, %struct.rproc* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  br label %100

51:                                               ; preds = %39
  %52 = load %struct.rproc*, %struct.rproc** %4, align 8
  %53 = getelementptr inbounds %struct.rproc, %struct.rproc* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.rproc*)*, i32 (%struct.rproc*)** %55, align 8
  %57 = load %struct.rproc*, %struct.rproc** %4, align 8
  %58 = call i32 %56(%struct.rproc* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = load %struct.rproc*, %struct.rproc** %4, align 8
  %64 = getelementptr inbounds %struct.rproc, %struct.rproc* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66)
  br label %97

68:                                               ; preds = %51
  %69 = load %struct.rproc*, %struct.rproc** %4, align 8
  %70 = call i32 @rproc_start_subdevices(%struct.rproc* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = load %struct.rproc*, %struct.rproc** %4, align 8
  %76 = getelementptr inbounds %struct.rproc, %struct.rproc* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %78)
  br label %89

80:                                               ; preds = %68
  %81 = load i32, i32* @RPROC_RUNNING, align 4
  %82 = load %struct.rproc*, %struct.rproc** %4, align 8
  %83 = getelementptr inbounds %struct.rproc, %struct.rproc* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  %84 = load %struct.device*, %struct.device** %7, align 8
  %85 = load %struct.rproc*, %struct.rproc** %4, align 8
  %86 = getelementptr inbounds %struct.rproc, %struct.rproc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_info(%struct.device* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  store i32 0, i32* %3, align 4
  br label %107

89:                                               ; preds = %73
  %90 = load %struct.rproc*, %struct.rproc** %4, align 8
  %91 = getelementptr inbounds %struct.rproc, %struct.rproc* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32 (%struct.rproc*)*, i32 (%struct.rproc*)** %93, align 8
  %95 = load %struct.rproc*, %struct.rproc** %4, align 8
  %96 = call i32 %94(%struct.rproc* %95)
  br label %97

97:                                               ; preds = %89, %61
  %98 = load %struct.rproc*, %struct.rproc** %4, align 8
  %99 = call i32 @rproc_unprepare_subdevices(%struct.rproc* %98)
  br label %100

100:                                              ; preds = %97, %44
  %101 = load %struct.rproc*, %struct.rproc** %4, align 8
  %102 = getelementptr inbounds %struct.rproc, %struct.rproc* %101, i32 0, i32 0
  %103 = load %struct.resource_table*, %struct.resource_table** %102, align 8
  %104 = load %struct.rproc*, %struct.rproc** %4, align 8
  %105 = getelementptr inbounds %struct.rproc, %struct.rproc* %104, i32 0, i32 1
  store %struct.resource_table* %103, %struct.resource_table** %105, align 8
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %100, %80, %16
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @rproc_load_segments(%struct.rproc*, %struct.firmware*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local %struct.resource_table* @rproc_find_loaded_rsc_table(%struct.rproc*, %struct.firmware*) #1

declare dso_local i32 @memcpy(%struct.resource_table*, %struct.resource_table*, i32) #1

declare dso_local i32 @rproc_prepare_subdevices(%struct.rproc*) #1

declare dso_local i32 @rproc_start_subdevices(%struct.rproc*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @rproc_unprepare_subdevices(%struct.rproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
