; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_tcm_usbg_make_nexus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_tcm_usbg_make_nexus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbg_tpg = type { i32, i32, i64 }
%struct.tcm_usbg_nexus = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tpg->tpg_nexus already exists\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_G_DEFAULT_SESSION_TAGS = common dso_local global i32 0, align 4
@TARGET_PROT_NORMAL = common dso_local global i32 0, align 4
@usbg_alloc_sess_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"core_tpg_check_initiator_node_acl() failed for %s\0A\00", align 1
@MAKE_NEXUS_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbg_tpg*, i8*)* @tcm_usbg_make_nexus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_usbg_make_nexus(%struct.usbg_tpg* %0, i8* %1) #0 {
  %3 = alloca %struct.usbg_tpg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tcm_usbg_nexus*, align 8
  %6 = alloca i32, align 4
  store %struct.usbg_tpg* %0, %struct.usbg_tpg** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.usbg_tpg*, %struct.usbg_tpg** %3, align 8
  %8 = getelementptr inbounds %struct.usbg_tpg, %struct.usbg_tpg* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.usbg_tpg*, %struct.usbg_tpg** %3, align 8
  %11 = getelementptr inbounds %struct.usbg_tpg, %struct.usbg_tpg* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @EEXIST, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %52

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.tcm_usbg_nexus* @kzalloc(i32 4, i32 %19)
  store %struct.tcm_usbg_nexus* %20, %struct.tcm_usbg_nexus** %5, align 8
  %21 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %5, align 8
  %22 = icmp ne %struct.tcm_usbg_nexus* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %52

26:                                               ; preds = %18
  %27 = load %struct.usbg_tpg*, %struct.usbg_tpg** %3, align 8
  %28 = getelementptr inbounds %struct.usbg_tpg, %struct.usbg_tpg* %27, i32 0, i32 1
  %29 = load i32, i32* @USB_G_DEFAULT_SESSION_TAGS, align 4
  %30 = load i32, i32* @TARGET_PROT_NORMAL, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %5, align 8
  %33 = load i32, i32* @usbg_alloc_sess_cb, align 4
  %34 = call i32 @target_setup_session(i32* %28, i32 %29, i32 4, i32 %30, i8* %31, %struct.tcm_usbg_nexus* %32, i32 %33)
  %35 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %5, align 8
  %36 = getelementptr inbounds %struct.tcm_usbg_nexus, %struct.tcm_usbg_nexus* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %5, align 8
  %38 = getelementptr inbounds %struct.tcm_usbg_nexus, %struct.tcm_usbg_nexus* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %26
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %5, align 8
  %46 = getelementptr inbounds %struct.tcm_usbg_nexus, %struct.tcm_usbg_nexus* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %5, align 8
  %50 = call i32 @kfree(%struct.tcm_usbg_nexus* %49)
  br label %51

51:                                               ; preds = %42, %26
  br label %52

52:                                               ; preds = %51, %23, %14
  %53 = load %struct.usbg_tpg*, %struct.usbg_tpg** %3, align 8
  %54 = getelementptr inbounds %struct.usbg_tpg, %struct.usbg_tpg* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.tcm_usbg_nexus* @kzalloc(i32, i32) #1

declare dso_local i32 @target_setup_session(i32*, i32, i32, i32, i8*, %struct.tcm_usbg_nexus*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.tcm_usbg_nexus*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
