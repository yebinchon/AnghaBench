; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_calculate_queue_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_calculate_queue_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@reset_devices = common dso_local global i64 0, align 8
@PQI_MAX_QUEUE_GROUPS = common dso_local global i32 0, align 4
@PQI_OPERATIONAL_IQ_ELEMENT_LENGTH = common dso_local global i32 0, align 4
@PQI_MAX_EMBEDDED_SG_DESCRIPTORS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*)* @pqi_calculate_queue_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_calculate_queue_resources(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %8 = load i64, i64* @reset_devices, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %13 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sdiv i32 %14, 2
  %16 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %17 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @min(i32 %15, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @PQI_MAX_QUEUE_GROUPS, align 4
  %23 = call i32 @min(i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = call i32 (...) @num_online_cpus()
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %27 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @min(i32 %25, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @min(i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %11, %10
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %36 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %40 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %42 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PQI_OPERATIONAL_IQ_ELEMENT_LENGTH, align 4
  %45 = sdiv i32 %43, %44
  %46 = load i32, i32* @PQI_OPERATIONAL_IQ_ELEMENT_LENGTH, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %49 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %51 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PQI_OPERATIONAL_IQ_ELEMENT_LENGTH, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %59 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @min(i32 %57, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = sub nsw i32 %62, 1
  %64 = mul nsw i32 %63, 2
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %68 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @min(i32 %66, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %73 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %72, i32 0, i32 9
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %76 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 8
  %77 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %78 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PQI_OPERATIONAL_IQ_ELEMENT_LENGTH, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = udiv i64 %82, 4
  %84 = load i64, i64* @PQI_MAX_EMBEDDED_SG_DESCRIPTORS, align 8
  %85 = add i64 %83, %84
  %86 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %87 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %86, i32 0, i32 11
  store i64 %85, i64* %87, align 8
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
