; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/extr_vsoc.c_handle_vsoc_cond_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/extr_vsoc.c_handle_vsoc_cond_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vsoc_region_data* }
%struct.vsoc_region_data = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.file = type { i32 }
%struct.vsoc_cond_wait = type { i32, i32, i64, i64, i32, i32 }
%struct.hrtimer_sleeper = type { i32, i32 }
%struct.vsoc_device_region = type { i64, i64 }

@wait = common dso_local global i32 0, align 4
@vsoc_dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vsoc_cond_wait*)* @handle_vsoc_cond_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_vsoc_cond_wait(%struct.file* %0, %struct.vsoc_cond_wait* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vsoc_cond_wait*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vsoc_region_data*, align 8
  %8 = alloca %struct.hrtimer_sleeper, align 4
  %9 = alloca %struct.hrtimer_sleeper*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vsoc_device_region*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vsoc_cond_wait* %1, %struct.vsoc_cond_wait** %5, align 8
  %14 = load i32, i32* @wait, align 4
  %15 = call i32 @DEFINE_WAIT(i32 %14)
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = call i32 @file_inode(%struct.file* %16)
  %18 = call i32 @iminor(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.vsoc_region_data*, %struct.vsoc_region_data** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vsoc_dev, i32 0, i32 0), align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vsoc_region_data, %struct.vsoc_region_data* %19, i64 %21
  store %struct.vsoc_region_data* %22, %struct.vsoc_region_data** %7, align 8
  store %struct.hrtimer_sleeper* null, %struct.hrtimer_sleeper** %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = call %struct.vsoc_device_region* @vsoc_region_from_filep(%struct.file* %23)
  store %struct.vsoc_device_region* %24, %struct.vsoc_device_region** %11, align 8
  store i32* null, i32** %12, align 8
  %25 = load %struct.vsoc_cond_wait*, %struct.vsoc_cond_wait** %5, align 8
  %26 = getelementptr inbounds %struct.vsoc_cond_wait, %struct.vsoc_cond_wait* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = and i64 %28, 3
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EADDRNOTAVAIL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %165

34:                                               ; preds = %2
  %35 = load %struct.vsoc_cond_wait*, %struct.vsoc_cond_wait** %5, align 8
  %36 = getelementptr inbounds %struct.vsoc_cond_wait, %struct.vsoc_cond_wait* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load %struct.vsoc_device_region*, %struct.vsoc_device_region** %11, align 8
  %40 = getelementptr inbounds %struct.vsoc_device_region, %struct.vsoc_device_region* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = add i64 %42, 4
  %44 = load %struct.vsoc_device_region*, %struct.vsoc_device_region** %11, align 8
  %45 = getelementptr inbounds %struct.vsoc_device_region, %struct.vsoc_device_region* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ugt i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load i32, i32* @E2BIG, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %165

51:                                               ; preds = %34
  %52 = load %struct.vsoc_device_region*, %struct.vsoc_device_region** %11, align 8
  %53 = getelementptr inbounds %struct.vsoc_device_region, %struct.vsoc_device_region* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.vsoc_cond_wait*, %struct.vsoc_cond_wait** %5, align 8
  %56 = getelementptr inbounds %struct.vsoc_cond_wait, %struct.vsoc_cond_wait* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  %60 = call i32* @shm_off_to_virtual_addr(i64 %59)
  store i32* %60, i32** %12, align 8
  %61 = load %struct.vsoc_cond_wait*, %struct.vsoc_cond_wait** %5, align 8
  %62 = getelementptr inbounds %struct.vsoc_cond_wait, %struct.vsoc_cond_wait* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %66 [
    i32 129, label %64
    i32 128, label %65
  ]

64:                                               ; preds = %51
  br label %69

65:                                               ; preds = %51
  store %struct.hrtimer_sleeper* %8, %struct.hrtimer_sleeper** %9, align 8
  br label %69

66:                                               ; preds = %51
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %165

69:                                               ; preds = %65, %64
  %70 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %9, align 8
  %71 = icmp ne %struct.hrtimer_sleeper* %70, null
  br i1 %71, label %72, label %100

72:                                               ; preds = %69
  %73 = load %struct.vsoc_cond_wait*, %struct.vsoc_cond_wait** %5, align 8
  %74 = getelementptr inbounds %struct.vsoc_cond_wait, %struct.vsoc_cond_wait* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NSEC_PER_SEC, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %165

81:                                               ; preds = %72
  %82 = load %struct.vsoc_cond_wait*, %struct.vsoc_cond_wait** %5, align 8
  %83 = getelementptr inbounds %struct.vsoc_cond_wait, %struct.vsoc_cond_wait* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vsoc_cond_wait*, %struct.vsoc_cond_wait** %5, align 8
  %86 = getelementptr inbounds %struct.vsoc_cond_wait, %struct.vsoc_cond_wait* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @ktime_set(i32 %84, i64 %87)
  store i32 %88, i32* %13, align 4
  %89 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %9, align 8
  %90 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %91 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %92 = call i32 @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper* %89, i32 %90, i32 %91)
  %93 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %9, align 8
  %94 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %93, i32 0, i32 0
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @hrtimer_set_expires_range_ns(i32* %94, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %81, %69
  br label %101

101:                                              ; preds = %100, %152
  %102 = load %struct.vsoc_region_data*, %struct.vsoc_region_data** %7, align 8
  %103 = getelementptr inbounds %struct.vsoc_region_data, %struct.vsoc_region_data* %102, i32 0, i32 0
  %104 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %105 = call i32 @prepare_to_wait(i32* %103, i32* @wait, i32 %104)
  %106 = load i32*, i32** %12, align 8
  %107 = call i64 @atomic_read(i32* %106)
  %108 = load %struct.vsoc_cond_wait*, %struct.vsoc_cond_wait** %5, align 8
  %109 = getelementptr inbounds %struct.vsoc_cond_wait, %struct.vsoc_cond_wait* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  br label %153

113:                                              ; preds = %101
  %114 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %9, align 8
  %115 = icmp ne %struct.hrtimer_sleeper* %114, null
  br i1 %115, label %116, label %139

116:                                              ; preds = %113
  %117 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %9, align 8
  %118 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %119 = call i32 @hrtimer_sleeper_start_expires(%struct.hrtimer_sleeper* %117, i32 %118)
  %120 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %9, align 8
  %121 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @likely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = call i32 (...) @freezable_schedule()
  br label %127

127:                                              ; preds = %125, %116
  %128 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %9, align 8
  %129 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %128, i32 0, i32 0
  %130 = call i32 @hrtimer_cancel(i32* %129)
  %131 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %9, align 8
  %132 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %127
  %136 = load i32, i32* @ETIMEDOUT, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %10, align 4
  br label %153

138:                                              ; preds = %127
  br label %141

139:                                              ; preds = %113
  %140 = call i32 (...) @freezable_schedule()
  br label %141

141:                                              ; preds = %139, %138
  %142 = load %struct.vsoc_cond_wait*, %struct.vsoc_cond_wait** %5, align 8
  %143 = getelementptr inbounds %struct.vsoc_cond_wait, %struct.vsoc_cond_wait* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %147 = call i64 @signal_pending(%struct.TYPE_5__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %141
  %150 = load i32, i32* @EINTR, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %10, align 4
  br label %153

152:                                              ; preds = %141
  br label %101

153:                                              ; preds = %149, %135, %112
  %154 = load %struct.vsoc_region_data*, %struct.vsoc_region_data** %7, align 8
  %155 = getelementptr inbounds %struct.vsoc_region_data, %struct.vsoc_region_data* %154, i32 0, i32 0
  %156 = call i32 @finish_wait(i32* %155, i32* @wait)
  %157 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %9, align 8
  %158 = icmp ne %struct.hrtimer_sleeper* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %9, align 8
  %161 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %160, i32 0, i32 0
  %162 = call i32 @destroy_hrtimer_on_stack(i32* %161)
  br label %163

163:                                              ; preds = %159, %153
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %163, %78, %66, %48, %31
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @iminor(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local %struct.vsoc_device_region* @vsoc_region_from_filep(%struct.file*) #1

declare dso_local i32* @shm_off_to_virtual_addr(i64) #1

declare dso_local i32 @ktime_set(i32, i64) #1

declare dso_local i32 @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper*, i32, i32) #1

declare dso_local i32 @hrtimer_set_expires_range_ns(i32*, i32, i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @hrtimer_sleeper_start_expires(%struct.hrtimer_sleeper*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @freezable_schedule(...) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i64 @signal_pending(%struct.TYPE_5__*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @destroy_hrtimer_on_stack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
