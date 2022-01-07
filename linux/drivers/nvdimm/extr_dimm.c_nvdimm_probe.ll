; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm.c_nvdimm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm.c_nvdimm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nvdimm_drvdata = type { i32, i32, %struct.TYPE_4__, i32, %struct.device*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"security event setup failed: %d\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to unlock dimm: %d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"config data size: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nvdimm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdimm_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nvdimm_drvdata*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i32 @nvdimm_security_setup_events(%struct.device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @dev_err(%struct.device* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %134

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i32 @nvdimm_check_config_data(%struct.device* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ENOTTY, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %134

28:                                               ; preds = %15
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i32 @nvdimm_clear_locked(%struct.device* %29)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.nvdimm_drvdata* @kzalloc(i32 48, i32 %31)
  store %struct.nvdimm_drvdata* %32, %struct.nvdimm_drvdata** %4, align 8
  %33 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %34 = icmp ne %struct.nvdimm_drvdata* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %134

38:                                               ; preds = %28
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %41 = call i32 @dev_set_drvdata(%struct.device* %39, %struct.nvdimm_drvdata* %40)
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = call i32 @dev_name(%struct.device* %42)
  %44 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %45 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %48 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  %49 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %50 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 4
  %51 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %52 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %55 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 8
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %59 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %58, i32 0, i32 4
  store %struct.device* %57, %struct.device** %59, align 8
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = call i32 @get_device(%struct.device* %60)
  %62 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %63 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %62, i32 0, i32 3
  %64 = call i32 @kref_init(i32* %63)
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = call i32 @nvdimm_security_unlock(%struct.device* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %38
  %70 = load %struct.device*, %struct.device** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @dev_dbg(%struct.device* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %38
  %74 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %75 = call i32 @nvdimm_init_nsarea(%struct.nvdimm_drvdata* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @EACCES, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = call i32 @nvdimm_set_locked(%struct.device* %81)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %73
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %130

87:                                               ; preds = %83
  %88 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %89 = call i32 @nd_label_data_init(%struct.nvdimm_drvdata* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @EACCES, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load %struct.device*, %struct.device** %3, align 8
  %96 = call i32 @nvdimm_set_locked(%struct.device* %95)
  br label %97

97:                                               ; preds = %94, %87
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %130

101:                                              ; preds = %97
  %102 = load %struct.device*, %struct.device** %3, align 8
  %103 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %104 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dev_dbg(%struct.device* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load %struct.device*, %struct.device** %3, align 8
  %109 = call i32 @nvdimm_bus_lock(%struct.device* %108)
  %110 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %111 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %101
  %115 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %116 = call i32 @nd_label_reserve_dpa(%struct.nvdimm_drvdata* %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.device*, %struct.device** %3, align 8
  %121 = call i32 @nvdimm_set_aliasing(%struct.device* %120)
  br label %122

122:                                              ; preds = %119, %114
  br label %123

123:                                              ; preds = %122, %101
  %124 = load %struct.device*, %struct.device** %3, align 8
  %125 = call i32 @nvdimm_bus_unlock(%struct.device* %124)
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %130

129:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %134

130:                                              ; preds = %128, %100, %86
  %131 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %132 = call i32 @put_ndd(%struct.nvdimm_drvdata* %131)
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %130, %129, %35, %26, %10
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @nvdimm_security_setup_events(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @nvdimm_check_config_data(%struct.device*) #1

declare dso_local i32 @nvdimm_clear_locked(%struct.device*) #1

declare dso_local %struct.nvdimm_drvdata* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.nvdimm_drvdata*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @nvdimm_security_unlock(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @nvdimm_init_nsarea(%struct.nvdimm_drvdata*) #1

declare dso_local i32 @nvdimm_set_locked(%struct.device*) #1

declare dso_local i32 @nd_label_data_init(%struct.nvdimm_drvdata*) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local i32 @nd_label_reserve_dpa(%struct.nvdimm_drvdata*) #1

declare dso_local i32 @nvdimm_set_aliasing(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i32 @put_ndd(%struct.nvdimm_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
