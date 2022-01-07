; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_intr_morpheus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_intr_morpheus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_15__, %struct.TYPE_17__, i32 }
%struct.TYPE_15__ = type { {}*, {}* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"ips_intr_morpheus\00", align 1
@TRUE = common dso_local global i64 0, align 8
@IPS_MAX_CMDS = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Spurious interrupt; no ccb.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ips_intr_morpheus(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %8 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 2)
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = icmp ne %struct.TYPE_19__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

12:                                               ; preds = %1
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %87

18:                                               ; preds = %12
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.TYPE_19__*)**
  %23 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %22, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = call i32 %23(%struct.TYPE_19__* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %87

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %73, %67, %29
  %31 = load i64, i64* @TRUE, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %86

33:                                               ; preds = %30
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 2
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %4, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.TYPE_19__*)**
  %40 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %39, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %42 = call i32 %40(%struct.TYPE_19__* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  br label %86

46:                                               ; preds = %33
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = bitcast {}** %49 to i32 (%struct.TYPE_19__*)**
  %51 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %50, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %53 = call i32 %51(%struct.TYPE_19__* %52)
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %86

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IPS_MAX_CMDS, align 4
  %65 = sub nsw i32 %64, 1
  %66 = icmp sgt i32 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @KERN_WARNING, align 4
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @IPS_PRINTK(i32 %68, i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %30

73:                                               ; preds = %60
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = call i32 @ips_chkstatus(%struct.TYPE_19__* %74, %struct.TYPE_20__* %6)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %79, %struct.TYPE_18__** %5, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)** %81, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %85 = call i32 %82(%struct.TYPE_19__* %83, %struct.TYPE_18__* %84)
  br label %30

86:                                               ; preds = %59, %45, %30
  store i32 1, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %28, %17, %11
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @IPS_PRINTK(i32, i32, i8*) #1

declare dso_local i32 @ips_chkstatus(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
