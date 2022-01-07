; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hws_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hws_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32, i32, i32 }

@n_evt_sm = common dso_local global i32* null, align 8
@csio_hws_quiescing = common dso_local global i32 0, align 4
@CSIO_LN_NOTIFY_HWSTOP = common dso_local global i32 0, align 4
@CSIO_HWE_QUIESCED = common dso_local global i32 0, align 4
@csio_hws_uninit = common dso_local global i32 0, align 4
@n_evt_unexp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, i32)* @csio_hws_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_hws_ready(%struct.csio_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %7 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %9 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %12 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %15 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %17 = load i32*, i32** @n_evt_sm, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %16, i32 %21)
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %66 [
    i32 131, label %24
    i32 132, label %24
    i32 128, label %24
    i32 129, label %24
    i32 130, label %24
    i32 133, label %61
  ]

24:                                               ; preds = %2, %2, %2, %2, %2
  %25 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %26 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %25, i32 0, i32 3
  %27 = load i32, i32* @csio_hws_quiescing, align 4
  %28 = call i32 @csio_set_state(i32* %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 131
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 130
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %24
  %35 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %36 = call i32 @csio_hw_to_scsim(%struct.csio_hw* %35)
  %37 = call i32 @csio_scsim_cleanup_io(i32 %36, i32 0)
  br label %42

38:                                               ; preds = %31
  %39 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %40 = call i32 @csio_hw_to_scsim(%struct.csio_hw* %39)
  %41 = call i32 @csio_scsim_cleanup_io(i32 %40, i32 1)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %44 = call i32 @csio_hw_intr_disable(%struct.csio_hw* %43)
  %45 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %46 = call i32 @csio_hw_mbm_cleanup(%struct.csio_hw* %45)
  %47 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %48 = call i32 @csio_evtq_stop(%struct.csio_hw* %47)
  %49 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %50 = load i32, i32* @CSIO_LN_NOTIFY_HWSTOP, align 4
  %51 = call i32 @csio_notify_lnodes(%struct.csio_hw* %49, i32 %50)
  %52 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %53 = call i32 @csio_evtq_flush(%struct.csio_hw* %52)
  %54 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %55 = call i32 @csio_hw_to_mgmtm(%struct.csio_hw* %54)
  %56 = call i32 @csio_mgmtm_cleanup(i32 %55)
  %57 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %58 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %57, i32 0, i32 3
  %59 = load i32, i32* @CSIO_HWE_QUIESCED, align 4
  %60 = call i32 @csio_post_event(i32* %58, i32 %59)
  br label %70

61:                                               ; preds = %2
  %62 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %63 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %62, i32 0, i32 3
  %64 = load i32, i32* @csio_hws_uninit, align 4
  %65 = call i32 @csio_set_state(i32* %63, i32 %64)
  br label %70

66:                                               ; preds = %2
  %67 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %68 = load i32, i32* @n_evt_unexp, align 4
  %69 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %61, %42
  ret void
}

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_set_state(i32*, i32) #1

declare dso_local i32 @csio_scsim_cleanup_io(i32, i32) #1

declare dso_local i32 @csio_hw_to_scsim(%struct.csio_hw*) #1

declare dso_local i32 @csio_hw_intr_disable(%struct.csio_hw*) #1

declare dso_local i32 @csio_hw_mbm_cleanup(%struct.csio_hw*) #1

declare dso_local i32 @csio_evtq_stop(%struct.csio_hw*) #1

declare dso_local i32 @csio_notify_lnodes(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_evtq_flush(%struct.csio_hw*) #1

declare dso_local i32 @csio_mgmtm_cleanup(i32) #1

declare dso_local i32 @csio_hw_to_mgmtm(%struct.csio_hw*) #1

declare dso_local i32 @csio_post_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
