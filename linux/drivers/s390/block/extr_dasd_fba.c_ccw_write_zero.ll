; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_ccw_write_zero.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_ccw_write_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw1 = type { i32, i64, i32, i32 }

@DASD_FBA_CCW_WRITE = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw1*, i32)* @ccw_write_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_write_zero(%struct.ccw1* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw1*, align 8
  %4 = alloca i32, align 4
  store %struct.ccw1* %0, %struct.ccw1** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @DASD_FBA_CCW_WRITE, align 4
  %6 = load %struct.ccw1*, %struct.ccw1** %3, align 8
  %7 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @CCW_FLAG_SLI, align 4
  %9 = load %struct.ccw1*, %struct.ccw1** %3, align 8
  %10 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ccw1*, %struct.ccw1** %3, align 8
  %15 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = call i32 @ZERO_PAGE(i32 0)
  %17 = call i64 @page_to_phys(i32 %16)
  %18 = load %struct.ccw1*, %struct.ccw1** %3, align 8
  %19 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  ret void
}

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i32 @ZERO_PAGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
