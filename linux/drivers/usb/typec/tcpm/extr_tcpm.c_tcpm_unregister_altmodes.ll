; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_unregister_altmodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_unregister_altmodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32**, %struct.pd_mode_data }
%struct.pd_mode_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*)* @tcpm_unregister_altmodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpm_unregister_altmodes(%struct.tcpm_port* %0) #0 {
  %2 = alloca %struct.tcpm_port*, align 8
  %3 = alloca %struct.pd_mode_data*, align 8
  %4 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %2, align 8
  %5 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %6 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %5, i32 0, i32 1
  store %struct.pd_mode_data* %6, %struct.pd_mode_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.pd_mode_data*, %struct.pd_mode_data** %3, align 8
  %10 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %15 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @typec_unregister_altmode(i32* %20)
  %22 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %23 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %7

31:                                               ; preds = %7
  %32 = load %struct.pd_mode_data*, %struct.pd_mode_data** %3, align 8
  %33 = call i32 @memset(%struct.pd_mode_data* %32, i32 0, i32 4)
  ret void
}

declare dso_local i32 @typec_unregister_altmode(i32*) #1

declare dso_local i32 @memset(%struct.pd_mode_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
