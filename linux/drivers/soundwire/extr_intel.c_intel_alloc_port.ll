; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_intel_alloc_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_intel_alloc_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns_port = type { i32, i32, i8*, i8* }
%struct.sdw_intel = type { %struct.sdw_cdns }
%struct.sdw_cdns = type { i32, i32, i32, i32, %struct.sdw_cdns_port* }

@.str = private unnamed_addr constant [28 x i8] c"Unable to find a free port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdw_cdns_port* (%struct.sdw_intel*, i8*, i8*, i32)* @intel_alloc_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdw_cdns_port* @intel_alloc_port(%struct.sdw_intel* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sdw_cdns_port*, align 8
  %6 = alloca %struct.sdw_intel*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sdw_cdns*, align 8
  %11 = alloca %struct.sdw_cdns_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sdw_intel* %0, %struct.sdw_intel** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sdw_intel*, %struct.sdw_intel** %6, align 8
  %15 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %14, i32 0, i32 0
  store %struct.sdw_cdns* %15, %struct.sdw_cdns** %10, align 8
  store %struct.sdw_cdns_port* null, %struct.sdw_cdns_port** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %48, %4
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.sdw_cdns*, %struct.sdw_cdns** %10, align 8
  %19 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %16
  %23 = load %struct.sdw_cdns*, %struct.sdw_cdns** %10, align 8
  %24 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %23, i32 0, i32 4
  %25 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sdw_cdns_port, %struct.sdw_cdns_port* %25, i64 %27
  %29 = getelementptr inbounds %struct.sdw_cdns_port, %struct.sdw_cdns_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %48

33:                                               ; preds = %22
  %34 = load %struct.sdw_cdns*, %struct.sdw_cdns** %10, align 8
  %35 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %34, i32 0, i32 4
  %36 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sdw_cdns_port, %struct.sdw_cdns_port* %36, i64 %38
  store %struct.sdw_cdns_port* %39, %struct.sdw_cdns_port** %11, align 8
  %40 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %11, align 8
  %41 = getelementptr inbounds %struct.sdw_cdns_port, %struct.sdw_cdns_port* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %11, align 8
  %44 = getelementptr inbounds %struct.sdw_cdns_port, %struct.sdw_cdns_port* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %11, align 8
  %47 = getelementptr inbounds %struct.sdw_cdns_port, %struct.sdw_cdns_port* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  br label %51

48:                                               ; preds = %32
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %16

51:                                               ; preds = %33, %16
  %52 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %11, align 8
  %53 = icmp ne %struct.sdw_cdns_port* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.sdw_cdns*, %struct.sdw_cdns** %10, align 8
  %56 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.sdw_cdns_port* null, %struct.sdw_cdns_port** %5, align 8
  br label %109

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  %63 = load %struct.sdw_cdns*, %struct.sdw_cdns** %10, align 8
  %64 = load %struct.sdw_cdns*, %struct.sdw_cdns** %10, align 8
  %65 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %64, i32 0, i32 2
  %66 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %11, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @sdw_cdns_alloc_stream(%struct.sdw_cdns* %63, i32* %65, %struct.sdw_cdns_port* %66, i8* %67, i8* %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %101

73:                                               ; preds = %62
  %74 = load %struct.sdw_intel*, %struct.sdw_intel** %6, align 8
  %75 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %11, align 8
  %76 = getelementptr inbounds %struct.sdw_cdns_port, %struct.sdw_cdns_port* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @intel_pdi_shim_configure(%struct.sdw_intel* %74, i32 %77)
  %79 = load %struct.sdw_cdns*, %struct.sdw_cdns** %10, align 8
  %80 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %11, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %11, align 8
  %84 = getelementptr inbounds %struct.sdw_cdns_port, %struct.sdw_cdns_port* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @sdw_cdns_config_stream(%struct.sdw_cdns* %79, %struct.sdw_cdns_port* %80, i8* %81, i8* %82, i32 %85)
  %87 = load %struct.sdw_intel*, %struct.sdw_intel** %6, align 8
  %88 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %11, align 8
  %89 = getelementptr inbounds %struct.sdw_cdns_port, %struct.sdw_cdns_port* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @intel_pdi_alh_configure(%struct.sdw_intel* %87, i32 %90)
  br label %100

92:                                               ; preds = %59
  %93 = load %struct.sdw_cdns*, %struct.sdw_cdns** %10, align 8
  %94 = load %struct.sdw_cdns*, %struct.sdw_cdns** %10, align 8
  %95 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %94, i32 0, i32 1
  %96 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %11, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @sdw_cdns_alloc_stream(%struct.sdw_cdns* %93, i32* %95, %struct.sdw_cdns_port* %96, i8* %97, i8* %98)
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %92, %73
  br label %101

101:                                              ; preds = %100, %72
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %11, align 8
  %106 = getelementptr inbounds %struct.sdw_cdns_port, %struct.sdw_cdns_port* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  store %struct.sdw_cdns_port* null, %struct.sdw_cdns_port** %11, align 8
  br label %107

107:                                              ; preds = %104, %101
  %108 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %11, align 8
  store %struct.sdw_cdns_port* %108, %struct.sdw_cdns_port** %5, align 8
  br label %109

109:                                              ; preds = %107, %54
  %110 = load %struct.sdw_cdns_port*, %struct.sdw_cdns_port** %5, align 8
  ret %struct.sdw_cdns_port* %110
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sdw_cdns_alloc_stream(%struct.sdw_cdns*, i32*, %struct.sdw_cdns_port*, i8*, i8*) #1

declare dso_local i32 @intel_pdi_shim_configure(%struct.sdw_intel*, i32) #1

declare dso_local i32 @sdw_cdns_config_stream(%struct.sdw_cdns*, %struct.sdw_cdns_port*, i8*, i8*, i32) #1

declare dso_local i32 @intel_pdi_alh_configure(%struct.sdw_intel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
