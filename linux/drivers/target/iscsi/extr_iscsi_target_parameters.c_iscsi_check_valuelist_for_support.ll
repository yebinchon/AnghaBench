; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_check_valuelist_for_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_check_valuelist_for_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_param = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.iscsi_param*, i8*)* @iscsi_check_valuelist_for_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @iscsi_check_valuelist_for_support(%struct.iscsi_param* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iscsi_param*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.iscsi_param* %0, %struct.iscsi_param** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %75, %2
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %81

18:                                               ; preds = %14
  %19 = load i8*, i8** %9, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 44)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  store i8 0, i8* %24, align 1
  br label %25

25:                                               ; preds = %23, %18
  %26 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %8, align 8
  br label %29

29:                                               ; preds = %64, %25
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  store i8 44, i8* %36, align 1
  br label %37

37:                                               ; preds = %35, %32
  store i8* null, i8** %3, align 8
  br label %81

38:                                               ; preds = %29
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 44)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strcmp(i8* %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i8*, i8** %7, align 8
  store i8 44, i8* %54, align 1
  br label %55

55:                                               ; preds = %53, %50
  br label %79

56:                                               ; preds = %45
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  store i8 44, i8* %60, align 1
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i8*, i8** %7, align 8
  store i8* %63, i8** %8, align 8
  br label %64

64:                                               ; preds = %62
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %29, label %67

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %6, align 8
  store i8 44, i8* %71, align 1
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i8*, i8** %6, align 8
  store i8* %74, i8** %9, align 8
  br label %75

75:                                               ; preds = %73
  %76 = load i8*, i8** %9, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %14, label %78

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %78, %55
  %80 = load i8*, i8** %9, align 8
  store i8* %80, i8** %3, align 8
  br label %81

81:                                               ; preds = %79, %37, %17
  %82 = load i8*, i8** %3, align 8
  ret i8* %82
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
