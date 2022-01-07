; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_procconf.c_process_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_procconf.c_process_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf_writedata = type { i8*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@LOG_CNF_LINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"conf line: %s\00", align 1
@LOG_CNF_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"conf channel invalid  %d\00", align 1
@ERR_INV_CHAN = common dso_local global i32 0, align 4
@LOG_CNF_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"conf chan=%d %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.conf_writedata*)* @process_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_line(%struct.conf_writedata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.conf_writedata*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.conf_writedata* %0, %struct.conf_writedata** %3, align 8
  %6 = load %struct.conf_writedata*, %struct.conf_writedata** %3, align 8
  %7 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load %struct.conf_writedata*, %struct.conf_writedata** %3, align 8
  %10 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LOG_CNF_LINE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.conf_writedata*, %struct.conf_writedata** %3, align 8
  %19 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (%struct.TYPE_3__*, i8*, ...) @hysdn_addlog(%struct.TYPE_3__* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 45
  br i1 %27, label %28, label %85

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  %33 = load i8, i8* %31, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 99
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %121

37:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sle i32 %41, 57
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp sge i32 %46, 48
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i1 [ false, %38 ], [ %47, %43 ]
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = load i32, i32* %5, align 4
  %52 = mul nsw i32 %51, 10
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  %55 = load i8, i8* %53, align 1
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %52, %56
  %58 = sub nsw i32 %57, 48
  store i32 %58, i32* %5, align 4
  br label %38

59:                                               ; preds = %48
  %60 = load i32, i32* %5, align 4
  %61 = icmp sgt i32 %60, 65535
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = load %struct.conf_writedata*, %struct.conf_writedata** %3, align 8
  %64 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @LOG_CNF_MISC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load %struct.conf_writedata*, %struct.conf_writedata** %3, align 8
  %73 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 (%struct.TYPE_3__*, i8*, ...) @hysdn_addlog(%struct.TYPE_3__* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %62
  %78 = load i32, i32* @ERR_INV_CHAN, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %121

80:                                               ; preds = %59
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, 65535
  %83 = load %struct.conf_writedata*, %struct.conf_writedata** %3, align 8
  %84 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %2, align 4
  br label %121

85:                                               ; preds = %23
  %86 = load i8*, i8** %4, align 8
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %88, 42
  br i1 %89, label %90, label %120

90:                                               ; preds = %85
  %91 = load %struct.conf_writedata*, %struct.conf_writedata** %3, align 8
  %92 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %91, i32 0, i32 2
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @LOG_CNF_DATA, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %90
  %100 = load %struct.conf_writedata*, %struct.conf_writedata** %3, align 8
  %101 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %100, i32 0, i32 2
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load %struct.conf_writedata*, %struct.conf_writedata** %3, align 8
  %104 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = call i32 (%struct.TYPE_3__*, i8*, ...) @hysdn_addlog(%struct.TYPE_3__* %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %105, i8* %106)
  br label %108

108:                                              ; preds = %99, %90
  %109 = load %struct.conf_writedata*, %struct.conf_writedata** %3, align 8
  %110 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %109, i32 0, i32 2
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load %struct.conf_writedata*, %struct.conf_writedata** %3, align 8
  %113 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load %struct.conf_writedata*, %struct.conf_writedata** %3, align 8
  %117 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @hysdn_tx_cfgline(%struct.TYPE_3__* %111, i8* %115, i32 %118)
  store i32 %119, i32* %2, align 4
  br label %121

120:                                              ; preds = %85
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %108, %80, %77, %36
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @hysdn_addlog(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local i32 @hysdn_tx_cfgline(%struct.TYPE_3__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
