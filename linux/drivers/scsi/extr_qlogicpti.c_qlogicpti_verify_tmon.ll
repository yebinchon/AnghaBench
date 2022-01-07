; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qlogicpti_verify_tmon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qlogicpti_verify_tmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlogicpti = type { i32, i32, i64, i32 }

@SREG_FUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"qlogicpti%d: Fuse returned to normal state.\0A\00", align 1
@SREG_TPOWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"qlogicpti%d: termpwr back to normal state.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"qlogicpti%d: Fuse is open!\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"qlogicpti%d: termpwr failure\0A\00", align 1
@SREG_DSENSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [81 x i8] c"qlogicpti%d: You have a single ended device on a differential bus!  Please fix!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlogicpti*)* @qlogicpti_verify_tmon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlogicpti_verify_tmon(%struct.qlogicpti* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlogicpti*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qlogicpti* %0, %struct.qlogicpti** %3, align 8
  %6 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %7 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @sbus_readb(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 240
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SREG_FUSE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %1
  %17 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %18 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SREG_FUSE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %25 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %16, %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SREG_TPOWER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %35 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SREG_TPOWER, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %42 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %33, %28
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %48 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %98

51:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SREG_FUSE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  %59 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %60 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %56, %51
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SREG_TPOWER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %72 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %68, %63
  %76 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %77 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @SREG_DSENSE, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @SREG_DSENSE, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  %89 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %90 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %86, %80, %75
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %96 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %99

98:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %93
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @sbus_readb(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
