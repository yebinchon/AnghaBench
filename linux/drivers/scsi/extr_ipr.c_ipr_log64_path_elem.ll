; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log64_path_elem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log64_path_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.ipr_hostrcb = type { i32 }
%struct.ipr_hostrcb64_config_element = type { i64, i64, i64, i32*, i32 }

@IPR_DESCRIPTOR_MASK = common dso_local global i64 0, align 8
@IPR_PATH_CFG_TYPE_MASK = common dso_local global i64 0, align 8
@IPR_PATH_CFG_STATUS_MASK = common dso_local global i64 0, align 8
@IPR_MAX_RES_PATH_LENGTH = common dso_local global i32 0, align 4
@IPR_PATH_CFG_NOT_EXIST = common dso_local global i64 0, align 8
@IPR_DESCRIPTOR_SIS64 = common dso_local global i64 0, align 8
@path_type_desc = common dso_local global %struct.TYPE_4__* null, align 8
@path_status_desc = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"%s %s: Resource Path=%s, Link rate=%s, WWN=%08X%08X\0A\00", align 1
@link_rate = common dso_local global i32* null, align 8
@IPR_PHY_LINK_RATE_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Path element=%02X: Resource Path=%s, Link rate=%s WWN=%08X%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_hostrcb*, %struct.ipr_hostrcb64_config_element*)* @ipr_log64_path_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_log64_path_elem(%struct.ipr_hostrcb* %0, %struct.ipr_hostrcb64_config_element* %1) #0 {
  %3 = alloca %struct.ipr_hostrcb*, align 8
  %4 = alloca %struct.ipr_hostrcb64_config_element*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ipr_hostrcb* %0, %struct.ipr_hostrcb** %3, align 8
  store %struct.ipr_hostrcb64_config_element* %1, %struct.ipr_hostrcb64_config_element** %4, align 8
  %13 = load %struct.ipr_hostrcb64_config_element*, %struct.ipr_hostrcb64_config_element** %4, align 8
  %14 = getelementptr inbounds %struct.ipr_hostrcb64_config_element, %struct.ipr_hostrcb64_config_element* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IPR_DESCRIPTOR_MASK, align 8
  %17 = and i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load %struct.ipr_hostrcb64_config_element*, %struct.ipr_hostrcb64_config_element** %4, align 8
  %19 = getelementptr inbounds %struct.ipr_hostrcb64_config_element, %struct.ipr_hostrcb64_config_element* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPR_PATH_CFG_TYPE_MASK, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %8, align 8
  %23 = load %struct.ipr_hostrcb64_config_element*, %struct.ipr_hostrcb64_config_element** %4, align 8
  %24 = getelementptr inbounds %struct.ipr_hostrcb64_config_element, %struct.ipr_hostrcb64_config_element* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IPR_PATH_CFG_STATUS_MASK, align 8
  %27 = and i64 %25, %26
  store i64 %27, i64* %9, align 8
  %28 = load i32, i32* @IPR_MAX_RES_PATH_LENGTH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %10, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %11, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @IPR_PATH_CFG_NOT_EXIST, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %2
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @IPR_DESCRIPTOR_SIS64, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %2
  store i32 1, i32* %12, align 4
  br label %157

40:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %120, %40
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_type_desc, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %123

46:                                               ; preds = %41
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_type_desc, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %120

56:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %116, %56
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_status_desc, align 8
  %60 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %119

62:                                               ; preds = %57
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_status_desc, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %116

72:                                               ; preds = %62
  %73 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %3, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_status_desc, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @path_type_desc, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %3, align 8
  %88 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ipr_hostrcb64_config_element*, %struct.ipr_hostrcb64_config_element** %4, align 8
  %91 = getelementptr inbounds %struct.ipr_hostrcb64_config_element, %struct.ipr_hostrcb64_config_element* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = trunc i64 %29 to i32
  %94 = call i32 @ipr_format_res_path(i32 %89, i32 %92, i8* %31, i32 %93)
  %95 = load i32*, i32** @link_rate, align 8
  %96 = load %struct.ipr_hostrcb64_config_element*, %struct.ipr_hostrcb64_config_element** %4, align 8
  %97 = getelementptr inbounds %struct.ipr_hostrcb64_config_element, %struct.ipr_hostrcb64_config_element* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @IPR_PHY_LINK_RATE_MASK, align 8
  %100 = and i64 %98, %99
  %101 = getelementptr inbounds i32, i32* %95, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ipr_hostrcb64_config_element*, %struct.ipr_hostrcb64_config_element** %4, align 8
  %104 = getelementptr inbounds %struct.ipr_hostrcb64_config_element, %struct.ipr_hostrcb64_config_element* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @be32_to_cpu(i32 %107)
  %109 = load %struct.ipr_hostrcb64_config_element*, %struct.ipr_hostrcb64_config_element** %4, align 8
  %110 = getelementptr inbounds %struct.ipr_hostrcb64_config_element, %struct.ipr_hostrcb64_config_element* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @be32_to_cpu(i32 %113)
  %115 = call i32 (%struct.ipr_hostrcb*, i8*, i64, i32, i32, i32, i32, ...) @ipr_hcam_err(%struct.ipr_hostrcb* %73, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %80, i32 %86, i32 %94, i32 %102, i32 %108, i32 %114)
  store i32 1, i32* %12, align 4
  br label %157

116:                                              ; preds = %71
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %57

119:                                              ; preds = %57
  br label %120

120:                                              ; preds = %119, %55
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %41

123:                                              ; preds = %41
  %124 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %3, align 8
  %125 = load %struct.ipr_hostrcb64_config_element*, %struct.ipr_hostrcb64_config_element** %4, align 8
  %126 = getelementptr inbounds %struct.ipr_hostrcb64_config_element, %struct.ipr_hostrcb64_config_element* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %3, align 8
  %129 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ipr_hostrcb64_config_element*, %struct.ipr_hostrcb64_config_element** %4, align 8
  %132 = getelementptr inbounds %struct.ipr_hostrcb64_config_element, %struct.ipr_hostrcb64_config_element* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = trunc i64 %29 to i32
  %135 = call i32 @ipr_format_res_path(i32 %130, i32 %133, i8* %31, i32 %134)
  %136 = load i32*, i32** @link_rate, align 8
  %137 = load %struct.ipr_hostrcb64_config_element*, %struct.ipr_hostrcb64_config_element** %4, align 8
  %138 = getelementptr inbounds %struct.ipr_hostrcb64_config_element, %struct.ipr_hostrcb64_config_element* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @IPR_PHY_LINK_RATE_MASK, align 8
  %141 = and i64 %139, %140
  %142 = getelementptr inbounds i32, i32* %136, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ipr_hostrcb64_config_element*, %struct.ipr_hostrcb64_config_element** %4, align 8
  %145 = getelementptr inbounds %struct.ipr_hostrcb64_config_element, %struct.ipr_hostrcb64_config_element* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @be32_to_cpu(i32 %148)
  %150 = load %struct.ipr_hostrcb64_config_element*, %struct.ipr_hostrcb64_config_element** %4, align 8
  %151 = getelementptr inbounds %struct.ipr_hostrcb64_config_element, %struct.ipr_hostrcb64_config_element* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @be32_to_cpu(i32 %154)
  %156 = call i32 (%struct.ipr_hostrcb*, i8*, i64, i32, i32, i32, i32, ...) @ipr_hcam_err(%struct.ipr_hostrcb* %124, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %127, i32 %135, i32 %143, i32 %149, i32 %155)
  store i32 0, i32* %12, align 4
  br label %157

157:                                              ; preds = %123, %72, %39
  %158 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i32, i32* %12, align 4
  switch i32 %159, label %161 [
    i32 0, label %160
    i32 1, label %160
  ]

160:                                              ; preds = %157, %157
  ret void

161:                                              ; preds = %157
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #2

declare dso_local i32 @ipr_hcam_err(%struct.ipr_hostrcb*, i8*, i64, i32, i32, i32, i32, ...) #2

declare dso_local i32 @ipr_format_res_path(i32, i32, i8*, i32) #2

declare dso_local i32 @be32_to_cpu(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
