; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_eeprom_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_eeprom_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.NvRamType = type { i64, i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@cfg_data = common dso_local global %struct.TYPE_4__* null, align 8
@CFG_ADAPTER_ID = common dso_local global i64 0, align 8
@CFG_PARAM_UNSET = common dso_local global i64 0, align 8
@CFG_ADAPTER_MODE = common dso_local global i64 0, align 8
@CFG_RESET_DELAY = common dso_local global i64 0, align 8
@CFG_TAGS = common dso_local global i64 0, align 8
@DC395x_MAX_SCSI_ID = common dso_local global i64 0, align 8
@CFG_DEV_MODE = common dso_local global i64 0, align 8
@CFG_MAX_SPEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.NvRamType*)* @eeprom_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_override(%struct.NvRamType* %0) #0 {
  %2 = alloca %struct.NvRamType*, align 8
  %3 = alloca i64, align 8
  store %struct.NvRamType* %0, %struct.NvRamType** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfg_data, align 8
  %5 = load i64, i64* @CFG_ADAPTER_ID, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CFG_PARAM_UNSET, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfg_data, align 8
  %13 = load i64, i64* @CFG_ADAPTER_ID, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.NvRamType*, %struct.NvRamType** %2, align 8
  %18 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfg_data, align 8
  %21 = load i64, i64* @CFG_ADAPTER_MODE, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CFG_PARAM_UNSET, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfg_data, align 8
  %29 = load i64, i64* @CFG_ADAPTER_MODE, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.NvRamType*, %struct.NvRamType** %2, align 8
  %34 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %27, %19
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfg_data, align 8
  %37 = load i64, i64* @CFG_RESET_DELAY, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CFG_PARAM_UNSET, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfg_data, align 8
  %45 = load i64, i64* @CFG_RESET_DELAY, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @delay_to_eeprom_index(i64 %48)
  %50 = load %struct.NvRamType*, %struct.NvRamType** %2, align 8
  %51 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %43, %35
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfg_data, align 8
  %54 = load i64, i64* @CFG_TAGS, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CFG_PARAM_UNSET, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfg_data, align 8
  %62 = load i64, i64* @CFG_TAGS, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.NvRamType*, %struct.NvRamType** %2, align 8
  %67 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %60, %52
  store i64 0, i64* %3, align 8
  br label %69

69:                                               ; preds = %114, %68
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* @DC395x_MAX_SCSI_ID, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %117

73:                                               ; preds = %69
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfg_data, align 8
  %75 = load i64, i64* @CFG_DEV_MODE, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CFG_PARAM_UNSET, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %73
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfg_data, align 8
  %83 = load i64, i64* @CFG_DEV_MODE, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.NvRamType*, %struct.NvRamType** %2, align 8
  %88 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %87, i32 0, i32 3
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i64, i64* %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i64 %86, i64* %92, align 8
  br label %93

93:                                               ; preds = %81, %73
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfg_data, align 8
  %95 = load i64, i64* @CFG_MAX_SPEED, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @CFG_PARAM_UNSET, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %93
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfg_data, align 8
  %103 = load i64, i64* @CFG_MAX_SPEED, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.NvRamType*, %struct.NvRamType** %2, align 8
  %108 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %107, i32 0, i32 3
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i64, i64* %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i64 %106, i64* %112, align 8
  br label %113

113:                                              ; preds = %101, %93
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %3, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %3, align 8
  br label %69

117:                                              ; preds = %69
  ret void
}

declare dso_local i32 @delay_to_eeprom_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
