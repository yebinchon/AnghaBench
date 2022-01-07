; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_check_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_check_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_param = type { i8*, i32 }
%struct.iscsi_param_list = type { i32 }

@KEY_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Length of key name \22%s\22 exceeds %d.\0A\00", align 1
@SENDER_INITIATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Key \22%s\22 may not be sent to %s, protocol error.\0A\00", align 1
@SENDER_RECEIVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"initiator\00", align 1
@SENDER_TARGET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Key \22%s\22 received twice, protocol error.\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Key \22%s\22 may not be negotiated during \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Security phase.\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Operational phase.\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Unknown phase.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_param* (i8*, i32, i32, %struct.iscsi_param_list*)* @iscsi_check_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_param* @iscsi_check_key(i8* %0, i32 %1, i32 %2, %struct.iscsi_param_list* %3) #0 {
  %5 = alloca %struct.iscsi_param*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iscsi_param_list*, align 8
  %10 = alloca %struct.iscsi_param*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.iscsi_param_list* %3, %struct.iscsi_param_list** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = load i64, i64* @KEY_MAXLEN, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* @KEY_MAXLEN, align 8
  %18 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %16, i64 %17)
  store %struct.iscsi_param* null, %struct.iscsi_param** %5, align 8
  br label %100

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %9, align 8
  %22 = call %struct.iscsi_param* @iscsi_find_param_from_key(i8* %20, %struct.iscsi_param_list* %21)
  store %struct.iscsi_param* %22, %struct.iscsi_param** %10, align 8
  %23 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  %24 = icmp ne %struct.iscsi_param* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store %struct.iscsi_param* null, %struct.iscsi_param** %5, align 8
  br label %100

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SENDER_INITIATOR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  %33 = call i32 @IS_SENDER_INITIATOR(%struct.iscsi_param* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  %37 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SENDER_RECEIVER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %45 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %44)
  store %struct.iscsi_param* null, %struct.iscsi_param** %5, align 8
  br label %100

46:                                               ; preds = %31, %26
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @SENDER_TARGET, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  %53 = call i32 @IS_SENDER_TARGET(%struct.iscsi_param* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  %57 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @SENDER_RECEIVER, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %65 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %64)
  store %struct.iscsi_param* null, %struct.iscsi_param** %5, align 8
  br label %100

66:                                               ; preds = %51, %46
  %67 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  %68 = call i64 @IS_PSTATE_ACCEPTOR(%struct.iscsi_param* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  store %struct.iscsi_param* null, %struct.iscsi_param** %5, align 8
  br label %100

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  store %struct.iscsi_param* %77, %struct.iscsi_param** %5, align 8
  br label %100

78:                                               ; preds = %73
  %79 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  %80 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %78
  %86 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  %87 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* %7, align 4
  switch i32 %90, label %95 [
    i32 128, label %91
    i32 129, label %93
  ]

91:                                               ; preds = %85
  %92 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %97

93:                                               ; preds = %85
  %94 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %97

95:                                               ; preds = %85
  %96 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %93, %91
  store %struct.iscsi_param* null, %struct.iscsi_param** %5, align 8
  br label %100

98:                                               ; preds = %78
  %99 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  store %struct.iscsi_param* %99, %struct.iscsi_param** %5, align 8
  br label %100

100:                                              ; preds = %98, %97, %76, %70, %55, %35, %25, %15
  %101 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  ret %struct.iscsi_param* %101
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*, ...) #1

declare dso_local %struct.iscsi_param* @iscsi_find_param_from_key(i8*, %struct.iscsi_param_list*) #1

declare dso_local i32 @IS_SENDER_INITIATOR(%struct.iscsi_param*) #1

declare dso_local i32 @IS_SENDER_TARGET(%struct.iscsi_param*) #1

declare dso_local i64 @IS_PSTATE_ACCEPTOR(%struct.iscsi_param*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
