; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfi_msg_s = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.bfa_fcpim_s = type { i32 }
%union.bfi_itn_i2h_msg_u = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.bfa_itnim_s = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@create_comps = common dso_local global i32 0, align 4
@BFA_ITNIM_SM_FWRSP = common dso_local global i32 0, align 4
@delete_comps = common dso_local global i32 0, align 4
@sler_events = common dso_local global i32 0, align 4
@BFA_ITNIM_SM_SLER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_itnim_isr(%struct.bfa_s* %0, %struct.bfi_msg_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_msg_s*, align 8
  %5 = alloca %struct.bfa_fcpim_s*, align 8
  %6 = alloca %union.bfi_itn_i2h_msg_u, align 8
  %7 = alloca %struct.bfa_itnim_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_msg_s* %1, %struct.bfi_msg_s** %4, align 8
  %8 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %9 = call %struct.bfa_fcpim_s* @BFA_FCPIM(%struct.bfa_s* %8)
  store %struct.bfa_fcpim_s* %9, %struct.bfa_fcpim_s** %5, align 8
  %10 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %11 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bfa_trc(%struct.bfa_s* %10, i32 %14)
  %16 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %17 = bitcast %union.bfi_itn_i2h_msg_u* %6 to %struct.bfi_msg_s**
  store %struct.bfi_msg_s* %16, %struct.bfi_msg_s** %17, align 8
  %18 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %19 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %77 [
    i32 130, label %22
    i32 129, label %43
    i32 128, label %64
  ]

22:                                               ; preds = %2
  %23 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %5, align 8
  %24 = bitcast %union.bfi_itn_i2h_msg_u* %6 to %struct.TYPE_5__**
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.bfa_itnim_s* @BFA_ITNIM_FROM_TAG(%struct.bfa_fcpim_s* %23, i32 %27)
  store %struct.bfa_itnim_s* %28, %struct.bfa_itnim_s** %7, align 8
  %29 = bitcast %union.bfi_itn_i2h_msg_u* %6 to %struct.TYPE_5__**
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BFA_STATUS_OK, align 4
  %34 = icmp ne i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %7, align 8
  %38 = load i32, i32* @create_comps, align 4
  %39 = call i32 @bfa_stats(%struct.bfa_itnim_s* %37, i32 %38)
  %40 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %7, align 8
  %41 = load i32, i32* @BFA_ITNIM_SM_FWRSP, align 4
  %42 = call i32 @bfa_sm_send_event(%struct.bfa_itnim_s* %40, i32 %41)
  br label %85

43:                                               ; preds = %2
  %44 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %5, align 8
  %45 = bitcast %union.bfi_itn_i2h_msg_u* %6 to %struct.TYPE_6__**
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.bfa_itnim_s* @BFA_ITNIM_FROM_TAG(%struct.bfa_fcpim_s* %44, i32 %48)
  store %struct.bfa_itnim_s* %49, %struct.bfa_itnim_s** %7, align 8
  %50 = bitcast %union.bfi_itn_i2h_msg_u* %6 to %struct.TYPE_6__**
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BFA_STATUS_OK, align 4
  %55 = icmp ne i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON(i32 %56)
  %58 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %7, align 8
  %59 = load i32, i32* @delete_comps, align 4
  %60 = call i32 @bfa_stats(%struct.bfa_itnim_s* %58, i32 %59)
  %61 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %7, align 8
  %62 = load i32, i32* @BFA_ITNIM_SM_FWRSP, align 4
  %63 = call i32 @bfa_sm_send_event(%struct.bfa_itnim_s* %61, i32 %62)
  br label %85

64:                                               ; preds = %2
  %65 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %5, align 8
  %66 = bitcast %union.bfi_itn_i2h_msg_u* %6 to %struct.TYPE_7__**
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.bfa_itnim_s* @BFA_ITNIM_FROM_TAG(%struct.bfa_fcpim_s* %65, i32 %69)
  store %struct.bfa_itnim_s* %70, %struct.bfa_itnim_s** %7, align 8
  %71 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %7, align 8
  %72 = load i32, i32* @sler_events, align 4
  %73 = call i32 @bfa_stats(%struct.bfa_itnim_s* %71, i32 %72)
  %74 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %7, align 8
  %75 = load i32, i32* @BFA_ITNIM_SM_SLER, align 4
  %76 = call i32 @bfa_sm_send_event(%struct.bfa_itnim_s* %74, i32 %75)
  br label %85

77:                                               ; preds = %2
  %78 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %79 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %80 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bfa_trc(%struct.bfa_s* %78, i32 %82)
  %84 = call i32 @WARN_ON(i32 1)
  br label %85

85:                                               ; preds = %77, %64, %43, %22
  ret void
}

declare dso_local %struct.bfa_fcpim_s* @BFA_FCPIM(%struct.bfa_s*) #1

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

declare dso_local %struct.bfa_itnim_s* @BFA_ITNIM_FROM_TAG(%struct.bfa_fcpim_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_stats(%struct.bfa_itnim_s*, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_itnim_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
