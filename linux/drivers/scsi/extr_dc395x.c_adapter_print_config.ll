; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_print_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_print_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }

@TRM_S1040_GEN_STATUS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%sConnectors: \00", align 1
@WIDESCSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"(Wide) \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CON5068 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ext%s \00", align 1
@EXT68HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"68\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@CON68 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"int68%s \00", align 1
@INT68HIGH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"(50)\00", align 1
@CON50 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"int50 \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c" Oops! (All 3?) \00", align 1
@TRM_S1040_GEN_CONTROL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c" Termination: \00", align 1
@DIS_TERM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"Disabled\0A\00", align 1
@AUTOTERM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"Auto \00", align 1
@LOW8TERM = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"Low \00", align 1
@UP8TERM = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"High \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*)* @adapter_print_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_print_config(%struct.AdapterCtlBlk* %0) #0 {
  %2 = alloca %struct.AdapterCtlBlk*, align 8
  %3 = alloca i32, align 4
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %2, align 8
  %4 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %5 = load i32, i32* @TRM_S1040_GEN_STATUS, align 4
  %6 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @KERN_INFO, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @WIDESCSI, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %14 = call i32 @dprintkl(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @CON5068, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @EXT68HIGH, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %19, %1
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @CON68, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @INT68HIGH, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %33, %28
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @CON50, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @CON5068, align 4
  %52 = load i32, i32* @CON50, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @CON68, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %50, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %49
  %61 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %62 = load i32, i32* @TRM_S1040_GEN_CONTROL, align 4
  %63 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %61, i32 %62)
  store i32 %63, i32* %3, align 4
  %64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @DIS_TERM, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %94

71:                                               ; preds = %60
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @AUTOTERM, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %71
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @LOW8TERM, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %78
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @UP8TERM, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %85
  %93 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %69
  ret void
}

declare dso_local i32 @DC395x_read8(%struct.AdapterCtlBlk*, i32) #1

declare dso_local i32 @dprintkl(i32, i8*, i8*) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
