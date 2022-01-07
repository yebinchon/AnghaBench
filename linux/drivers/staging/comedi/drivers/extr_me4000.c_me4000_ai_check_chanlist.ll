; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_ai_check_chanlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_ai_check_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, i32 }
%struct.comedi_cmd = type { i32, i32* }

@.str = private unnamed_addr constant [35 x i8] c"Mode is not equal for all entries\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AREF_DIFF = common dso_local global i32 0, align 4
@SDF_DIFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Differential inputs are not available\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Channel number to high\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Bipolar is not selected in differential mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @me4000_ai_check_chanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @me4000_ai_check_chanlist(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CR_AREF(i32 %17)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %106, %3
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %109

25:                                               ; preds = %19
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CR_CHAN(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @CR_RANGE(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CR_AREF(i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %25
  %54 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %110

60:                                               ; preds = %25
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @AREF_DIFF, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %105

64:                                               ; preds = %60
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %66 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SDF_DIFF, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %110

78:                                               ; preds = %64
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %81 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %82, 2
  %84 = icmp uge i32 %79, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_dbg(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %110

92:                                               ; preds = %78
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @comedi_range_is_bipolar(%struct.comedi_subdevice* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %92
  %98 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %99 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_dbg(i32 %100, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %110

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %60
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %19

109:                                              ; preds = %19
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %97, %85, %71, %53
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
