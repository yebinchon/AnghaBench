; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_hw_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_hw_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32, i64, i32, %struct.TYPE_2__, i8**, i8** }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"EPs: %d, %s fifos, %d entries in SPRAM\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dedicated\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*)* @dwc2_hsotg_hw_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_hsotg_hw_cfg(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  %7 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %8 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %12 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %14 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %18 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @devm_kzalloc(i32 %19, i32 4, i32 %20)
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %23 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %22, i32 0, i32 6
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  store i8* %21, i8** %25, align 8
  %26 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %27 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %26, i32 0, i32 6
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %150

35:                                               ; preds = %1
  %36 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %37 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %36, i32 0, i32 6
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %42 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %41, i32 0, i32 5
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  store i8* %40, i8** %44, align 8
  %45 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %46 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = ashr i32 %49, 2
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %116, %35
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %54 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %121

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 3
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 2
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %57
  %64 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %65 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @devm_kzalloc(i32 %66, i32 4, i32 %67)
  %69 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %70 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %69, i32 0, i32 6
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %68, i8** %74, align 8
  %75 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %76 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %75, i32 0, i32 6
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %63
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %150

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86, %57
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, 1
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %115, label %91

91:                                               ; preds = %87
  %92 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %93 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @devm_kzalloc(i32 %94, i32 4, i32 %95)
  %97 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %98 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %97, i32 0, i32 5
  %99 = load i8**, i8*** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  store i8* %96, i8** %102, align 8
  %103 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %104 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %103, i32 0, i32 5
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %91
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %150

114:                                              ; preds = %91
  br label %115

115:                                              ; preds = %114, %87
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %4, align 4
  %120 = ashr i32 %119, 2
  store i32 %120, i32* %4, align 4
  br label %51

121:                                              ; preds = %51
  %122 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %123 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %127 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %129 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %133 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  %134 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %135 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %138 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %141 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %146 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %147 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @dev_info(i32 %136, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %139, i8* %145, i32 %148)
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %121, %111, %83, %32
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
