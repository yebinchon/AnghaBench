; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_add_notunderstood_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_add_notunderstood_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_param_list = type { i32 }
%struct.iscsi_extra_response = type { i32, i32, i32 }

@VALUE_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Value for notunderstood key \22%s\22 exceeds %d, protocol error.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Unable to allocate memory for struct iscsi_extra_response.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NOTUNDERSTOOD = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.iscsi_param_list*)* @iscsi_add_notunderstood_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_add_notunderstood_response(i8* %0, i8* %1, %struct.iscsi_param_list* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iscsi_param_list*, align 8
  %8 = alloca %struct.iscsi_extra_response*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.iscsi_param_list* %2, %struct.iscsi_param_list** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = load i64, i64* @VALUE_MAXLEN, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* @VALUE_MAXLEN, align 8
  %16 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %14, i64 %15)
  store i32 -1, i32* %4, align 4
  br label %45

17:                                               ; preds = %3
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.iscsi_extra_response* @kzalloc(i32 12, i32 %18)
  store %struct.iscsi_extra_response* %19, %struct.iscsi_extra_response** %8, align 8
  %20 = load %struct.iscsi_extra_response*, %struct.iscsi_extra_response** %8, align 8
  %21 = icmp ne %struct.iscsi_extra_response* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %45

26:                                               ; preds = %17
  %27 = load %struct.iscsi_extra_response*, %struct.iscsi_extra_response** %8, align 8
  %28 = getelementptr inbounds %struct.iscsi_extra_response, %struct.iscsi_extra_response* %27, i32 0, i32 0
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.iscsi_extra_response*, %struct.iscsi_extra_response** %8, align 8
  %31 = getelementptr inbounds %struct.iscsi_extra_response, %struct.iscsi_extra_response* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strlcpy(i32 %32, i8* %33, i32 4)
  %35 = load %struct.iscsi_extra_response*, %struct.iscsi_extra_response** %8, align 8
  %36 = getelementptr inbounds %struct.iscsi_extra_response, %struct.iscsi_extra_response* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** @NOTUNDERSTOOD, align 8
  %39 = call i32 @strlcpy(i32 %37, i8* %38, i32 4)
  %40 = load %struct.iscsi_extra_response*, %struct.iscsi_extra_response** %8, align 8
  %41 = getelementptr inbounds %struct.iscsi_extra_response, %struct.iscsi_extra_response* %40, i32 0, i32 0
  %42 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %7, align 8
  %43 = getelementptr inbounds %struct.iscsi_param_list, %struct.iscsi_param_list* %42, i32 0, i32 0
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %26, %22, %13
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.iscsi_extra_response* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
