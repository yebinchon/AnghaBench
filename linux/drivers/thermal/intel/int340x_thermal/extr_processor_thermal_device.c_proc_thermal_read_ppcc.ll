; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_processor_thermal_device.c_proc_thermal_read_ppcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_processor_thermal_device.c_proc_thermal_read_ppcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_thermal_device = type { %struct.TYPE_7__*, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %union.acpi_object* }
%struct.TYPE_8__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PPCC\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid PPCC data\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid PPCC package size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc_thermal_device*)* @proc_thermal_read_ppcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_thermal_read_ppcc(%struct.proc_thermal_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proc_thermal_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca i32, align 4
  store %struct.proc_thermal_device* %0, %struct.proc_thermal_device** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %12 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %union.acpi_object*
  store %union.acpi_object* %14, %union.acpi_object** %11, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 2
  store i32 0, i32* %16, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %3, align 8
  %18 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @acpi_evaluate_object(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %6)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %179

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %31 = load %union.acpi_object*, %union.acpi_object** %30, align 8
  store %union.acpi_object* %31, %union.acpi_object** %9, align 8
  %32 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %33 = icmp ne %union.acpi_object* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %36 = bitcast %union.acpi_object* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34, %29
  %41 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %3, align 8
  %42 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EFAULT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %174

47:                                               ; preds = %34
  %48 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %49 = bitcast %union.acpi_object* %48 to %struct.TYPE_6__*
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %3, align 8
  %55 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EFAULT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %174

60:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %170, %60
  %62 = load i32, i32* %4, align 4
  %63 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %64 = bitcast %union.acpi_object* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = call i32 @min(i32 %67, i32 2)
  %69 = icmp slt i32 %62, %68
  br i1 %69, label %70, label %173

70:                                               ; preds = %61
  %71 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %72 = bitcast %union.acpi_object* %71 to %struct.TYPE_6__*
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load %union.acpi_object*, %union.acpi_object** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %74, i64 %77
  store %union.acpi_object* %78, %union.acpi_object** %7, align 8
  %79 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %80 = bitcast %union.acpi_object* %79 to i64*
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %70
  %85 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %86 = bitcast %union.acpi_object* %85 to %struct.TYPE_6__*
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 6
  br i1 %89, label %90, label %93

90:                                               ; preds = %84, %70
  %91 = load i32, i32* @EFAULT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %10, align 4
  br label %174

93:                                               ; preds = %84
  %94 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %95 = bitcast %union.acpi_object* %94 to %struct.TYPE_6__*
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load %union.acpi_object*, %union.acpi_object** %96, align 8
  store %union.acpi_object* %97, %union.acpi_object** %8, align 8
  %98 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %99 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %98, i64 0
  %100 = bitcast %union.acpi_object* %99 to %struct.TYPE_8__*
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %3, align 8
  %104 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 5
  store i32 %102, i32* %109, align 4
  %110 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %111 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %110, i64 1
  %112 = bitcast %union.acpi_object* %111 to %struct.TYPE_8__*
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %3, align 8
  %116 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 4
  store i32 %114, i32* %121, align 4
  %122 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %123 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %122, i64 2
  %124 = bitcast %union.acpi_object* %123 to %struct.TYPE_8__*
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %3, align 8
  %128 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  store i32 %126, i32* %133, align 4
  %134 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %135 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %134, i64 3
  %136 = bitcast %union.acpi_object* %135 to %struct.TYPE_8__*
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %3, align 8
  %140 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %139, i32 0, i32 0
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  store i32 %138, i32* %145, align 4
  %146 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %147 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %146, i64 4
  %148 = bitcast %union.acpi_object* %147 to %struct.TYPE_8__*
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %3, align 8
  %152 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  store i32 %150, i32* %157, align 4
  %158 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %159 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %158, i64 5
  %160 = bitcast %union.acpi_object* %159 to %struct.TYPE_8__*
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %3, align 8
  %164 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %163, i32 0, i32 0
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  store i32 %162, i32* %169, align 4
  br label %170

170:                                              ; preds = %93
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %4, align 4
  br label %61

173:                                              ; preds = %61
  br label %174

174:                                              ; preds = %173, %90, %53, %40
  %175 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %176 = load %union.acpi_object*, %union.acpi_object** %175, align 8
  %177 = call i32 @kfree(%union.acpi_object* %176)
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %174, %26
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
