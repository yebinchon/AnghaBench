; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_heartbeat_host_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_heartbeat_host_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i64 }
%struct.vmmdev_heartbeat = type { i32, i64 }

@VMMDEVREQ_HEARTBEAT_CONFIGURE = common dso_local global i32 0, align 4
@VBG_KERNEL_REQUEST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*, i32)* @vbg_heartbeat_host_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_heartbeat_host_config(%struct.vbg_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vbg_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmmdev_heartbeat*, align 8
  %7 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @VMMDEVREQ_HEARTBEAT_CONFIGURE, align 4
  %9 = load i32, i32* @VBG_KERNEL_REQUEST, align 4
  %10 = call %struct.vmmdev_heartbeat* @vbg_req_alloc(i32 16, i32 %8, i32 %9)
  store %struct.vmmdev_heartbeat* %10, %struct.vmmdev_heartbeat** %6, align 8
  %11 = load %struct.vmmdev_heartbeat*, %struct.vmmdev_heartbeat** %6, align 8
  %12 = icmp ne %struct.vmmdev_heartbeat* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.vmmdev_heartbeat*, %struct.vmmdev_heartbeat** %6, align 8
  %19 = getelementptr inbounds %struct.vmmdev_heartbeat, %struct.vmmdev_heartbeat* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.vmmdev_heartbeat*, %struct.vmmdev_heartbeat** %6, align 8
  %21 = getelementptr inbounds %struct.vmmdev_heartbeat, %struct.vmmdev_heartbeat* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %23 = load %struct.vmmdev_heartbeat*, %struct.vmmdev_heartbeat** %6, align 8
  %24 = call i32 @vbg_req_perform(%struct.vbg_dev* %22, %struct.vmmdev_heartbeat* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.vmmdev_heartbeat*, %struct.vmmdev_heartbeat** %6, align 8
  %26 = getelementptr inbounds %struct.vmmdev_heartbeat, %struct.vmmdev_heartbeat* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @do_div(i64 %27, i32 1000000)
  %29 = load %struct.vmmdev_heartbeat*, %struct.vmmdev_heartbeat** %6, align 8
  %30 = getelementptr inbounds %struct.vmmdev_heartbeat, %struct.vmmdev_heartbeat* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %33 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.vmmdev_heartbeat*, %struct.vmmdev_heartbeat** %6, align 8
  %35 = call i32 @vbg_req_free(%struct.vmmdev_heartbeat* %34, i32 16)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @vbg_status_code_to_errno(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %16, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.vmmdev_heartbeat* @vbg_req_alloc(i32, i32, i32) #1

declare dso_local i32 @vbg_req_perform(%struct.vbg_dev*, %struct.vmmdev_heartbeat*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @vbg_req_free(%struct.vmmdev_heartbeat*, i32) #1

declare dso_local i32 @vbg_status_code_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
