; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_ccw.c_zfcp_ccw_set_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_ccw.c_zfcp_ccw_set_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.zfcp_adapter = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"Setting up data structures for the FCP adapter failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ccsonl1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @zfcp_ccw_set_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_ccw_set_online(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.zfcp_adapter*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %6 = call %struct.zfcp_adapter* @zfcp_ccw_adapter_by_cdev(%struct.ccw_device* %5)
  store %struct.zfcp_adapter* %6, %struct.zfcp_adapter** %4, align 8
  %7 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %8 = icmp ne %struct.zfcp_adapter* %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %11 = call %struct.zfcp_adapter* @zfcp_adapter_enqueue(%struct.ccw_device* %10)
  store %struct.zfcp_adapter* %11, %struct.zfcp_adapter** %4, align 8
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %13 = call i64 @IS_ERR(%struct.zfcp_adapter* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %17 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %20 = call i32 @PTR_ERR(%struct.zfcp_adapter* %19)
  store i32 %20, i32* %2, align 4
  br label %45

21:                                               ; preds = %9
  %22 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %22, i32 0, i32 3
  %24 = call i32 @kref_get(i32* %23)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @zfcp_reqlist_isempty(i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %37 = call i32 @zfcp_ccw_activate(%struct.ccw_device* %36, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %39 = call i32 @zfcp_fc_inverse_conditional_port_scan(%struct.zfcp_adapter* %38)
  %40 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %40, i32 0, i32 0
  %42 = call i32 @flush_delayed_work(i32* %41)
  %43 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %44 = call i32 @zfcp_ccw_adapter_put(%struct.zfcp_adapter* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %25, %15
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.zfcp_adapter* @zfcp_ccw_adapter_by_cdev(%struct.ccw_device*) #1

declare dso_local %struct.zfcp_adapter* @zfcp_adapter_enqueue(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_adapter*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @zfcp_reqlist_isempty(i32) #1

declare dso_local i32 @zfcp_ccw_activate(%struct.ccw_device*, i32, i8*) #1

declare dso_local i32 @zfcp_fc_inverse_conditional_port_scan(%struct.zfcp_adapter*) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @zfcp_ccw_adapter_put(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
