; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_rev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_rev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pcie = type { i32, i32, i32, i32, i32, i32, i64*, i8*, %struct.TYPE_4__, %struct.TYPE_3__, i8*, i32, %struct.device* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.device = type { i32 }

@iproc_pcie_reg_paxb_bcma = common dso_local global i64* null, align 8
@iproc_pcie_reg_paxb = common dso_local global i64* null, align 8
@paxb_ob_map = common dso_local global i8* null, align 8
@iproc_pcie_reg_paxb_v2 = common dso_local global i64* null, align 8
@paxb_v2_ob_map = common dso_local global i8* null, align 8
@paxb_v2_ib_map = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [66 x i8] c"reads of config registers that contain %#x return incorrect data\0A\00", align 1
@CFG_RETRY_STATUS = common dso_local global i32 0, align 4
@iproc_pcie_reg_paxc = common dso_local global i64* null, align 8
@iproc_pcie_reg_paxc_v2 = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"incompatible iProc PCIe interface\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IPROC_PCIE_MAX_NUM_REG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPROC_PCIE_REG_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_pcie*)* @iproc_pcie_rev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pcie_rev_init(%struct.iproc_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iproc_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store %struct.iproc_pcie* %0, %struct.iproc_pcie** %3, align 8
  %7 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %8 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %7, i32 0, i32 12
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %84 [
    i32 131, label %13
    i32 132, label %15
    i32 130, label %33
    i32 129, label %66
    i32 128, label %74
  ]

13:                                               ; preds = %1
  %14 = load i64*, i64** @iproc_pcie_reg_paxb_bcma, align 8
  store i64* %14, i64** %6, align 8
  br label %89

15:                                               ; preds = %1
  %16 = load i64*, i64** @iproc_pcie_reg_paxb, align 8
  store i64* %16, i64** %6, align 8
  %17 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %18 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %20 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load i8*, i8** @paxb_ob_map, align 8
  %25 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %26 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %25, i32 0, i32 10
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @paxb_ob_map, align 8
  %28 = call i8* @ARRAY_SIZE(i8* %27)
  %29 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %30 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  br label %32

32:                                               ; preds = %23, %15
  br label %89

33:                                               ; preds = %1
  %34 = load i64*, i64** @iproc_pcie_reg_paxb_v2, align 8
  store i64* %34, i64** %6, align 8
  %35 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %36 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %35, i32 0, i32 2
  store i32 1, i32* %36, align 8
  %37 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %38 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %40 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = load i8*, i8** @paxb_v2_ob_map, align 8
  %45 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %46 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %45, i32 0, i32 10
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @paxb_v2_ob_map, align 8
  %48 = call i8* @ARRAY_SIZE(i8* %47)
  %49 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %50 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  br label %52

52:                                               ; preds = %43, %33
  %53 = load i8*, i8** @paxb_v2_ib_map, align 8
  %54 = call i8* @ARRAY_SIZE(i8* %53)
  %55 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %56 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load i8*, i8** @paxb_v2_ib_map, align 8
  %59 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %60 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %59, i32 0, i32 7
  store i8* %58, i8** %60, align 8
  %61 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %62 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %61, i32 0, i32 3
  store i32 1, i32* %62, align 4
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* @CFG_RETRY_STATUS, align 4
  %65 = call i32 @dev_warn(%struct.device* %63, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %89

66:                                               ; preds = %1
  %67 = load i64*, i64** @iproc_pcie_reg_paxc, align 8
  store i64* %67, i64** %6, align 8
  %68 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %69 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %68, i32 0, i32 4
  store i32 1, i32* %69, align 8
  %70 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %71 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  %72 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %73 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %72, i32 0, i32 5
  store i32 1, i32* %73, align 4
  br label %89

74:                                               ; preds = %1
  %75 = load i64*, i64** @iproc_pcie_reg_paxc_v2, align 8
  store i64* %75, i64** %6, align 8
  %76 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %77 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %76, i32 0, i32 4
  store i32 1, i32* %77, align 8
  %78 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %79 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  %80 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %81 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %80, i32 0, i32 5
  store i32 1, i32* %81, align 4
  %82 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %83 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %82, i32 0, i32 3
  store i32 1, i32* %83, align 4
  br label %89

84:                                               ; preds = %1
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %151

89:                                               ; preds = %74, %66, %52, %32, %13
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = load i32, i32* @IPROC_PCIE_MAX_NUM_REG, align 4
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i64* @devm_kcalloc(%struct.device* %90, i32 %91, i32 8, i32 %92)
  %94 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %95 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %94, i32 0, i32 6
  store i64* %93, i64** %95, align 8
  %96 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %97 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %96, i32 0, i32 6
  %98 = load i64*, i64** %97, align 8
  %99 = icmp ne i64* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %89
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %151

103:                                              ; preds = %89
  %104 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %105 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 128
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i64, i64* @IPROC_PCIE_REG_INVALID, align 8
  br label %114

110:                                              ; preds = %103
  %111 = load i64*, i64** %6, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  br label %114

114:                                              ; preds = %110, %108
  %115 = phi i64 [ %109, %108 ], [ %113, %110 ]
  %116 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %117 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %116, i32 0, i32 6
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  store i64 %115, i64* %119, align 8
  store i32 1, i32* %5, align 4
  br label %120

120:                                              ; preds = %147, %114
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @IPROC_PCIE_MAX_NUM_REG, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %150

124:                                              ; preds = %120
  %125 = load i64*, i64** %6, align 8
  %126 = load i32, i32* %5, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load i64*, i64** %6, align 8
  %133 = load i32, i32* %5, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  br label %139

137:                                              ; preds = %124
  %138 = load i64, i64* @IPROC_PCIE_REG_INVALID, align 8
  br label %139

139:                                              ; preds = %137, %131
  %140 = phi i64 [ %136, %131 ], [ %138, %137 ]
  %141 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %142 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %141, i32 0, i32 6
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  store i64 %140, i64* %146, align 8
  br label %147

147:                                              ; preds = %139
  %148 = load i32, i32* %5, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %120

150:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %100, %84
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
