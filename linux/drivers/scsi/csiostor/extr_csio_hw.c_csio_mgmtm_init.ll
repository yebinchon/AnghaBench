; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_mgmtm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_mgmtm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_mgmtm = type { %struct.csio_hw*, i32, i32, i32 }
%struct.csio_hw = type { i32 }

@csio_mgmt_tmo_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_mgmtm*, %struct.csio_hw*)* @csio_mgmtm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_mgmtm_init(%struct.csio_mgmtm* %0, %struct.csio_hw* %1) #0 {
  %3 = alloca %struct.csio_mgmtm*, align 8
  %4 = alloca %struct.csio_hw*, align 8
  store %struct.csio_mgmtm* %0, %struct.csio_mgmtm** %3, align 8
  store %struct.csio_hw* %1, %struct.csio_hw** %4, align 8
  %5 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %3, align 8
  %6 = getelementptr inbounds %struct.csio_mgmtm, %struct.csio_mgmtm* %5, i32 0, i32 3
  %7 = load i32, i32* @csio_mgmt_tmo_handler, align 4
  %8 = call i32 @timer_setup(i32* %6, i32 %7, i32 0)
  %9 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %3, align 8
  %10 = getelementptr inbounds %struct.csio_mgmtm, %struct.csio_mgmtm* %9, i32 0, i32 2
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %3, align 8
  %13 = getelementptr inbounds %struct.csio_mgmtm, %struct.csio_mgmtm* %12, i32 0, i32 1
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %16 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %3, align 8
  %17 = getelementptr inbounds %struct.csio_mgmtm, %struct.csio_mgmtm* %16, i32 0, i32 0
  store %struct.csio_hw* %15, %struct.csio_hw** %17, align 8
  ret i32 0
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
