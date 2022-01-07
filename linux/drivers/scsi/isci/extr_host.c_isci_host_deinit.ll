; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_isci_host_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_isci_host_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_22__, %struct.TYPE_20__, %struct.isci_phy*, %struct.isci_port*, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.isci_phy = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.isci_port = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32* }

@SGPIO_HW_CONTROL = common dso_local global i32 0, align 4
@IHOST_STOP_PENDING = common dso_local global i32 0, align 4
@SCIC_CONTROLLER_STOP_TIMEOUT = common dso_local global i32 0, align 4
@SCI_MAX_PHYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_host_deinit(%struct.isci_host* %0) #0 {
  %2 = alloca %struct.isci_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.isci_port*, align 8
  %5 = alloca %struct.isci_phy*, align 8
  store %struct.isci_host* %0, %struct.isci_host** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %9 = call i32 @isci_gpio_count(%struct.isci_host* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = load i32, i32* @SGPIO_HW_CONTROL, align 4
  %13 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %14 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %13, i32 0, i32 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @writel(i32 %12, i32* %22)
  br label %24

24:                                               ; preds = %11
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %6

27:                                               ; preds = %6
  %28 = load i32, i32* @IHOST_STOP_PENDING, align 4
  %29 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %30 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %29, i32 0, i32 9
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %33 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %32, i32 0, i32 7
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %36 = load i32, i32* @SCIC_CONTROLLER_STOP_TIMEOUT, align 4
  %37 = call i32 @sci_controller_stop(%struct.isci_host* %35, i32 %36)
  %38 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %39 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %38, i32 0, i32 7
  %40 = call i32 @spin_unlock_irq(i32* %39)
  %41 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %42 = call i32 @wait_for_stop(%struct.isci_host* %41)
  %43 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %44 = call i32 @sci_controller_stop_phys(%struct.isci_host* %43)
  %45 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %46 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %45, i32 0, i32 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = call i32 @writel(i32 0, i32* %50)
  %52 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %53 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %52, i32 0, i32 7
  %54 = call i32 @spin_lock_irq(i32* %53)
  %55 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %56 = call i32 @sci_controller_reset(%struct.isci_host* %55)
  %57 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %58 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %57, i32 0, i32 7
  %59 = call i32 @spin_unlock_irq(i32* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %77, %27
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %63 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %68 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %67, i32 0, i32 6
  %69 = load %struct.isci_port*, %struct.isci_port** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %69, i64 %71
  store %struct.isci_port* %72, %struct.isci_port** %4, align 8
  %73 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %74 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = call i32 @del_timer_sync(i32* %75)
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %60

80:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %96, %80
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @SCI_MAX_PHYS, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %87 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %86, i32 0, i32 5
  %88 = load %struct.isci_phy*, %struct.isci_phy** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %88, i64 %90
  store %struct.isci_phy* %91, %struct.isci_phy** %5, align 8
  %92 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %93 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = call i32 @del_timer_sync(i32* %94)
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %81

99:                                               ; preds = %81
  %100 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %101 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = call i32 @del_timer_sync(i32* %103)
  %105 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %106 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = call i32 @del_timer_sync(i32* %108)
  %110 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %111 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = call i32 @del_timer_sync(i32* %112)
  %114 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %115 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = call i32 @del_timer_sync(i32* %116)
  ret void
}

declare dso_local i32 @isci_gpio_count(%struct.isci_host*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @sci_controller_stop(%struct.isci_host*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_stop(%struct.isci_host*) #1

declare dso_local i32 @sci_controller_stop_phys(%struct.isci_host*) #1

declare dso_local i32 @sci_controller_reset(%struct.isci_host*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
