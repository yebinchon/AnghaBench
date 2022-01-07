; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c___iscsi_check_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c___iscsi_check_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_param = type { i8* }
%struct.iscsi_param_list = type { i32 }

@KEY_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Length of key name \22%s\22 exceeds %d.\0A\00", align 1
@SENDER_INITIATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Key \22%s\22 may not be sent to %s, protocol error.\0A\00", align 1
@SENDER_RECEIVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"initiator\00", align 1
@SENDER_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_param* (i8*, i32, %struct.iscsi_param_list*)* @__iscsi_check_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_param* @__iscsi_check_key(i8* %0, i32 %1, %struct.iscsi_param_list* %2) #0 {
  %4 = alloca %struct.iscsi_param*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_param_list*, align 8
  %8 = alloca %struct.iscsi_param*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.iscsi_param_list* %2, %struct.iscsi_param_list** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = load i64, i64* @KEY_MAXLEN, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* @KEY_MAXLEN, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %16)
  store %struct.iscsi_param* null, %struct.iscsi_param** %4, align 8
  br label %67

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %7, align 8
  %21 = call %struct.iscsi_param* @iscsi_find_param_from_key(i8* %19, %struct.iscsi_param_list* %20)
  store %struct.iscsi_param* %21, %struct.iscsi_param** %8, align 8
  %22 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %23 = icmp ne %struct.iscsi_param* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store %struct.iscsi_param* null, %struct.iscsi_param** %4, align 8
  br label %67

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SENDER_INITIATOR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %32 = call i32 @IS_SENDER_INITIATOR(%struct.iscsi_param* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %36 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SENDER_RECEIVER, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %37, i8* %43)
  store %struct.iscsi_param* null, %struct.iscsi_param** %4, align 8
  br label %67

45:                                               ; preds = %30, %25
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @SENDER_TARGET, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %52 = call i32 @IS_SENDER_TARGET(%struct.iscsi_param* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  %56 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @SENDER_RECEIVER, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %63)
  store %struct.iscsi_param* null, %struct.iscsi_param** %4, align 8
  br label %67

65:                                               ; preds = %50, %45
  %66 = load %struct.iscsi_param*, %struct.iscsi_param** %8, align 8
  store %struct.iscsi_param* %66, %struct.iscsi_param** %4, align 8
  br label %67

67:                                               ; preds = %65, %54, %34, %24, %13
  %68 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  ret %struct.iscsi_param* %68
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*, i8*) #1

declare dso_local %struct.iscsi_param* @iscsi_find_param_from_key(i8*, %struct.iscsi_param_list*) #1

declare dso_local i32 @IS_SENDER_INITIATOR(%struct.iscsi_param*) #1

declare dso_local i32 @IS_SENDER_TARGET(%struct.iscsi_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
