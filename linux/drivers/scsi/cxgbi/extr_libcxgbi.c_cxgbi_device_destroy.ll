; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_device_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_device_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { %struct.TYPE_2__, i32 (%struct.cxgbi_device*)*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@CXGBI_DBG_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cdev 0x%p, p# %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_device*)* @cxgbi_device_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbi_device_destroy(%struct.cxgbi_device* %0) #0 {
  %2 = alloca %struct.cxgbi_device*, align 8
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %2, align 8
  %3 = load i32, i32* @CXGBI_DBG_DEV, align 4
  %4 = shl i32 1, %3
  %5 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %6 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %7 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @log_debug(i32 %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %5, i32 %8)
  %10 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %11 = call i32 @cxgbi_hbas_remove(%struct.cxgbi_device* %10)
  %12 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %13 = call i32 @cxgbi_device_portmap_cleanup(%struct.cxgbi_device* %12)
  %14 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %15 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %14, i32 0, i32 1
  %16 = load i32 (%struct.cxgbi_device*)*, i32 (%struct.cxgbi_device*)** %15, align 8
  %17 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %18 = call i32 %16(%struct.cxgbi_device* %17)
  %19 = call i32 @cxgbi_ppm_release(i32 %18)
  %20 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %21 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %27 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @cxgbi_free_big_mem(i32 %29)
  br label %31

31:                                               ; preds = %25, %1
  %32 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %33 = call i32 @kfree(%struct.cxgbi_device* %32)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_device*, i32) #1

declare dso_local i32 @cxgbi_hbas_remove(%struct.cxgbi_device*) #1

declare dso_local i32 @cxgbi_device_portmap_cleanup(%struct.cxgbi_device*) #1

declare dso_local i32 @cxgbi_ppm_release(i32) #1

declare dso_local i32 @cxgbi_free_big_mem(i32) #1

declare dso_local i32 @kfree(%struct.cxgbi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
