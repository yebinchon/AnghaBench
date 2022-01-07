; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_qh_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_qh_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32 }
%struct.fotg210_qh = type { i32, i32, %struct.fotg210_qh_hw* }
%struct.fotg210_qh_hw = type { i32, i32 }

@QH_SMASK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@QH_CMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"reused qh %p schedule\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fotg210_hcd*, %struct.fotg210_qh*)* @qh_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qh_schedule(%struct.fotg210_hcd* %0, %struct.fotg210_qh* %1) #0 {
  %3 = alloca %struct.fotg210_hcd*, align 8
  %4 = alloca %struct.fotg210_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fotg210_qh_hw*, align 8
  %10 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %3, align 8
  store %struct.fotg210_qh* %1, %struct.fotg210_qh** %4, align 8
  %11 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %12 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %11, i32 0, i32 2
  %13 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %12, align 8
  store %struct.fotg210_qh_hw* %13, %struct.fotg210_qh_hw** %9, align 8
  %14 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %15 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %16 = call i32 @qh_refresh(%struct.fotg210_hcd* %14, %struct.fotg210_qh* %15)
  %17 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %18 = call i32 @FOTG210_LIST_END(%struct.fotg210_hcd* %17)
  %19 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %9, align 8
  %20 = getelementptr inbounds %struct.fotg210_qh_hw, %struct.fotg210_qh_hw* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %22 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %26 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %2
  %30 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %31 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %9, align 8
  %32 = getelementptr inbounds %struct.fotg210_qh_hw, %struct.fotg210_qh_hw* %31, i32 0, i32 0
  %33 = call i32 @hc32_to_cpup(%struct.fotg210_hcd* %30, i32* %32)
  %34 = load i32, i32* @QH_SMASK, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @ffs(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, -1
  store i32 %40, i32* %6, align 4
  %41 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %42 = call i32 @check_intr_schedule(%struct.fotg210_hcd* %37, i32 %38, i32 %40, %struct.fotg210_qh* %41, i32* %7)
  store i32 %42, i32* %5, align 4
  br label %46

43:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %44 = load i32, i32* @ENOSPC, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %29
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %142

49:                                               ; preds = %46
  %50 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %51 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %96

54:                                               ; preds = %49
  %55 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %56 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %92, %54
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = icmp sgt i32 %62, 0
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i1 [ false, %58 ], [ %63, %61 ]
  br i1 %65, label %66, label %95

66:                                               ; preds = %64
  %67 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %68 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %72 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = urem i32 %70, %73
  store i32 %74, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %88, %66
  %76 = load i32, i32* %6, align 4
  %77 = icmp ult i32 %76, 8
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %83 = call i32 @check_intr_schedule(%struct.fotg210_hcd* %79, i32 %80, i32 %81, %struct.fotg210_qh* %82, i32* %7)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %91

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %75

91:                                               ; preds = %86, %75
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %10, align 4
  br label %58

95:                                               ; preds = %64
  br label %100

96:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  %97 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %98 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %99 = call i32 @check_intr_schedule(%struct.fotg210_hcd* %97, i32 0, i32 0, %struct.fotg210_qh* %98, i32* %7)
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %95
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %150

104:                                              ; preds = %100
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %107 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %109 = load i32, i32* @QH_CMASK, align 4
  %110 = load i32, i32* @QH_SMASK, align 4
  %111 = or i32 %109, %110
  %112 = xor i32 %111, -1
  %113 = call i32 @cpu_to_hc32(%struct.fotg210_hcd* %108, i32 %112)
  %114 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %9, align 8
  %115 = getelementptr inbounds %struct.fotg210_qh_hw, %struct.fotg210_qh_hw* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %119 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %104
  %123 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %124 = load i32, i32* %6, align 4
  %125 = shl i32 1, %124
  %126 = call i32 @cpu_to_hc32(%struct.fotg210_hcd* %123, i32 %125)
  br label %131

127:                                              ; preds = %104
  %128 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %129 = load i32, i32* @QH_SMASK, align 4
  %130 = call i32 @cpu_to_hc32(%struct.fotg210_hcd* %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %122
  %132 = phi i32 [ %126, %122 ], [ %130, %127 ]
  %133 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %9, align 8
  %134 = getelementptr inbounds %struct.fotg210_qh_hw, %struct.fotg210_qh_hw* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %9, align 8
  %139 = getelementptr inbounds %struct.fotg210_qh_hw, %struct.fotg210_qh_hw* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %146

142:                                              ; preds = %46
  %143 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %144 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %145 = call i32 @fotg210_dbg(%struct.fotg210_hcd* %143, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.fotg210_qh* %144)
  br label %146

146:                                              ; preds = %142, %131
  %147 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %148 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %149 = call i32 @qh_link_periodic(%struct.fotg210_hcd* %147, %struct.fotg210_qh* %148)
  br label %150

150:                                              ; preds = %146, %103
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @qh_refresh(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

declare dso_local i32 @FOTG210_LIST_END(%struct.fotg210_hcd*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @hc32_to_cpup(%struct.fotg210_hcd*, i32*) #1

declare dso_local i32 @check_intr_schedule(%struct.fotg210_hcd*, i32, i32, %struct.fotg210_qh*, i32*) #1

declare dso_local i32 @cpu_to_hc32(%struct.fotg210_hcd*, i32) #1

declare dso_local i32 @fotg210_dbg(%struct.fotg210_hcd*, i8*, %struct.fotg210_qh*) #1

declare dso_local i32 @qh_link_periodic(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
