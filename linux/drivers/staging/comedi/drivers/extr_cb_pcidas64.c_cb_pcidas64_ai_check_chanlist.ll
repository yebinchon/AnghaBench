; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_cb_pcidas64_ai_check_chanlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_cb_pcidas64_ai_check_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pcidas64_board* }
%struct.pcidas64_board = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32* }

@.str = private unnamed_addr constant [61 x i8] c"all elements in chanlist must use the same analog reference\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LAYOUT_4020 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"chanlist must use consecutive channels\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"chanlist cannot be 3 channels long, use 1, 2, or 4 channels\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @cb_pcidas64_ai_check_chanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas64_ai_check_chanlist(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.pcidas64_board*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load %struct.pcidas64_board*, %struct.pcidas64_board** %15, align 8
  store %struct.pcidas64_board* %16, %struct.pcidas64_board** %8, align 8
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_AREF(i32 %21)
  store i32 %22, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %23

23:                                               ; preds = %49, %3
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %26 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %23
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @CR_AREF(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %110

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %23

52:                                               ; preds = %23
  %53 = load %struct.pcidas64_board*, %struct.pcidas64_board** %8, align 8
  %54 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @LAYOUT_4020, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %109

58:                                               ; preds = %52
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @CR_CHAN(i32 %63)
  store i32 %64, i32* %12, align 4
  store i32 1, i32* %10, align 4
  br label %65

65:                                               ; preds = %93, %58
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %65
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @CR_CHAN(i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add i32 %81, %82
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %71
  %86 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_dbg(i32 %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %110

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %65

96:                                               ; preds = %65
  %97 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %98 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 3
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %103 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_dbg(i32 %104, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %110

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108, %52
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %101, %85, %41
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @CR_CHAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
