; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_set_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_set_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_discipline = type { i32 (%struct.dasd_device*)*, i32, i32 }
%struct.dasd_device = type opaque
%struct.ccw_device = type { i32 }
%struct.dasd_device.0 = type { i32, i64, i64, %struct.dasd_discipline*, %struct.dasd_discipline* }

@DASD_FEATURE_INITIAL_ONLINE = common dso_local global i32 0, align 4
@DASD_FEATURE_USEDIAG = common dso_local global i32 0, align 4
@dasd_diag_discipline_pointer = common dso_local global %struct.dasd_discipline* null, align 8
@DASD_DIAG_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"%s Setting the DASD online failed because the required module %s could not be loaded (rc=%d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"%s Setting the DASD online failed because of missing DIAG discipline\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"%s Setting the DASD online with discipline %s failed with rc=%i\0A\00", align 1
@DASD_STATE_ONLINE = common dso_local global i32 0, align 4
@DASD_STATE_KNOWN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"%s Setting the DASD online failed because of a missing discipline\0A\00", align 1
@DASD_STATE_NEW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"dasd_generic device %s found\0A\00", align 1
@dasd_init_waitq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_generic_set_online(%struct.ccw_device* %0, %struct.dasd_discipline* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca %struct.dasd_discipline*, align 8
  %6 = alloca %struct.dasd_discipline*, align 8
  %7 = alloca %struct.dasd_device.0*, align 8
  %8 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store %struct.dasd_discipline* %1, %struct.dasd_discipline** %5, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %10 = load i32, i32* @DASD_FEATURE_INITIAL_ONLINE, align 4
  %11 = call i32 @dasd_set_feature(%struct.ccw_device* %9, i32 %10, i32 0)
  %12 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %13 = call %struct.dasd_device.0* @dasd_create_device(%struct.ccw_device* %12)
  store %struct.dasd_device.0* %13, %struct.dasd_device.0** %7, align 8
  %14 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %15 = call i64 @IS_ERR(%struct.dasd_device.0* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %19 = call i32 @PTR_ERR(%struct.dasd_device.0* %18)
  store i32 %19, i32* %3, align 4
  br label %167

20:                                               ; preds = %2
  %21 = load %struct.dasd_discipline*, %struct.dasd_discipline** %5, align 8
  store %struct.dasd_discipline* %21, %struct.dasd_discipline** %6, align 8
  %22 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %23 = getelementptr inbounds %struct.dasd_device.0, %struct.dasd_device.0* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DASD_FEATURE_USEDIAG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %20
  %29 = load %struct.dasd_discipline*, %struct.dasd_discipline** @dasd_diag_discipline_pointer, align 8
  %30 = icmp ne %struct.dasd_discipline* %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @DASD_DIAG_MOD, align 4
  %33 = call i32 @request_module(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %38 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %37, i32 0, i32 0
  %39 = call i32 @dev_name(i32* %38)
  %40 = load i32, i32* @DASD_DIAG_MOD, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41)
  %43 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %44 = call i32 @dasd_delete_device(%struct.dasd_device.0* %43)
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %167

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %28
  %49 = load %struct.dasd_discipline*, %struct.dasd_discipline** @dasd_diag_discipline_pointer, align 8
  %50 = icmp ne %struct.dasd_discipline* %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %53 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %52, i32 0, i32 0
  %54 = call i32 @dev_name(i32* %53)
  %55 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %57 = call i32 @dasd_delete_device(%struct.dasd_device.0* %56)
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %167

60:                                               ; preds = %48
  %61 = load %struct.dasd_discipline*, %struct.dasd_discipline** @dasd_diag_discipline_pointer, align 8
  store %struct.dasd_discipline* %61, %struct.dasd_discipline** %6, align 8
  br label %62

62:                                               ; preds = %60, %20
  %63 = load %struct.dasd_discipline*, %struct.dasd_discipline** %5, align 8
  %64 = getelementptr inbounds %struct.dasd_discipline, %struct.dasd_discipline* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @try_module_get(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %70 = call i32 @dasd_delete_device(%struct.dasd_device.0* %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %167

73:                                               ; preds = %62
  %74 = load %struct.dasd_discipline*, %struct.dasd_discipline** %6, align 8
  %75 = getelementptr inbounds %struct.dasd_discipline, %struct.dasd_discipline* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @try_module_get(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %73
  %80 = load %struct.dasd_discipline*, %struct.dasd_discipline** %5, align 8
  %81 = getelementptr inbounds %struct.dasd_discipline, %struct.dasd_discipline* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @module_put(i32 %82)
  %84 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %85 = call i32 @dasd_delete_device(%struct.dasd_device.0* %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %167

88:                                               ; preds = %73
  %89 = load %struct.dasd_discipline*, %struct.dasd_discipline** %5, align 8
  %90 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %91 = getelementptr inbounds %struct.dasd_device.0, %struct.dasd_device.0* %90, i32 0, i32 4
  store %struct.dasd_discipline* %89, %struct.dasd_discipline** %91, align 8
  %92 = load %struct.dasd_discipline*, %struct.dasd_discipline** %6, align 8
  %93 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %94 = getelementptr inbounds %struct.dasd_device.0, %struct.dasd_device.0* %93, i32 0, i32 3
  store %struct.dasd_discipline* %92, %struct.dasd_discipline** %94, align 8
  %95 = load %struct.dasd_discipline*, %struct.dasd_discipline** %6, align 8
  %96 = getelementptr inbounds %struct.dasd_discipline, %struct.dasd_discipline* %95, i32 0, i32 0
  %97 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %96, align 8
  %98 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %99 = bitcast %struct.dasd_device.0* %98 to %struct.dasd_device*
  %100 = call i32 %97(%struct.dasd_device* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %88
  %104 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %105 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %104, i32 0, i32 0
  %106 = call i32 @dev_name(i32* %105)
  %107 = load %struct.dasd_discipline*, %struct.dasd_discipline** %6, align 8
  %108 = getelementptr inbounds %struct.dasd_discipline, %struct.dasd_discipline* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %109, i32 %110)
  %112 = load %struct.dasd_discipline*, %struct.dasd_discipline** %6, align 8
  %113 = getelementptr inbounds %struct.dasd_discipline, %struct.dasd_discipline* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @module_put(i32 %114)
  %116 = load %struct.dasd_discipline*, %struct.dasd_discipline** %5, align 8
  %117 = getelementptr inbounds %struct.dasd_discipline, %struct.dasd_discipline* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @module_put(i32 %118)
  %120 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %121 = call i32 @dasd_delete_device(%struct.dasd_device.0* %120)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %3, align 4
  br label %167

123:                                              ; preds = %88
  %124 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %125 = load i32, i32* @DASD_STATE_ONLINE, align 4
  %126 = call i32 @dasd_set_target_state(%struct.dasd_device.0* %124, i32 %125)
  %127 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %128 = getelementptr inbounds %struct.dasd_device.0, %struct.dasd_device.0* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @DASD_STATE_KNOWN, align 8
  %131 = icmp sle i64 %129, %130
  br i1 %131, label %132, label %154

132:                                              ; preds = %123
  %133 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %134 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %133, i32 0, i32 0
  %135 = call i32 @dev_name(i32* %134)
  %136 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %8, align 4
  %139 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %140 = load i32, i32* @DASD_STATE_NEW, align 4
  %141 = call i32 @dasd_set_target_state(%struct.dasd_device.0* %139, i32 %140)
  %142 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %143 = getelementptr inbounds %struct.dasd_device.0, %struct.dasd_device.0* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %132
  %147 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %148 = getelementptr inbounds %struct.dasd_device.0, %struct.dasd_device.0* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @dasd_free_block(i64 %149)
  br label %151

151:                                              ; preds = %146, %132
  %152 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %153 = call i32 @dasd_delete_device(%struct.dasd_device.0* %152)
  br label %159

154:                                              ; preds = %123
  %155 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %156 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %155, i32 0, i32 0
  %157 = call i32 @dev_name(i32* %156)
  %158 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %154, %151
  %160 = load i32, i32* @dasd_init_waitq, align 4
  %161 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %162 = call i32 @_wait_for_device(%struct.dasd_device.0* %161)
  %163 = call i32 @wait_event(i32 %160, i32 %162)
  %164 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %165 = call i32 @dasd_put_device(%struct.dasd_device.0* %164)
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %159, %103, %79, %68, %51, %36, %17
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @dasd_set_feature(%struct.ccw_device*, i32, i32) #1

declare dso_local %struct.dasd_device.0* @dasd_create_device(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device.0*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_device.0*) #1

declare dso_local i32 @request_module(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dasd_delete_device(%struct.dasd_device.0*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @dasd_set_target_state(%struct.dasd_device.0*, i32) #1

declare dso_local i32 @dasd_free_block(i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @_wait_for_device(%struct.dasd_device.0*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
