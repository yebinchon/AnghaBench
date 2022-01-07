; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_check_chanlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_check_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pci9118_private* }
%struct.pci9118_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32* }

@.str = private unnamed_addr constant [54 x i8] c"Differential and single ended inputs can't be mixed!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Bipolar and unipolar ranges can't be mixed!\0A\00", align 1
@AREF_DIFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"AREF_DIFF is only available for the first 8 channels!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci9118_ai_check_chanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9118_ai_check_chanlist(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.pci9118_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.pci9118_private*, %struct.pci9118_private** %16, align 8
  store %struct.pci9118_private* %17, %struct.pci9118_private** %8, align 8
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CR_RANGE(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CR_AREF(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %120

35:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  br label %36

36:                                               ; preds = %116, %35
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %119

42:                                               ; preds = %36
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CR_CHAN(i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @CR_RANGE(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @CR_AREF(i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %42
  %71 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %120

77:                                               ; preds = %42
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i64 @comedi_range_is_bipolar(%struct.comedi_subdevice* %78, i32 %79)
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i64 @comedi_range_is_bipolar(%struct.comedi_subdevice* %81, i32 %82)
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %120

92:                                               ; preds = %77
  %93 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %94 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %115, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @AREF_DIFF, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %104 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sdiv i32 %105, 2
  %107 = icmp uge i32 %102, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @dev_err(i32 %111, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %120

115:                                              ; preds = %101, %97, %92
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %36

119:                                              ; preds = %36
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %108, %85, %70, %34
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
