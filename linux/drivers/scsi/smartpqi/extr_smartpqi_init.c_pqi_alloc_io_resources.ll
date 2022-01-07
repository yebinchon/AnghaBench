; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_alloc_io_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_alloc_io_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i64, %struct.TYPE_2__*, i32, %struct.pqi_io_request* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.pqi_io_request = type { i32, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to allocate I/O request pool\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to allocate IU buffers\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"failed to allocate PQI scatter-gather chain buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_alloc_io_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_alloc_io_resources(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.pqi_io_request*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %11 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.pqi_io_request* @kcalloc(i32 %12, i32 24, i32 %13)
  %15 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %16 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %15, i32 0, i32 4
  store %struct.pqi_io_request* %14, %struct.pqi_io_request** %16, align 8
  %17 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %18 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %17, i32 0, i32 4
  %19 = load %struct.pqi_io_request*, %struct.pqi_io_request** %18, align 8
  %20 = icmp ne %struct.pqi_io_request* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %23 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %91

27:                                               ; preds = %1
  %28 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %29 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.device* %31, %struct.device** %8, align 8
  %32 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %33 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %6, align 8
  %35 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %36 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %35, i32 0, i32 4
  %37 = load %struct.pqi_io_request*, %struct.pqi_io_request** %36, align 8
  store %struct.pqi_io_request* %37, %struct.pqi_io_request** %9, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %87, %27
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %41 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %38
  %45 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %46 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @kmalloc(i32 %47, i32 %48)
  %50 = load %struct.pqi_io_request*, %struct.pqi_io_request** %9, align 8
  %51 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pqi_io_request*, %struct.pqi_io_request** %9, align 8
  %53 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %44
  %57 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %58 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %91

62:                                               ; preds = %44
  %63 = load %struct.device*, %struct.device** %8, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @dma_alloc_coherent(%struct.device* %63, i64 %64, i32* %7, i32 %65)
  store i8* %66, i8** %5, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %71 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %91

75:                                               ; preds = %62
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.pqi_io_request*, %struct.pqi_io_request** %9, align 8
  %78 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load %struct.pqi_io_request*, %struct.pqi_io_request** %9, align 8
  %81 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.pqi_io_request*, %struct.pqi_io_request** %9, align 8
  %84 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.pqi_io_request*, %struct.pqi_io_request** %9, align 8
  %86 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %85, i32 1
  store %struct.pqi_io_request* %86, %struct.pqi_io_request** %9, align 8
  br label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %4, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %38

90:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %96

91:                                               ; preds = %69, %56, %21
  %92 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %93 = call i32 @pqi_free_all_io_requests(%struct.pqi_ctrl_info* %92)
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %91, %90
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.pqi_io_request* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @pqi_free_all_io_requests(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
