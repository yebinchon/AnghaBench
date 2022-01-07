; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_power_control_queue_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_power_control_queue_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.TYPE_8__, %struct.isci_phy* }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.isci_phy**, i32 }
%struct.isci_phy = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SCIC_SDS_CONTROLLER_POWER_CONTROL_INTERVAL = common dso_local global i32 0, align 4
@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@SCI_PHY_READY = common dso_local global i64 0, align 8
@SAS_PROTOCOL_SSP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_controller_power_control_queue_insert(%struct.isci_host* %0, %struct.isci_phy* %1) #0 {
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca %struct.isci_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.isci_phy*, align 8
  %7 = alloca i64, align 8
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  store %struct.isci_phy* %1, %struct.isci_phy** %4, align 8
  %8 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %9 = icmp eq %struct.isci_phy* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %13 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %17 = call i64 @max_spin_up(%struct.isci_host* %16)
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %2
  %20 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %21 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %26 = call i32 @sci_phy_consume_power_handler(%struct.isci_phy* %25)
  %27 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %28 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %34 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = call i32 @sci_del_timer(i32* %35)
  br label %37

37:                                               ; preds = %32, %19
  %38 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %39 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  %41 = load i32, i32* @SCIC_SDS_CONTROLLER_POWER_CONTROL_INTERVAL, align 4
  %42 = call i32 @sci_mod_timer(i32* %40, i32 %41)
  %43 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %44 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 8
  br label %110

46:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %47

47:                                               ; preds = %87, %46
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @SCI_MAX_PHYS, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %90

51:                                               ; preds = %47
  %52 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %53 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %52, i32 0, i32 1
  %54 = load %struct.isci_phy*, %struct.isci_phy** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %54, i64 %55
  store %struct.isci_phy* %56, %struct.isci_phy** %6, align 8
  %57 = load %struct.isci_phy*, %struct.isci_phy** %6, align 8
  %58 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %63 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @memcmp(i32 %61, i32 %66, i32 4)
  store i64 %67, i64* %7, align 8
  %68 = load %struct.isci_phy*, %struct.isci_phy** %6, align 8
  %69 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SCI_PHY_READY, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %51
  %75 = load %struct.isci_phy*, %struct.isci_phy** %6, align 8
  %76 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SAS_PROTOCOL_SSP, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i64, i64* %7, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %85 = call i32 @sci_phy_consume_power_handler(%struct.isci_phy* %84)
  br label %90

86:                                               ; preds = %80, %74, %51
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %5, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %5, align 8
  br label %47

90:                                               ; preds = %83, %47
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* @SCI_MAX_PHYS, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %96 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %97 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load %struct.isci_phy**, %struct.isci_phy*** %98, align 8
  %100 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %101 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.isci_phy*, %struct.isci_phy** %99, i64 %102
  store %struct.isci_phy* %95, %struct.isci_phy** %103, align 8
  %104 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %105 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %94, %90
  br label %110

110:                                              ; preds = %109, %37
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @max_spin_up(%struct.isci_host*) #1

declare dso_local i32 @sci_phy_consume_power_handler(%struct.isci_phy*) #1

declare dso_local i32 @sci_del_timer(i32*) #1

declare dso_local i32 @sci_mod_timer(i32*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
