; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_init_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_init_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5 = type { i32, i32, i32, i8*, i8*, i8* }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.of_phandle_args = type { i32*, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"qdsp6\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rmb\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"qcom,halt-regs\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to parse qcom,halt-regs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6v5*, %struct.platform_device*)* @q6v5_init_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_init_mem(%struct.q6v5* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.q6v5*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.of_phandle_args, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.q6v5* %0, %struct.q6v5** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %10 = load i32, i32* @IORESOURCE_MEM, align 4
  %11 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %9, i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %11, %struct.resource** %7, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load %struct.resource*, %struct.resource** %7, align 8
  %15 = call i8* @devm_ioremap_resource(%struct.TYPE_3__* %13, %struct.resource* %14)
  %16 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %17 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %16, i32 0, i32 5
  store i8* %15, i8** %17, align 8
  %18 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %19 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %18, i32 0, i32 5
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %25 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %24, i32 0, i32 5
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @PTR_ERR(i8* %26)
  store i32 %27, i32* %3, align 4
  br label %100

28:                                               ; preds = %2
  %29 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %29, i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %31, %struct.resource** %7, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.resource*, %struct.resource** %7, align 8
  %35 = call i8* @devm_ioremap_resource(%struct.TYPE_3__* %33, %struct.resource* %34)
  %36 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %37 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %39 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %38, i32 0, i32 4
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %45 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR(i8* %46)
  store i32 %47, i32* %3, align 4
  br label %100

48:                                               ; preds = %28
  %49 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @of_parse_phandle_with_fixed_args(i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 3, i32 0, %struct.of_phandle_args* %6)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(%struct.TYPE_3__* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %100

62:                                               ; preds = %48
  %63 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @syscon_node_to_regmap(i32 %64)
  %66 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %67 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @of_node_put(i32 %69)
  %71 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %72 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @IS_ERR(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %62
  %77 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %78 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @PTR_ERR(i8* %79)
  store i32 %80, i32* %3, align 4
  br label %100

81:                                               ; preds = %62
  %82 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %87 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %93 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %99 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %81, %76, %56, %43, %23
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_3__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @of_parse_phandle_with_fixed_args(i32, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i8* @syscon_node_to_regmap(i32) #1

declare dso_local i32 @of_node_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
