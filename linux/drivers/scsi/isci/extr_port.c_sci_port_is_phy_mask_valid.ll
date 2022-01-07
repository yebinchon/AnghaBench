; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_is_phy_mask_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_is_phy_mask_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_port*, i32)* @sci_port_is_phy_mask_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_port_is_phy_mask_valid(%struct.isci_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isci_port*, align 8
  %5 = alloca i32, align 4
  store %struct.isci_port* %0, %struct.isci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %7 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %12, 15
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %18, %14, %10
  store i32 1, i32* %3, align 4
  br label %77

26:                                               ; preds = %22
  br label %76

27:                                               ; preds = %2
  %28 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %29 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %32
  store i32 1, i32* %3, align 4
  br label %77

40:                                               ; preds = %36
  br label %75

41:                                               ; preds = %27
  %42 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %43 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 12
  %49 = icmp eq i32 %48, 12
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %50, %46
  store i32 1, i32* %3, align 4
  br label %77

58:                                               ; preds = %54
  br label %74

59:                                               ; preds = %41
  %60 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %61 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 8
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68, %64
  store i32 1, i32* %3, align 4
  br label %77

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %59
  br label %74

74:                                               ; preds = %73, %58
  br label %75

75:                                               ; preds = %74, %40
  br label %76

76:                                               ; preds = %75, %26
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %71, %57, %39, %25
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
