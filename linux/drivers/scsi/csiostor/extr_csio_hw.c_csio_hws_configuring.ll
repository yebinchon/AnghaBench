; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hws_configuring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hws_configuring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32, i32 }

@n_evt_sm = common dso_local global i32* null, align 8
@csio_hws_initializing = common dso_local global i32 0, align 4
@csio_hws_ready = common dso_local global i32 0, align 4
@CSIO_LN_NOTIFY_HWREADY = common dso_local global i32 0, align 4
@csio_hws_uninit = common dso_local global i32 0, align 4
@n_evt_unexp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, i32)* @csio_hws_configuring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_hws_configuring(%struct.csio_hw* %0, i32 %1) #0 {
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
  switch i32 %20, label %44 [
    i32 130, label %21
    i32 129, label %28
    i32 131, label %36
    i32 128, label %41
  ]

21:                                               ; preds = %2
  %22 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %23 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %22, i32 0, i32 2
  %24 = load i32, i32* @csio_hws_initializing, align 4
  %25 = call i32 @csio_set_state(i32* %23, i32 %24)
  %26 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %27 = call i32 @csio_hw_initialize(%struct.csio_hw* %26)
  br label %48

28:                                               ; preds = %2
  %29 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %30 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %29, i32 0, i32 2
  %31 = load i32, i32* @csio_hws_ready, align 4
  %32 = call i32 @csio_set_state(i32* %30, i32 %31)
  %33 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %34 = load i32, i32* @CSIO_LN_NOTIFY_HWREADY, align 4
  %35 = call i32 @csio_notify_lnodes(%struct.csio_hw* %33, i32 %34)
  br label %48

36:                                               ; preds = %2
  %37 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %38 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %37, i32 0, i32 2
  %39 = load i32, i32* @csio_hws_uninit, align 4
  %40 = call i32 @csio_set_state(i32* %38, i32 %39)
  br label %48

41:                                               ; preds = %2
  %42 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %43 = call i32 @csio_do_bye(%struct.csio_hw* %42)
  br label %48

44:                                               ; preds = %2
  %45 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %46 = load i32, i32* @n_evt_unexp, align 4
  %47 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %41, %36, %28, %21
  ret void
}

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_set_state(i32*, i32) #1

declare dso_local i32 @csio_hw_initialize(%struct.csio_hw*) #1

declare dso_local i32 @csio_notify_lnodes(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_do_bye(%struct.csio_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
