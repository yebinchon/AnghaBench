; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_load_saved_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_load_saved_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_saved_state = type { %struct.pci_cap_saved_data*, i32 }
%struct.pci_cap_saved_data = type { i32, i32, i32, i32 }
%struct.pci_cap_saved_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_load_saved_state(%struct.pci_dev* %0, %struct.pci_saved_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_saved_state*, align 8
  %6 = alloca %struct.pci_cap_saved_data*, align 8
  %7 = alloca %struct.pci_cap_saved_state*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_saved_state* %1, %struct.pci_saved_state** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.pci_saved_state*, %struct.pci_saved_state** %5, align 8
  %11 = icmp ne %struct.pci_saved_state* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pci_saved_state*, %struct.pci_saved_state** %5, align 8
  %18 = getelementptr inbounds %struct.pci_saved_state, %struct.pci_saved_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @memcpy(i32 %16, i32 %19, i32 4)
  %21 = load %struct.pci_saved_state*, %struct.pci_saved_state** %5, align 8
  %22 = getelementptr inbounds %struct.pci_saved_state, %struct.pci_saved_state* %21, i32 0, i32 0
  %23 = load %struct.pci_cap_saved_data*, %struct.pci_cap_saved_data** %22, align 8
  store %struct.pci_cap_saved_data* %23, %struct.pci_cap_saved_data** %6, align 8
  br label %24

24:                                               ; preds = %52, %13
  %25 = load %struct.pci_cap_saved_data*, %struct.pci_cap_saved_data** %6, align 8
  %26 = getelementptr inbounds %struct.pci_cap_saved_data, %struct.pci_cap_saved_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %24
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load %struct.pci_cap_saved_data*, %struct.pci_cap_saved_data** %6, align 8
  %32 = getelementptr inbounds %struct.pci_cap_saved_data, %struct.pci_cap_saved_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pci_cap_saved_data*, %struct.pci_cap_saved_data** %6, align 8
  %35 = getelementptr inbounds %struct.pci_cap_saved_data, %struct.pci_cap_saved_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.pci_cap_saved_state* @_pci_find_saved_cap(%struct.pci_dev* %30, i32 %33, i32 %36)
  store %struct.pci_cap_saved_state* %37, %struct.pci_cap_saved_state** %7, align 8
  %38 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %7, align 8
  %39 = icmp ne %struct.pci_cap_saved_state* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %7, align 8
  %42 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pci_cap_saved_data*, %struct.pci_cap_saved_data** %6, align 8
  %46 = getelementptr inbounds %struct.pci_cap_saved_data, %struct.pci_cap_saved_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %40, %29
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %77

52:                                               ; preds = %40
  %53 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %7, align 8
  %54 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pci_cap_saved_data*, %struct.pci_cap_saved_data** %6, align 8
  %58 = getelementptr inbounds %struct.pci_cap_saved_data, %struct.pci_cap_saved_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %7, align 8
  %61 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memcpy(i32 %56, i32 %59, i32 %63)
  %65 = load %struct.pci_cap_saved_data*, %struct.pci_cap_saved_data** %6, align 8
  %66 = bitcast %struct.pci_cap_saved_data* %65 to i32*
  %67 = getelementptr inbounds i32, i32* %66, i64 16
  %68 = load %struct.pci_cap_saved_data*, %struct.pci_cap_saved_data** %6, align 8
  %69 = getelementptr inbounds %struct.pci_cap_saved_data, %struct.pci_cap_saved_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = bitcast i32* %72 to %struct.pci_cap_saved_data*
  store %struct.pci_cap_saved_data* %73, %struct.pci_cap_saved_data** %6, align 8
  br label %24

74:                                               ; preds = %24
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %49, %12
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.pci_cap_saved_state* @_pci_find_saved_cap(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
