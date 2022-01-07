; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_adisc_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_adisc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { %struct.TYPE_5__*, %struct.ibmvfc_host*, %struct.ibmvfc_target* }
%struct.TYPE_5__ = type { %struct.ibmvfc_passthru_mad }
%struct.ibmvfc_passthru_mad = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.ibmvfc_host = type { i32, i32 }
%struct.ibmvfc_target = type { i32, i32 }

@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ADISC succeeded\0A\00", align 1
@IBMVFC_TGT_ACTION_DEL_RPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"ADISC failed: %s (%x:%x) %s (%x) %s (%x) rc=0x%02X\0A\00", align 1
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_tgt_adisc_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_adisc_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_target*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_passthru_mad*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %9 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %10 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %9, i32 0, i32 2
  %11 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %10, align 8
  store %struct.ibmvfc_target* %11, %struct.ibmvfc_target** %3, align 8
  %12 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %13 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %12, i32 0, i32 1
  %14 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %13, align 8
  store %struct.ibmvfc_host* %14, %struct.ibmvfc_host** %4, align 8
  %15 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %16 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.ibmvfc_passthru_mad* %18, %struct.ibmvfc_passthru_mad** %5, align 8
  %19 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %20 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @be16_to_cpu(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %25 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %29 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %30 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %28, i32 %29)
  %31 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %32 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %31, i32 0, i32 1
  %33 = call i32 @del_timer(i32* %32)
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %49 [
    i32 128, label %35
    i32 130, label %47
    i32 129, label %48
  ]

35:                                               ; preds = %1
  %36 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %37 = call i32 @tgt_dbg(%struct.ibmvfc_target* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %39 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %40 = call i32 @ibmvfc_adisc_needs_plogi(%struct.ibmvfc_passthru_mad* %38, %struct.ibmvfc_target* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %44 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %45 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %35
  br label %101

47:                                               ; preds = %1
  br label %101

48:                                               ; preds = %1
  br label %49

49:                                               ; preds = %1, %48
  %50 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %51 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %52 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %50, i32 %51)
  %53 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %54 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @be32_to_cpu(i32 %58)
  %60 = and i32 %59, 16711680
  %61 = ashr i32 %60, 16
  store i32 %61, i32* %7, align 4
  %62 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %63 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be32_to_cpu(i32 %67)
  %69 = and i32 %68, 65280
  %70 = ashr i32 %69, 8
  store i32 %70, i32* %8, align 4
  %71 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %72 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %73 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be16_to_cpu(i32 %75)
  %77 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %78 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @be16_to_cpu(i32 %80)
  %82 = call i32 @ibmvfc_get_cmd_error(i32 %76, i32 %81)
  %83 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %84 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @be16_to_cpu(i32 %86)
  %88 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %89 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @be16_to_cpu(i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @ibmvfc_get_fc_type(i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @ibmvfc_get_ls_explain(i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @tgt_info(%struct.ibmvfc_target* %71, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %87, i32 %92, i32 %94, i32 %95, i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %49, %47, %46
  %102 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %103 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %102, i32 0, i32 0
  %104 = load i32, i32* @ibmvfc_release_tgt, align 4
  %105 = call i32 @kref_put(i32* %103, i32 %104)
  %106 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %107 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %106)
  %108 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %109 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %108, i32 0, i32 0
  %110 = call i32 @wake_up(i32* %109)
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

declare dso_local i32 @ibmvfc_adisc_needs_plogi(%struct.ibmvfc_passthru_mad*, %struct.ibmvfc_target*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @tgt_info(%struct.ibmvfc_target*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ibmvfc_get_cmd_error(i32, i32) #1

declare dso_local i32 @ibmvfc_get_fc_type(i32) #1

declare dso_local i32 @ibmvfc_get_ls_explain(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
