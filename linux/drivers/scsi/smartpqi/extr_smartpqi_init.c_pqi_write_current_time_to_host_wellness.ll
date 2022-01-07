; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_write_current_time_to_host_wellness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_write_current_time_to_host_wellness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pqi_ctrl_info = type { i32 }
%struct.bmic_host_wellness_time = type { i8*, i8*, i8*, i8*, i8**, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sys_tz = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_write_current_time_to_host_wellness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_write_current_time_to_host_wellness(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmic_host_wellness_time*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tm, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store i64 48, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.bmic_host_wellness_time* @kmalloc(i64 %10, i32 %11)
  store %struct.bmic_host_wellness_time* %12, %struct.bmic_host_wellness_time** %5, align 8
  %13 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %14 = icmp ne %struct.bmic_host_wellness_time* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %132

18:                                               ; preds = %1
  %19 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %20 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 60, i8* %22, align 1
  %23 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %24 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 72, i8* %26, align 1
  %27 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %28 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  store i8 87, i8* %30, align 1
  %31 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %32 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  store i8 62, i8* %34, align 1
  %35 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %36 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 84, i8* %38, align 1
  %39 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %40 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8 68, i8* %42, align 1
  %43 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %44 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %43, i32 0, i32 5
  %45 = call i32 @put_unaligned_le16(i32 8, i32* %44)
  %46 = call i32 (...) @ktime_get_real_seconds()
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_tz, i32 0, i32 0), align 4
  %49 = sub nsw i32 0, %48
  %50 = mul nsw i32 %49, 60
  %51 = call i32 @time64_to_tm(i32 %47, i32 %50, %struct.tm* %9)
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1900
  store i32 %54, i32* %8, align 4
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @bin2bcd(i32 %56)
  %58 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %59 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %58, i32 0, i32 4
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  store i8* %57, i8** %61, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @bin2bcd(i32 %63)
  %65 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %66 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %65, i32 0, i32 4
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  store i8* %64, i8** %68, align 8
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @bin2bcd(i32 %70)
  %72 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %73 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %72, i32 0, i32 4
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  store i8* %71, i8** %75, align 8
  %76 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %77 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %76, i32 0, i32 4
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 3
  store i8* null, i8** %79, align 8
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %81, 1
  %83 = call i8* @bin2bcd(i32 %82)
  %84 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %85 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %84, i32 0, i32 4
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 4
  store i8* %83, i8** %87, align 8
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @bin2bcd(i32 %89)
  %91 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %92 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %91, i32 0, i32 4
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 5
  store i8* %90, i8** %94, align 8
  %95 = load i32, i32* %8, align 4
  %96 = udiv i32 %95, 100
  %97 = call i8* @bin2bcd(i32 %96)
  %98 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %99 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %98, i32 0, i32 4
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 6
  store i8* %97, i8** %101, align 8
  %102 = load i32, i32* %8, align 4
  %103 = urem i32 %102, 100
  %104 = call i8* @bin2bcd(i32 %103)
  %105 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %106 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %105, i32 0, i32 4
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 7
  store i8* %104, i8** %108, align 8
  %109 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %110 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  store i8 68, i8* %112, align 1
  %113 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %114 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  store i8 87, i8* %116, align 1
  %117 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %118 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %117, i32 0, i32 3
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 90, i8* %120, align 1
  %121 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %122 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  store i8 90, i8* %124, align 1
  %125 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %126 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %127 = load i64, i64* %6, align 8
  %128 = call i32 @pqi_write_host_wellness(%struct.pqi_ctrl_info* %125, %struct.bmic_host_wellness_time* %126, i64 %127)
  store i32 %128, i32* %4, align 4
  %129 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %5, align 8
  %130 = call i32 @kfree(%struct.bmic_host_wellness_time* %129)
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %18, %15
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.bmic_host_wellness_time* @kmalloc(i64, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @time64_to_tm(i32, i32, %struct.tm*) #1

declare dso_local i8* @bin2bcd(i32) #1

declare dso_local i32 @pqi_write_host_wellness(%struct.pqi_ctrl_info*, %struct.bmic_host_wellness_time*, i64) #1

declare dso_local i32 @kfree(%struct.bmic_host_wellness_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
