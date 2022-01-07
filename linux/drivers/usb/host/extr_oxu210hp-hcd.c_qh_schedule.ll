; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_qh_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_qh_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32 }
%struct.ehci_qh = type { i32, i32, i32, i32 }

@EHCI_LIST_END = common dso_local global i32 0, align 4
@QH_SMASK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@QH_CMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"reused qh %p schedule\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxu_hcd*, %struct.ehci_qh*)* @qh_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qh_schedule(%struct.oxu_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %4, align 8
  %9 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %10 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %11 = call i32 @qh_refresh(%struct.oxu_hcd* %9, %struct.ehci_qh* %10)
  %12 = load i32, i32* @EHCI_LIST_END, align 4
  %13 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %14 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %16 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %20 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %25 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %24, i32 0, i32 2
  %26 = call i32 @le32_to_cpup(i32* %25)
  %27 = load i32, i32* @QH_SMASK, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @ffs(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %6, align 4
  %34 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %35 = call i32 @check_intr_schedule(%struct.oxu_hcd* %30, i32 %31, i32 %33, %struct.ehci_qh* %34, i32* %7)
  store i32 %35, i32* %5, align 4
  br label %39

36:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %37 = load i32, i32* @ENOSPC, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %23
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %123

42:                                               ; preds = %39
  %43 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %44 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %42
  %48 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %49 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %77, %47
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %66, %52
  %54 = load i32, i32* %6, align 4
  %55 = icmp ult i32 %54, 8
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %61 = call i32 @check_intr_schedule(%struct.oxu_hcd* %57, i32 %58, i32 %59, %struct.ehci_qh* %60, i32* %7)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %69

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %53

69:                                               ; preds = %64, %53
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = add i32 %74, -1
  store i32 %75, i32* %8, align 4
  %76 = icmp ne i32 %74, 0
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi i1 [ false, %70 ], [ %76, %73 ]
  br i1 %78, label %52, label %79

79:                                               ; preds = %77
  br label %84

80:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  %81 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %82 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %83 = call i32 @check_intr_schedule(%struct.oxu_hcd* %81, i32 0, i32 0, %struct.ehci_qh* %82, i32* %7)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %79
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %131

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %91 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @QH_CMASK, align 4
  %93 = load i32, i32* @QH_SMASK, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = call i32 @cpu_to_le32(i32 %95)
  %97 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %98 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %102 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %88
  %106 = load i32, i32* %6, align 4
  %107 = shl i32 1, %106
  %108 = call i32 @cpu_to_le32(i32 %107)
  br label %112

109:                                              ; preds = %88
  %110 = load i32, i32* @QH_SMASK, align 4
  %111 = call i32 @cpu_to_le32(i32 %110)
  br label %112

112:                                              ; preds = %109, %105
  %113 = phi i32 [ %108, %105 ], [ %111, %109 ]
  %114 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %115 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %120 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %127

123:                                              ; preds = %39
  %124 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %125 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %126 = call i32 @oxu_dbg(%struct.oxu_hcd* %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.ehci_qh* %125)
  br label %127

127:                                              ; preds = %123, %112
  %128 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %129 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %130 = call i32 @qh_link_periodic(%struct.oxu_hcd* %128, %struct.ehci_qh* %129)
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %127, %87
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @qh_refresh(%struct.oxu_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @le32_to_cpup(i32*) #1

declare dso_local i32 @check_intr_schedule(%struct.oxu_hcd*, i32, i32, %struct.ehci_qh*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @oxu_dbg(%struct.oxu_hcd*, i8*, %struct.ehci_qh*) #1

declare dso_local i32 @qh_link_periodic(%struct.oxu_hcd*, %struct.ehci_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
