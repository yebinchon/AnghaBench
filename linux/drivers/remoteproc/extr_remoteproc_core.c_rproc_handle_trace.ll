; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_handle_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_handle_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.fw_rsc_trace = type { i32, i32, i64 }
%struct.rproc_debug_trace = type { i32, i32, %struct.rproc*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"trace rsc is truncated\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"trace rsc has non zero reserved bytes\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"trace%d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s added: da 0x%x, len 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, %struct.fw_rsc_trace*, i32, i32)* @rproc_handle_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_handle_trace(%struct.rproc* %0, %struct.fw_rsc_trace* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rproc*, align 8
  %7 = alloca %struct.fw_rsc_trace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rproc_debug_trace*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca [15 x i8], align 1
  store %struct.rproc* %0, %struct.rproc** %6, align 8
  store %struct.fw_rsc_trace* %1, %struct.fw_rsc_trace** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.rproc*, %struct.rproc** %6, align 8
  %14 = getelementptr inbounds %struct.rproc, %struct.rproc* %13, i32 0, i32 2
  store %struct.device* %14, %struct.device** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ugt i64 16, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.device*, %struct.device** %11, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %96

23:                                               ; preds = %4
  %24 = load %struct.fw_rsc_trace*, %struct.fw_rsc_trace** %7, align 8
  %25 = getelementptr inbounds %struct.fw_rsc_trace, %struct.fw_rsc_trace* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %11, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %96

33:                                               ; preds = %23
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.rproc_debug_trace* @kzalloc(i32 24, i32 %34)
  store %struct.rproc_debug_trace* %35, %struct.rproc_debug_trace** %10, align 8
  %36 = load %struct.rproc_debug_trace*, %struct.rproc_debug_trace** %10, align 8
  %37 = icmp ne %struct.rproc_debug_trace* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %96

41:                                               ; preds = %33
  %42 = load %struct.fw_rsc_trace*, %struct.fw_rsc_trace** %7, align 8
  %43 = getelementptr inbounds %struct.fw_rsc_trace, %struct.fw_rsc_trace* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.rproc_debug_trace*, %struct.rproc_debug_trace** %10, align 8
  %46 = getelementptr inbounds %struct.rproc_debug_trace, %struct.rproc_debug_trace* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.fw_rsc_trace*, %struct.fw_rsc_trace** %7, align 8
  %49 = getelementptr inbounds %struct.fw_rsc_trace, %struct.fw_rsc_trace* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rproc_debug_trace*, %struct.rproc_debug_trace** %10, align 8
  %52 = getelementptr inbounds %struct.rproc_debug_trace, %struct.rproc_debug_trace* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.rproc*, %struct.rproc** %6, align 8
  %55 = load %struct.rproc_debug_trace*, %struct.rproc_debug_trace** %10, align 8
  %56 = getelementptr inbounds %struct.rproc_debug_trace, %struct.rproc_debug_trace* %55, i32 0, i32 2
  store %struct.rproc* %54, %struct.rproc** %56, align 8
  %57 = getelementptr inbounds [15 x i8], [15 x i8]* %12, i64 0, i64 0
  %58 = load %struct.rproc*, %struct.rproc** %6, align 8
  %59 = getelementptr inbounds %struct.rproc, %struct.rproc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @snprintf(i8* %57, i32 15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds [15 x i8], [15 x i8]* %12, i64 0, i64 0
  %63 = load %struct.rproc*, %struct.rproc** %6, align 8
  %64 = load %struct.rproc_debug_trace*, %struct.rproc_debug_trace** %10, align 8
  %65 = call i32 @rproc_create_trace_file(i8* %62, %struct.rproc* %63, %struct.rproc_debug_trace* %64)
  %66 = load %struct.rproc_debug_trace*, %struct.rproc_debug_trace** %10, align 8
  %67 = getelementptr inbounds %struct.rproc_debug_trace, %struct.rproc_debug_trace* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.rproc_debug_trace*, %struct.rproc_debug_trace** %10, align 8
  %69 = getelementptr inbounds %struct.rproc_debug_trace, %struct.rproc_debug_trace* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %41
  %73 = load %struct.rproc_debug_trace*, %struct.rproc_debug_trace** %10, align 8
  %74 = call i32 @kfree(%struct.rproc_debug_trace* %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %96

77:                                               ; preds = %41
  %78 = load %struct.rproc_debug_trace*, %struct.rproc_debug_trace** %10, align 8
  %79 = getelementptr inbounds %struct.rproc_debug_trace, %struct.rproc_debug_trace* %78, i32 0, i32 0
  %80 = load %struct.rproc*, %struct.rproc** %6, align 8
  %81 = getelementptr inbounds %struct.rproc, %struct.rproc* %80, i32 0, i32 1
  %82 = call i32 @list_add_tail(i32* %79, i32* %81)
  %83 = load %struct.rproc*, %struct.rproc** %6, align 8
  %84 = getelementptr inbounds %struct.rproc, %struct.rproc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.device*, %struct.device** %11, align 8
  %88 = getelementptr inbounds [15 x i8], [15 x i8]* %12, i64 0, i64 0
  %89 = load %struct.fw_rsc_trace*, %struct.fw_rsc_trace** %7, align 8
  %90 = getelementptr inbounds %struct.fw_rsc_trace, %struct.fw_rsc_trace* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.fw_rsc_trace*, %struct.fw_rsc_trace** %7, align 8
  %93 = getelementptr inbounds %struct.fw_rsc_trace, %struct.fw_rsc_trace* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_dbg(%struct.device* %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %88, i32 %91, i32 %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %77, %72, %38, %28, %18
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.rproc_debug_trace* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @rproc_create_trace_file(i8*, %struct.rproc*, %struct.rproc_debug_trace*) #1

declare dso_local i32 @kfree(%struct.rproc_debug_trace*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
