; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hws_quiescing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hws_quiescing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32, i32, i32 }

@n_evt_sm = common dso_local global i32* null, align 8
@csio_hws_resetting = common dso_local global i32 0, align 4
@CSIO_LN_NOTIFY_HWRESET = common dso_local global i32 0, align 4
@CSIO_HWE_HBA_RESET_DONE = common dso_local global i32 0, align 4
@csio_hws_removing = common dso_local global i32 0, align 4
@CSIO_LN_NOTIFY_HWREMOVE = common dso_local global i32 0, align 4
@csio_hws_quiesced = common dso_local global i32 0, align 4
@csio_hws_pcierr = common dso_local global i32 0, align 4
@n_evt_unexp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, i32)* @csio_hws_quiescing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_hws_quiescing(%struct.csio_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %6 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %9 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %12 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %14 = load i32*, i32** @n_evt_sm, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %13, i32 %18)
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %75 [
    i32 129, label %21
  ]

21:                                               ; preds = %2
  %22 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %23 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %70 [
    i32 133, label %25
    i32 132, label %30
    i32 130, label %46
    i32 128, label %58
    i32 131, label %63
  ]

25:                                               ; preds = %21
  %26 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %27 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %26, i32 0, i32 2
  %28 = load i32, i32* @csio_hws_resetting, align 4
  %29 = call i32 @csio_set_state(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %25
  %31 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %32 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %31, i32 0, i32 2
  %33 = load i32, i32* @csio_hws_resetting, align 4
  %34 = call i32 @csio_set_state(i32* %32, i32 %33)
  %35 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %36 = load i32, i32* @CSIO_LN_NOTIFY_HWRESET, align 4
  %37 = call i32 @csio_notify_lnodes(%struct.csio_hw* %35, i32 %36)
  %38 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %39 = call i32 @csio_wr_destroy_queues(%struct.csio_hw* %38, i32 0)
  %40 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %41 = call i32 @csio_do_reset(%struct.csio_hw* %40, i32 0)
  %42 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %43 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %42, i32 0, i32 2
  %44 = load i32, i32* @CSIO_HWE_HBA_RESET_DONE, align 4
  %45 = call i32 @csio_post_event(i32* %43, i32 %44)
  br label %74

46:                                               ; preds = %21
  %47 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %48 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %47, i32 0, i32 2
  %49 = load i32, i32* @csio_hws_removing, align 4
  %50 = call i32 @csio_set_state(i32* %48, i32 %49)
  %51 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %52 = load i32, i32* @CSIO_LN_NOTIFY_HWREMOVE, align 4
  %53 = call i32 @csio_notify_lnodes(%struct.csio_hw* %51, i32 %52)
  %54 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %55 = call i32 @csio_wr_destroy_queues(%struct.csio_hw* %54, i32 1)
  %56 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %57 = call i32 @csio_do_bye(%struct.csio_hw* %56)
  br label %74

58:                                               ; preds = %21
  %59 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %60 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %59, i32 0, i32 2
  %61 = load i32, i32* @csio_hws_quiesced, align 4
  %62 = call i32 @csio_set_state(i32* %60, i32 %61)
  br label %74

63:                                               ; preds = %21
  %64 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %65 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %64, i32 0, i32 2
  %66 = load i32, i32* @csio_hws_pcierr, align 4
  %67 = call i32 @csio_set_state(i32* %65, i32 %66)
  %68 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %69 = call i32 @csio_wr_destroy_queues(%struct.csio_hw* %68, i32 0)
  br label %74

70:                                               ; preds = %21
  %71 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %72 = load i32, i32* @n_evt_unexp, align 4
  %73 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %63, %58, %46, %30
  br label %79

75:                                               ; preds = %2
  %76 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %77 = load i32, i32* @n_evt_unexp, align 4
  %78 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %74
  ret void
}

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_set_state(i32*, i32) #1

declare dso_local i32 @csio_notify_lnodes(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_wr_destroy_queues(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_do_reset(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_post_event(i32*, i32) #1

declare dso_local i32 @csio_do_bye(%struct.csio_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
