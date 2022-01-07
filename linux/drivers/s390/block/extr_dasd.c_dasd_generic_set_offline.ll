; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_set_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_set_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.dasd_device = type { i32, %struct.dasd_block* }
%struct.dasd_block = type { i64, i32 }

@.str = private unnamed_addr constant [55 x i8] c"%s: The DASD cannot be set offline with open count %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: The DASD cannot be set offline while it is in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DASD_FLAG_OFFLINE = common dso_local global i32 0, align 4
@DASD_FLAG_SAFE_OFFLINE_RUNNING = common dso_local global i32 0, align 4
@DASD_FLAG_SAFE_OFFLINE = common dso_local global i32 0, align 4
@shutdown_waitq = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@DASD_STATE_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_generic_set_offline(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %11 = call i32 @get_ccwdev_lock(%struct.ccw_device* %10)
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32 %11, i64 %12)
  %14 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %15 = call %struct.dasd_device* @dasd_device_from_cdev_locked(%struct.ccw_device* %14)
  store %struct.dasd_device* %15, %struct.dasd_device** %4, align 8
  %16 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %17 = call i64 @IS_ERR(%struct.dasd_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %21 = call i32 @get_ccwdev_lock(%struct.ccw_device* %20)
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32 %21, i64 %22)
  %24 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %25 = call i32 @PTR_ERR(%struct.dasd_device* %24)
  store i32 %25, i32* %2, align 4
  br label %191

26:                                               ; preds = %1
  %27 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %28 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %27, i32 0, i32 1
  %29 = load %struct.dasd_block*, %struct.dasd_block** %28, align 8
  %30 = icmp ne %struct.dasd_block* %29, null
  br i1 %30, label %31, label %66

31:                                               ; preds = %26
  %32 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %33 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %32, i32 0, i32 1
  %34 = load %struct.dasd_block*, %struct.dasd_block** %33, align 8
  %35 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 -1
  store i32 %39, i32* %6, align 4
  %40 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %41 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %40, i32 0, i32 1
  %42 = load %struct.dasd_block*, %struct.dasd_block** %41, align 8
  %43 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %42, i32 0, i32 1
  %44 = call i32 @atomic_read(i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %31
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %53 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %52, i32 0, i32 0
  %54 = call i32 @dev_name(i32* %53)
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  br label %62

57:                                               ; preds = %48
  %58 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %59 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %58, i32 0, i32 0
  %60 = call i32 @dev_name(i32* %59)
  %61 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %51
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %183

65:                                               ; preds = %31
  br label %66

66:                                               ; preds = %65, %26
  %67 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %68 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %69 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %68, i32 0, i32 0
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE_RUNNING, align 4
  %74 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %75 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %74, i32 0, i32 0
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE_RUNNING, align 4
  %80 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %81 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %80, i32 0, i32 0
  %82 = call i32 @clear_bit(i32 %79, i32* %81)
  br label %86

83:                                               ; preds = %72
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %183

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %66
  %88 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %89 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %90 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %89, i32 0, i32 0
  %91 = call i32 @set_bit(i32 %88, i32* %90)
  %92 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE, align 4
  %93 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %94 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %93, i32 0, i32 0
  %95 = call i64 @test_and_clear_bit(i32 %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %151

97:                                               ; preds = %87
  %98 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE_RUNNING, align 4
  %99 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %100 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %99, i32 0, i32 0
  %101 = call i32 @test_and_set_bit(i32 %98, i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %151, label %103

103:                                              ; preds = %97
  %104 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %105 = call i32 @get_ccwdev_lock(%struct.ccw_device* %104)
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32 %105, i64 %106)
  %108 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %109 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %108, i32 0, i32 1
  %110 = load %struct.dasd_block*, %struct.dasd_block** %109, align 8
  %111 = icmp ne %struct.dasd_block* %110, null
  br i1 %111, label %112, label %123

112:                                              ; preds = %103
  %113 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %114 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %113, i32 0, i32 1
  %115 = load %struct.dasd_block*, %struct.dasd_block** %114, align 8
  %116 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @fsync_bdev(i64 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %170

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122, %103
  %124 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %125 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %124)
  %126 = load i32, i32* @shutdown_waitq, align 4
  %127 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %128 = call i32 @_wait_for_empty_queues(%struct.dasd_device* %127)
  %129 = call i32 @wait_event_interruptible(i32 %126, i32 %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %170

133:                                              ; preds = %123
  %134 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %135 = call i32 @get_ccwdev_lock(%struct.ccw_device* %134)
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @spin_lock_irqsave(i32 %135, i64 %136)
  %138 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE_RUNNING, align 4
  %139 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %140 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %139, i32 0, i32 0
  %141 = call i64 @test_bit(i32 %138, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %133
  %144 = load i32, i32* @ERESTARTSYS, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %8, align 4
  br label %183

146:                                              ; preds = %133
  %147 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE_RUNNING, align 4
  %148 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %149 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %148, i32 0, i32 0
  %150 = call i32 @clear_bit(i32 %147, i32* %149)
  br label %151

151:                                              ; preds = %146, %97, %87
  %152 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %153 = call i32 @get_ccwdev_lock(%struct.ccw_device* %152)
  %154 = load i64, i64* %9, align 8
  %155 = call i32 @spin_unlock_irqrestore(i32 %153, i64 %154)
  %156 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %157 = load i32, i32* @DASD_STATE_NEW, align 4
  %158 = call i32 @dasd_set_target_state(%struct.dasd_device* %156, i32 %157)
  %159 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %160 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %159, i32 0, i32 1
  %161 = load %struct.dasd_block*, %struct.dasd_block** %160, align 8
  store %struct.dasd_block* %161, %struct.dasd_block** %5, align 8
  %162 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %163 = call i32 @dasd_delete_device(%struct.dasd_device* %162)
  %164 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %165 = icmp ne %struct.dasd_block* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %151
  %167 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %168 = call i32 @dasd_free_block(%struct.dasd_block* %167)
  br label %169

169:                                              ; preds = %166, %151
  store i32 0, i32* %2, align 4
  br label %191

170:                                              ; preds = %132, %121
  %171 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %172 = call i32 @get_ccwdev_lock(%struct.ccw_device* %171)
  %173 = load i64, i64* %9, align 8
  %174 = call i32 @spin_lock_irqsave(i32 %172, i64 %173)
  %175 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE_RUNNING, align 4
  %176 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %177 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %176, i32 0, i32 0
  %178 = call i32 @clear_bit(i32 %175, i32* %177)
  %179 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %180 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %181 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %180, i32 0, i32 0
  %182 = call i32 @clear_bit(i32 %179, i32* %181)
  br label %183

183:                                              ; preds = %170, %143, %83, %62
  %184 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %185 = call i32 @dasd_put_device(%struct.dasd_device* %184)
  %186 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %187 = call i32 @get_ccwdev_lock(%struct.ccw_device* %186)
  %188 = load i64, i64* %9, align 8
  %189 = call i32 @spin_unlock_irqrestore(i32 %187, i64 %188)
  %190 = load i32, i32* %8, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %183, %169, %19
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local %struct.dasd_device* @dasd_device_from_cdev_locked(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @fsync_bdev(i64) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @_wait_for_empty_queues(%struct.dasd_device*) #1

declare dso_local i32 @dasd_set_target_state(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_delete_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_free_block(%struct.dasd_block*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
