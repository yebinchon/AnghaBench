; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_range.c_comedi_check_chanlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_range.c_comedi_check_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { i32, %struct.TYPE_4__**, %struct.TYPE_3__*, %struct.comedi_device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"bad chanlist[%d]=0x%08x chan=%d range length=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_check_chanlist(%struct.comedi_subdevice* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.comedi_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 3
  %15 = load %struct.comedi_device*, %struct.comedi_device** %14, align 8
  store %struct.comedi_device* %15, %struct.comedi_device** %8, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %84, %3
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %87

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @CR_CHAN(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %34 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  br label %61

38:                                               ; preds = %20
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %40, align 8
  %42 = icmp ne %struct.TYPE_4__** %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %51 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %52, i64 %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  br label %60

59:                                               ; preds = %43, %38
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60, %32
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @CR_RANGE(i32 %68)
  %70 = load i32, i32* %11, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %67, %61
  %73 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @dev_warn(i32 %75, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %88

83:                                               ; preds = %67
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %16

87:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %72
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
