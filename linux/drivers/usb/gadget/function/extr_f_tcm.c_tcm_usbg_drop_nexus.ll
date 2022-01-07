; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_tcm_usbg_drop_nexus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_tcm_usbg_drop_nexus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbg_tpg = type { i32, %struct.tcm_usbg_nexus*, i32 }
%struct.tcm_usbg_nexus = type { %struct.se_session* }
%struct.se_session = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Unable to remove Host I_T Nexus with active TPG port count: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Removing I_T Nexus to Initiator Port: %s\0A\00", align 1
@MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbg_tpg*)* @tcm_usbg_drop_nexus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_usbg_drop_nexus(%struct.usbg_tpg* %0) #0 {
  %2 = alloca %struct.usbg_tpg*, align 8
  %3 = alloca %struct.se_session*, align 8
  %4 = alloca %struct.tcm_usbg_nexus*, align 8
  %5 = alloca i32, align 4
  store %struct.usbg_tpg* %0, %struct.usbg_tpg** %2, align 8
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.usbg_tpg*, %struct.usbg_tpg** %2, align 8
  %9 = getelementptr inbounds %struct.usbg_tpg, %struct.usbg_tpg* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.usbg_tpg*, %struct.usbg_tpg** %2, align 8
  %12 = getelementptr inbounds %struct.usbg_tpg, %struct.usbg_tpg* %11, i32 0, i32 1
  %13 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %12, align 8
  store %struct.tcm_usbg_nexus* %13, %struct.tcm_usbg_nexus** %4, align 8
  %14 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %4, align 8
  %15 = icmp ne %struct.tcm_usbg_nexus* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %4, align 8
  %19 = getelementptr inbounds %struct.tcm_usbg_nexus, %struct.tcm_usbg_nexus* %18, i32 0, i32 0
  %20 = load %struct.se_session*, %struct.se_session** %19, align 8
  store %struct.se_session* %20, %struct.se_session** %3, align 8
  %21 = load %struct.se_session*, %struct.se_session** %3, align 8
  %22 = icmp ne %struct.se_session* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %51

24:                                               ; preds = %17
  %25 = load %struct.usbg_tpg*, %struct.usbg_tpg** %2, align 8
  %26 = getelementptr inbounds %struct.usbg_tpg, %struct.usbg_tpg* %25, i32 0, i32 2
  %27 = call i64 @atomic_read(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.usbg_tpg*, %struct.usbg_tpg** %2, align 8
  %33 = getelementptr inbounds %struct.usbg_tpg, %struct.usbg_tpg* %32, i32 0, i32 2
  %34 = call i64 @atomic_read(i32* %33)
  %35 = call i32 @pr_err(i32 ptrtoint ([64 x i8]* @.str to i32), i64 %34)
  br label %51

36:                                               ; preds = %24
  %37 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %4, align 8
  %38 = getelementptr inbounds %struct.tcm_usbg_nexus, %struct.tcm_usbg_nexus* %37, i32 0, i32 0
  %39 = load %struct.se_session*, %struct.se_session** %38, align 8
  %40 = getelementptr inbounds %struct.se_session, %struct.se_session* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.se_session*, %struct.se_session** %3, align 8
  %46 = call i32 @target_remove_session(%struct.se_session* %45)
  %47 = load %struct.usbg_tpg*, %struct.usbg_tpg** %2, align 8
  %48 = getelementptr inbounds %struct.usbg_tpg, %struct.usbg_tpg* %47, i32 0, i32 1
  store %struct.tcm_usbg_nexus* null, %struct.tcm_usbg_nexus** %48, align 8
  %49 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %4, align 8
  %50 = call i32 @kfree(%struct.tcm_usbg_nexus* %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %36, %29, %23, %16
  %52 = load %struct.usbg_tpg*, %struct.usbg_tpg** %2, align 8
  %53 = getelementptr inbounds %struct.usbg_tpg, %struct.usbg_tpg* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_err(i32, i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @target_remove_session(%struct.se_session*) #1

declare dso_local i32 @kfree(%struct.tcm_usbg_nexus*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
