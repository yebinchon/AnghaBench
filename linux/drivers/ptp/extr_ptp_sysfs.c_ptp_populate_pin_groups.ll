; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_sysfs.c_ptp_populate_pin_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_sysfs.c_ptp_populate_pin_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock = type { %struct.device_attribute*, %struct.TYPE_5__, %struct.TYPE_5__**, %struct.TYPE_6__**, %struct.ptp_clock_info* }
%struct.device_attribute = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_6__** }
%struct.ptp_clock_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ptp_pin_show = common dso_local global i32 0, align 4
@ptp_pin_store = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pins\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptp_populate_pin_groups(%struct.ptp_clock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ptp_clock*, align 8
  %4 = alloca %struct.ptp_clock_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_attribute*, align 8
  store %struct.ptp_clock* %0, %struct.ptp_clock** %3, align 8
  %9 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %10 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %9, i32 0, i32 4
  %11 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %10, align 8
  store %struct.ptp_clock_info* %11, %struct.ptp_clock_info** %4, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %4, align 8
  %15 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %114

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kcalloc(i32 %21, i32 16, i32 %22)
  %24 = bitcast i8* %23 to %struct.device_attribute*
  %25 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %26 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %25, i32 0, i32 0
  store %struct.device_attribute* %24, %struct.device_attribute** %26, align 8
  %27 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %28 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %27, i32 0, i32 0
  %29 = load %struct.device_attribute*, %struct.device_attribute** %28, align 8
  %30 = icmp ne %struct.device_attribute* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %112

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 1, %33
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kcalloc(i32 %34, i32 8, i32 %35)
  %37 = bitcast i8* %36 to %struct.TYPE_6__**
  %38 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %39 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %38, i32 0, i32 3
  store %struct.TYPE_6__** %37, %struct.TYPE_6__*** %39, align 8
  %40 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %41 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %41, align 8
  %43 = icmp ne %struct.TYPE_6__** %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  br label %107

45:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %88, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %91

50:                                               ; preds = %46
  %51 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %52 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %51, i32 0, i32 0
  %53 = load %struct.device_attribute*, %struct.device_attribute** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %53, i64 %55
  store %struct.device_attribute* %56, %struct.device_attribute** %8, align 8
  %57 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %58 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %57, i32 0, i32 0
  %59 = call i32 @sysfs_attr_init(%struct.TYPE_6__* %58)
  %60 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %4, align 8
  %61 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %69 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %72 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 420, i32* %73, align 4
  %74 = load i32, i32* @ptp_pin_show, align 4
  %75 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %76 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @ptp_pin_store, align 4
  %78 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %79 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %81 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %80, i32 0, i32 0
  %82 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %83 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %84, i64 %86
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %87, align 8
  br label %88

88:                                               ; preds = %50
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %46

91:                                               ; preds = %46
  %92 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %93 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %94, align 8
  %95 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %96 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %95, i32 0, i32 3
  %97 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %96, align 8
  %98 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %99 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store %struct.TYPE_6__** %97, %struct.TYPE_6__*** %100, align 8
  %101 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %102 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %101, i32 0, i32 1
  %103 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %104 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %103, i32 0, i32 2
  %105 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %105, i64 0
  store %struct.TYPE_5__* %102, %struct.TYPE_5__** %106, align 8
  store i32 0, i32* %2, align 4
  br label %114

107:                                              ; preds = %44
  %108 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %109 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %108, i32 0, i32 0
  %110 = load %struct.device_attribute*, %struct.device_attribute** %109, align 8
  %111 = call i32 @kfree(%struct.device_attribute* %110)
  br label %112

112:                                              ; preds = %107, %31
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %91, %19
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.device_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
