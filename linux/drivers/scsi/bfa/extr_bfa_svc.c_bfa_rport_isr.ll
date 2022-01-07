; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfi_msg_s = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%union.bfi_rport_i2h_msg_u = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.bfa_rport_s = type { i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@BFA_RPORT_SM_FWRSP = common dso_local global i32 0, align 4
@BFA_RPORT_SM_QOS_SCN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_rport_isr(%struct.bfa_s* %0, %struct.bfi_msg_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_msg_s*, align 8
  %5 = alloca %union.bfi_rport_i2h_msg_u, align 8
  %6 = alloca %struct.bfa_rport_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_msg_s* %1, %struct.bfi_msg_s** %4, align 8
  %7 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %8 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %9 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @bfa_trc(%struct.bfa_s* %7, i32 %11)
  %13 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %14 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.bfi_msg_s**
  store %struct.bfi_msg_s* %13, %struct.bfi_msg_s** %14, align 8
  %15 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %111 [
    i32 133, label %19
    i32 132, label %52
    i32 128, label %73
    i32 130, label %88
    i32 131, label %97
    i32 129, label %100
  ]

19:                                               ; preds = %2
  %20 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %21 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_7__**
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.bfa_rport_s* @BFA_RPORT_FROM_TAG(%struct.bfa_s* %20, i32 %24)
  store %struct.bfa_rport_s* %25, %struct.bfa_rport_s** %6, align 8
  %26 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_7__**
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %31 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_7__**
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %37 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %39 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %40 = call i32 @bfa_rport_set_lunmask(%struct.bfa_s* %38, %struct.bfa_rport_s* %39)
  %41 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_7__**
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BFA_STATUS_OK, align 4
  %46 = icmp ne i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON(i32 %47)
  %49 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %50 = load i32, i32* @BFA_RPORT_SM_FWRSP, align 4
  %51 = call i32 @bfa_sm_send_event(%struct.bfa_rport_s* %49, i32 %50)
  br label %119

52:                                               ; preds = %2
  %53 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %54 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_8__**
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.bfa_rport_s* @BFA_RPORT_FROM_TAG(%struct.bfa_s* %53, i32 %57)
  store %struct.bfa_rport_s* %58, %struct.bfa_rport_s** %6, align 8
  %59 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_8__**
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BFA_STATUS_OK, align 4
  %64 = icmp ne i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @WARN_ON(i32 %65)
  %67 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %68 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %69 = call i32 @bfa_rport_unset_lunmask(%struct.bfa_s* %67, %struct.bfa_rport_s* %68)
  %70 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %71 = load i32, i32* @BFA_RPORT_SM_FWRSP, align 4
  %72 = call i32 @bfa_sm_send_event(%struct.bfa_rport_s* %70, i32 %71)
  br label %119

73:                                               ; preds = %2
  %74 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %75 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_10__**
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.bfa_rport_s* @BFA_RPORT_FROM_TAG(%struct.bfa_s* %74, i32 %78)
  store %struct.bfa_rport_s* %79, %struct.bfa_rport_s** %6, align 8
  %80 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_10__**
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %83 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %84, align 8
  %85 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %86 = load i32, i32* @BFA_RPORT_SM_QOS_SCN, align 4
  %87 = call i32 @bfa_sm_send_event(%struct.bfa_rport_s* %85, i32 %86)
  br label %119

88:                                               ; preds = %2
  %89 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %90 = call i32 @BFA_FCPORT_MOD(%struct.bfa_s* %89)
  %91 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_11__**
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = call i32 @bfa_fcport_update_loop_info(i32 %90, i32* %93)
  %95 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %96 = call i32 @bfa_cb_rport_scn_online(%struct.bfa_s* %95)
  br label %119

97:                                               ; preds = %2
  %98 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %99 = call i32 @bfa_cb_rport_scn_offline(%struct.bfa_s* %98)
  br label %119

100:                                              ; preds = %2
  %101 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %102 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_11__**
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.bfa_rport_s* @BFA_RPORT_FROM_TAG(%struct.bfa_s* %101, i32 %105)
  store %struct.bfa_rport_s* %106, %struct.bfa_rport_s** %6, align 8
  %107 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %108 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @bfa_cb_rport_scn_no_dev(i32 %109)
  br label %119

111:                                              ; preds = %2
  %112 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %113 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %114 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @bfa_trc(%struct.bfa_s* %112, i32 %116)
  %118 = call i32 @WARN_ON(i32 1)
  br label %119

119:                                              ; preds = %111, %100, %97, %88, %73, %52, %19
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

declare dso_local %struct.bfa_rport_s* @BFA_RPORT_FROM_TAG(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_rport_set_lunmask(%struct.bfa_s*, %struct.bfa_rport_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_rport_s*, i32) #1

declare dso_local i32 @bfa_rport_unset_lunmask(%struct.bfa_s*, %struct.bfa_rport_s*) #1

declare dso_local i32 @bfa_fcport_update_loop_info(i32, i32*) #1

declare dso_local i32 @BFA_FCPORT_MOD(%struct.bfa_s*) #1

declare dso_local i32 @bfa_cb_rport_scn_online(%struct.bfa_s*) #1

declare dso_local i32 @bfa_cb_rport_scn_offline(%struct.bfa_s*) #1

declare dso_local i32 @bfa_cb_rport_scn_no_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
