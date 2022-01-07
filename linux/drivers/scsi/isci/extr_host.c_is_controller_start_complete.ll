; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_is_controller_start_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_is_controller_start_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.TYPE_4__, %struct.isci_phy* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.isci_phy = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SCI_MAX_PHYS = common dso_local global i32 0, align 4
@SCI_PHY_INITIAL = common dso_local global i64 0, align 8
@SCI_PHY_STOPPED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_controller_start_complete(%struct.isci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isci_phy*, align 8
  %6 = alloca i64, align 8
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %71, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SCI_MAX_PHYS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %74

11:                                               ; preds = %7
  %12 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %13 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %12, i32 0, i32 1
  %14 = load %struct.isci_phy*, %struct.isci_phy** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %14, i64 %16
  store %struct.isci_phy* %17, %struct.isci_phy** %5, align 8
  %18 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %19 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %23 = call i64 @is_port_config_apc(%struct.isci_host* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  br label %32

26:                                               ; preds = %11
  %27 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %28 = call i32 @phy_get_non_dummy_port(%struct.isci_phy* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %71

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %25
  %33 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %34 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @SCI_PHY_INITIAL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %69, label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %43 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @SCI_PHY_STOPPED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %69, label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %52 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %57 = call i64 @is_phy_starting(%struct.isci_phy* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %61 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %65 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %63, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59, %55, %46, %37
  store i32 0, i32* %2, align 4
  br label %75

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %30
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %7

74:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %69
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @is_port_config_apc(%struct.isci_host*) #1

declare dso_local i32 @phy_get_non_dummy_port(%struct.isci_phy*) #1

declare dso_local i64 @is_phy_starting(%struct.isci_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
