; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_issue_copperhead_memio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_issue_copperhead_memio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i32, i32, i32*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ips_issue_copperhead_memio\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"(%s%d) ips_issue: cmd 0x%X id %d (%d %d %d)\00", align 1
@ips_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"(%s%d) ips_issue: logical cmd id %d\00", align 1
@IPS_REG_CCCR = common dso_local global i64 0, align 8
@IPS_BIT_SEM = common dso_local global i32 0, align 4
@IPS_SEM_TIMEOUT = common dso_local global i32 0, align 4
@IPS_BIT_START_STOP = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"ips_issue val [0x%x].\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"ips_issue semaphore chk timeout.\0A\00", align 1
@IPS_FAILURE = common dso_local global i32 0, align 4
@IPS_REG_CCSAR = common dso_local global i64 0, align 8
@IPS_BIT_START_CMD = common dso_local global i32 0, align 4
@IPS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @ips_issue_copperhead_memio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_issue_copperhead_memio(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 1)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load i32, i32* @ips_name, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, i32, i32, i32, ...) @DEBUG_VAR(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %17, i32 %22, i32 %27, i32 %30, i32 %33, i32 %36)
  br label %49

38:                                               ; preds = %2
  %39 = load i32, i32* @ips_name, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, i32, i32, i32, ...) @DEBUG_VAR(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %38, %13
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %85, %49
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IPS_REG_CCCR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl(i64 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @IPS_BIT_SEM, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %50
  %61 = call i32 @udelay(i32 1000)
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @IPS_SEM_TIMEOUT, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @IPS_BIT_START_STOP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %86

72:                                               ; preds = %66
  %73 = load i32, i32* @KERN_WARNING, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i32, i32, i8*, ...) @IPS_PRINTK(i32 %73, i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @KERN_WARNING, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i32, i8*, ...) @IPS_PRINTK(i32 %79, i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @IPS_FAILURE, align 4
  store i32 %84, i32* %3, align 4
  br label %104

85:                                               ; preds = %60
  br label %50

86:                                               ; preds = %71, %50
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IPS_REG_CCSAR, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  %96 = load i32, i32* @IPS_BIT_START_CMD, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @IPS_REG_CCCR, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel(i32 %96, i64 %101)
  %103 = load i32, i32* @IPS_SUCCESS, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %86, %72
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @DEBUG_VAR(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @IPS_PRINTK(i32, i32, i8*, ...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
