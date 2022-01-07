; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_ai_check_chanlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_ai_check_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32* }

@.str = private unnamed_addr constant [74 x i8] c"entries in chanlist must be consecutive channels,counting upwards from 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"entries in chanlist must all have the same gain\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"entries in chanlist must all have the same reference\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci9111_ai_check_chanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9111_ai_check_chanlist(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_RANGE(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CR_AREF(i32 %24)
  store i32 %25, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %26

26:                                               ; preds = %90, %3
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %93

32:                                               ; preds = %26
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CR_CHAN(i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @CR_RANGE(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @CR_AREF(i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %32
  %61 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %94

67:                                               ; preds = %32
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_dbg(i32 %74, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %94

78:                                               ; preds = %67
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %84 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_dbg(i32 %85, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %94

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %26

93:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %82, %71, %60
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
