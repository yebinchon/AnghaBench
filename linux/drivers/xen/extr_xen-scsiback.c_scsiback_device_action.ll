; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_device_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_device_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsibk_pend = type { %struct.se_cmd, i32, i32*, %struct.TYPE_3__* }
%struct.se_cmd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, %struct.scsiback_tpg* }
%struct.scsiback_tpg = type { %struct.scsiback_nexus* }
%struct.scsiback_nexus = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TARGET_SCF_ACK_KREF = common dso_local global i32 0, align 4
@TMR_FUNCTION_COMPLETE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vscsibk_pend*, i32, i32)* @scsiback_device_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsiback_device_action(%struct.vscsibk_pend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vscsibk_pend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsiback_tpg*, align 8
  %8 = alloca %struct.scsiback_nexus*, align 8
  %9 = alloca %struct.se_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vscsibk_pend* %0, %struct.vscsibk_pend** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %4, align 8
  %14 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.scsiback_tpg*, %struct.scsiback_tpg** %16, align 8
  store %struct.scsiback_tpg* %17, %struct.scsiback_tpg** %7, align 8
  %18 = load %struct.scsiback_tpg*, %struct.scsiback_tpg** %7, align 8
  %19 = getelementptr inbounds %struct.scsiback_tpg, %struct.scsiback_tpg* %18, i32 0, i32 0
  %20 = load %struct.scsiback_nexus*, %struct.scsiback_nexus** %19, align 8
  store %struct.scsiback_nexus* %20, %struct.scsiback_nexus** %8, align 8
  %21 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %4, align 8
  %22 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %21, i32 0, i32 0
  store %struct.se_cmd* %22, %struct.se_cmd** %9, align 8
  %23 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %4, align 8
  %24 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @FAILED, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %4, align 8
  %30 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %29, i32 0, i32 1
  %31 = call i32 @init_completion(i32* %30)
  %32 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %4, align 8
  %33 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %32, i32 0, i32 0
  %34 = load %struct.scsiback_nexus*, %struct.scsiback_nexus** %8, align 8
  %35 = getelementptr inbounds %struct.scsiback_nexus, %struct.scsiback_nexus* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %4, align 8
  %38 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @TARGET_SCF_ACK_KREF, align 4
  %46 = call i32 @target_submit_tmr(%struct.se_cmd* %33, i32 %36, i32* %40, i32 %41, i32* null, i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %3
  br label %73

50:                                               ; preds = %3
  %51 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %4, align 8
  %52 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %51, i32 0, i32 1
  %53 = call i32 @wait_for_completion(i32* %52)
  %54 = load %struct.se_cmd*, %struct.se_cmd** %9, align 8
  %55 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TMR_FUNCTION_COMPLETE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @SUCCESS, align 4
  br label %65

63:                                               ; preds = %50
  %64 = load i32, i32* @FAILED, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %4, align 8
  %69 = call i32 @scsiback_do_resp_with_sense(i32* null, i32 %67, i32 0, %struct.vscsibk_pend* %68)
  %70 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %4, align 8
  %71 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %70, i32 0, i32 0
  %72 = call i32 @transport_generic_free_cmd(%struct.se_cmd* %71, i32 0)
  br label %77

73:                                               ; preds = %49
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %4, align 8
  %76 = call i32 @scsiback_do_resp_with_sense(i32* null, i32 %74, i32 0, %struct.vscsibk_pend* %75)
  br label %77

77:                                               ; preds = %73, %65
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @target_submit_tmr(%struct.se_cmd*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @scsiback_do_resp_with_sense(i32*, i32, i32, %struct.vscsibk_pend*) #1

declare dso_local i32 @transport_generic_free_cmd(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
