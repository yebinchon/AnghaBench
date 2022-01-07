; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_send_vdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_send_vdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32 }

@VDO_MAX_SIZE = common dso_local global i32 0, align 4
@USB_SID_PD = common dso_local global i32 0, align 4
@CMD_ATTENTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*, i32, i32, i32*, i32)* @tcpm_send_vdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpm_send_vdm(%struct.tcpm_port* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.tcpm_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @VDO_MAX_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp sgt i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @VDO_MAX_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %19, %5
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @USB_SID_PD, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @USB_SID_PD, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %36

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @PD_VDO_CMD(i32 %31)
  %33 = load i64, i64* @CMD_ATTENTION, align 8
  %34 = icmp sle i64 %32, %33
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %30, %29
  %37 = phi i32 [ 1, %29 ], [ %35, %30 ]
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @VDO(i32 %23, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @tcpm_queue_vdm(%struct.tcpm_port* %40, i32 %41, i32* %42, i32 %43)
  %45 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %46 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %49 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %48, i32 0, i32 0
  %50 = call i32 @mod_delayed_work(i32 %47, i32* %49, i32 0)
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @VDO(i32, i32, i32) #1

declare dso_local i64 @PD_VDO_CMD(i32) #1

declare dso_local i32 @tcpm_queue_vdm(%struct.tcpm_port*, i32, i32*, i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
