; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_typec_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_typec_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@TYPEC_ACCESSORY_DEBUG = common dso_local global i32 0, align 4
@TYPEC_ACCESSORY_AUDIO = common dso_local global i32 0, align 4
@TYPEC_ACCESSORY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*)* @tcpm_typec_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpm_typec_connect(%struct.tcpm_port* %0) #0 {
  %2 = alloca %struct.tcpm_port*, align 8
  store %struct.tcpm_port* %0, %struct.tcpm_port** %2, align 8
  %3 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %4 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %51, label %7

7:                                                ; preds = %1
  %8 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %9 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %8, i32 0, i32 5
  %10 = call i32 @memset(i32* %9, i32 0, i32 4)
  %11 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %12 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %15 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %18 = call i64 @tcpm_port_is_debug(%struct.tcpm_port* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %7
  %21 = load i32, i32* @TYPEC_ACCESSORY_DEBUG, align 4
  %22 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %23 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  br label %40

25:                                               ; preds = %7
  %26 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %27 = call i64 @tcpm_port_is_audio(%struct.tcpm_port* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* @TYPEC_ACCESSORY_AUDIO, align 4
  %31 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %32 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  br label %39

34:                                               ; preds = %25
  %35 = load i32, i32* @TYPEC_ACCESSORY_NONE, align 4
  %36 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %37 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39, %20
  %41 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %42 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %45 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %44, i32 0, i32 1
  %46 = call i32 @typec_register_partner(i32 %43, %struct.TYPE_2__* %45)
  %47 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %48 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %50 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %40, %1
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @tcpm_port_is_debug(%struct.tcpm_port*) #1

declare dso_local i64 @tcpm_port_is_audio(%struct.tcpm_port*) #1

declare dso_local i32 @typec_register_partner(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
