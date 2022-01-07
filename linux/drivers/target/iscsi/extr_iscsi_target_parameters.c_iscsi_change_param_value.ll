; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_change_param_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_change_param_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_param_list = type { i32 }
%struct.iscsi_param = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_change_param_value(i8* %0, %struct.iscsi_param_list* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iscsi_param_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iscsi_param*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.iscsi_param_list* %1, %struct.iscsi_param_list** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @iscsi_extract_key_value(i8* %12, i8** %8, i8** %9)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %56

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %6, align 8
  %23 = call %struct.iscsi_param* @__iscsi_check_key(i8* %20, i32 %21, %struct.iscsi_param_list* %22)
  store %struct.iscsi_param* %23, %struct.iscsi_param** %10, align 8
  %24 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  %25 = icmp ne %struct.iscsi_param* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %56

27:                                               ; preds = %19
  br label %49

28:                                               ; preds = %16
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %6, align 8
  %32 = call %struct.iscsi_param* @iscsi_check_key(i8* %29, i32 0, i32 %30, %struct.iscsi_param_list* %31)
  store %struct.iscsi_param* %32, %struct.iscsi_param** %10, align 8
  %33 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  %34 = icmp ne %struct.iscsi_param* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %56

36:                                               ; preds = %28
  %37 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  %38 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @iscsi_check_value(%struct.iscsi_param* %39, i8* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  %45 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  store i32 -1, i32* %4, align 4
  br label %56

46:                                               ; preds = %36
  %47 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  %48 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %27
  %50 = load %struct.iscsi_param*, %struct.iscsi_param** %10, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i64 @iscsi_update_param_value(%struct.iscsi_param* %50, i8* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %56

55:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %54, %43, %35, %26, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @iscsi_extract_key_value(i8*, i8**, i8**) #1

declare dso_local %struct.iscsi_param* @__iscsi_check_key(i8*, i32, %struct.iscsi_param_list*) #1

declare dso_local %struct.iscsi_param* @iscsi_check_key(i8*, i32, i32, %struct.iscsi_param_list*) #1

declare dso_local i64 @iscsi_check_value(%struct.iscsi_param*, i8*) #1

declare dso_local i64 @iscsi_update_param_value(%struct.iscsi_param*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
