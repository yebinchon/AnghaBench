; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_monreader.c_monreader_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_monreader.c_monreader_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@mon_dcss_name = common dso_local global i32 0, align 4
@SEGMENT_SHARED = common dso_local global i32 0, align 4
@mon_dcss_start = common dso_local global i32 0, align 4
@mon_dcss_end = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"fatal monreader resume error: no monitor dcss\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @monreader_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monreader_restore(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load i32, i32* @mon_dcss_name, align 4
  %5 = call i32 @segment_unload(i32 %4)
  %6 = load i32, i32* @mon_dcss_name, align 4
  %7 = load i32, i32* @SEGMENT_SHARED, align 4
  %8 = call i32 @segment_load(i32 %6, i32 %7, i32* @mon_dcss_start, i32* @mon_dcss_end)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @mon_dcss_name, align 4
  %14 = call i32 @segment_warning(i32 %12, i32 %13)
  %15 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.device*, %struct.device** %2, align 8
  %18 = call i32 @monreader_thaw(%struct.device* %17)
  ret i32 %18
}

declare dso_local i32 @segment_unload(i32) #1

declare dso_local i32 @segment_load(i32, i32, i32*, i32*) #1

declare dso_local i32 @segment_warning(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @monreader_thaw(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
