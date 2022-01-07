; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_setup_pt_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_setup_pt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xcopy_pt_cmd = type { %struct.se_cmd }
%struct.se_cmd = type { i32, i32, i32, i32, i64, %struct.se_device*, i32* }
%struct.xcopy_op = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.se_device*, i32* }
%struct.se_device = type { i32 }

@SCF_SE_LUN_CMD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Setup PASSTHROUGH_NOALLOC t_data_sg: %p t_data_nents: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xcopy_pt_cmd*, %struct.xcopy_op*, %struct.se_device*, i8*, i32, i32)* @target_xcopy_setup_pt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_xcopy_setup_pt_cmd(%struct.xcopy_pt_cmd* %0, %struct.xcopy_op* %1, %struct.se_device* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xcopy_pt_cmd*, align 8
  %9 = alloca %struct.xcopy_op*, align 8
  %10 = alloca %struct.se_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.se_cmd*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.xcopy_pt_cmd* %0, %struct.xcopy_pt_cmd** %8, align 8
  store %struct.xcopy_op* %1, %struct.xcopy_op** %9, align 8
  store %struct.se_device* %2, %struct.se_device** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %8, align 8
  %19 = getelementptr inbounds %struct.xcopy_pt_cmd, %struct.xcopy_pt_cmd* %18, i32 0, i32 0
  store %struct.se_cmd* %19, %struct.se_cmd** %14, align 8
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %6
  %23 = load %struct.se_device*, %struct.se_device** %10, align 8
  %24 = getelementptr inbounds %struct.se_device, %struct.se_device* %23, i32 0, i32 0
  %25 = load %struct.se_cmd*, %struct.se_cmd** %14, align 8
  %26 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %25, i32 0, i32 6
  store i32* %24, i32** %26, align 8
  %27 = load %struct.se_device*, %struct.se_device** %10, align 8
  %28 = load %struct.se_cmd*, %struct.se_cmd** %14, align 8
  %29 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %28, i32 0, i32 5
  store %struct.se_device* %27, %struct.se_device** %29, align 8
  br label %45

30:                                               ; preds = %6
  %31 = load %struct.xcopy_op*, %struct.xcopy_op** %9, align 8
  %32 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.se_cmd*, %struct.se_cmd** %14, align 8
  %37 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %36, i32 0, i32 6
  store i32* %35, i32** %37, align 8
  %38 = load %struct.xcopy_op*, %struct.xcopy_op** %9, align 8
  %39 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.se_device*, %struct.se_device** %41, align 8
  %43 = load %struct.se_cmd*, %struct.se_cmd** %14, align 8
  %44 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %43, i32 0, i32 5
  store %struct.se_device* %42, %struct.se_device** %44, align 8
  br label %45

45:                                               ; preds = %30, %22
  %46 = load i32, i32* @SCF_SE_LUN_CMD, align 4
  %47 = load %struct.se_cmd*, %struct.se_cmd** %14, align 8
  %48 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.se_cmd*, %struct.se_cmd** %14, align 8
  %52 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.se_cmd*, %struct.se_cmd** %14, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i64 @target_setup_cmd_from_cdb(%struct.se_cmd* %53, i8* %54)
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %16, align 4
  br label %106

61:                                               ; preds = %45
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load %struct.se_cmd*, %struct.se_cmd** %14, align 8
  %66 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %65, i32 0, i32 1
  %67 = load %struct.se_cmd*, %struct.se_cmd** %14, align 8
  %68 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %67, i32 0, i32 0
  %69 = load %struct.se_cmd*, %struct.se_cmd** %14, align 8
  %70 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @target_alloc_sgl(i32* %66, i32* %68, i32 %71, i32 0, i32 0)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i32, i32* %17, align 4
  store i32 %76, i32* %16, align 4
  br label %106

77:                                               ; preds = %64
  %78 = load i32, i32* @SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC, align 4
  %79 = load %struct.se_cmd*, %struct.se_cmd** %14, align 8
  %80 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %105

83:                                               ; preds = %61
  %84 = load %struct.se_cmd*, %struct.se_cmd** %14, align 8
  %85 = load %struct.xcopy_op*, %struct.xcopy_op** %9, align 8
  %86 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.xcopy_op*, %struct.xcopy_op** %9, align 8
  %89 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @transport_generic_map_mem_to_cmd(%struct.se_cmd* %84, i32 %87, i32 %90, i32* null, i32 0)
  store i64 %91, i64* %15, align 8
  %92 = load i64, i64* %15, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %16, align 4
  br label %106

97:                                               ; preds = %83
  %98 = load %struct.se_cmd*, %struct.se_cmd** %14, align 8
  %99 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.se_cmd*, %struct.se_cmd** %14, align 8
  %102 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %97, %77
  store i32 0, i32* %7, align 4
  br label %108

106:                                              ; preds = %94, %75, %58
  %107 = load i32, i32* %16, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %106, %105
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i64 @target_setup_cmd_from_cdb(%struct.se_cmd*, i8*) #1

declare dso_local i32 @target_alloc_sgl(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @transport_generic_map_mem_to_cmd(%struct.se_cmd*, i32, i32, i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
