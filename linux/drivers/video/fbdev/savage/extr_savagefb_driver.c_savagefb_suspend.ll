; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savagefb_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savagefb_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.fb_info = type { %struct.TYPE_9__*, %struct.savagefb_par* }
%struct.TYPE_9__ = type { i32 (%struct.fb_info*)* }
%struct.savagefb_par = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"savagefb_suspend\00", align 1
@PM_EVENT_PRETHAW = common dso_local global i64 0, align 8
@PM_EVENT_FREEZE = common dso_local global i64 0, align 8
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @savagefb_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savagefb_suspend(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.savagefb_par*, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  store i64 %1, i64* %8, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = call %struct.fb_info* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.fb_info* %10, %struct.fb_info** %6, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 1
  %13 = load %struct.savagefb_par*, %struct.savagefb_par** %12, align 8
  store %struct.savagefb_par* %13, %struct.savagefb_par** %7, align 8
  %14 = call i32 @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PM_EVENT_PRETHAW, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i64, i64* @PM_EVENT_FREEZE, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %2
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %26 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = bitcast %struct.TYPE_10__* %30 to i8*
  %32 = bitcast %struct.TYPE_10__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PM_EVENT_FREEZE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %77

38:                                               ; preds = %22
  %39 = call i32 (...) @console_lock()
  %40 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %41 = call i32 @fb_set_suspend(%struct.fb_info* %40, i32 1)
  %42 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %45, align 8
  %47 = icmp ne i32 (%struct.fb_info*)* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %52, align 8
  %54 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %55 = call i32 %53(%struct.fb_info* %54)
  br label %56

56:                                               ; preds = %48, %38
  %57 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %58 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %59 = call i32 @savagefb_blank(i32 %57, %struct.fb_info* %58)
  %60 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %61 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %62 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %61, i32 0, i32 1
  %63 = call i32 @savage_set_default_par(%struct.savagefb_par* %60, i32* %62)
  %64 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %65 = call i32 @savage_disable_mmio(%struct.savagefb_par* %64)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = call i32 @pci_save_state(%struct.pci_dev* %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %69 = call i32 @pci_disable_device(%struct.pci_dev* %68)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %71 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @pci_choose_state(%struct.pci_dev* %71, i64 %73)
  %75 = call i32 @pci_set_power_state(%struct.pci_dev* %70, i32 %74)
  %76 = call i32 (...) @console_unlock()
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %56, %37
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.fb_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @DBG(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @fb_set_suspend(%struct.fb_info*, i32) #1

declare dso_local i32 @savagefb_blank(i32, %struct.fb_info*) #1

declare dso_local i32 @savage_set_default_par(%struct.savagefb_par*, i32*) #1

declare dso_local i32 @savage_disable_mmio(%struct.savagefb_par*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_choose_state(%struct.pci_dev*, i64) #1

declare dso_local i32 @console_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
