; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_check_string_or_list_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_check_string_or_list_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_param = type { i32 }

@KRB5 = common dso_local global i32 0, align 4
@SPKM1 = common dso_local global i32 0, align 4
@SPKM2 = common dso_local global i32 0, align 4
@SRP = common dso_local global i32 0, align 4
@CHAP = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Illegal value for \22%s\22, must be \22%s\22, \22%s\22, \22%s\22, \22%s\22, \22%s\22 or \22%s\22.\0A\00", align 1
@CRC32C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Illegal value for \22%s\22, must be \22%s\22 or \22%s\22.\0A\00", align 1
@DISCOVERY = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_param*, i8*)* @iscsi_check_string_or_list_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_check_string_or_list_value(%struct.iscsi_param* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_param*, align 8
  %5 = alloca i8*, align 8
  store %struct.iscsi_param* %0, %struct.iscsi_param** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %7 = call i64 @IS_PSTATE_PROPOSER(%struct.iscsi_param* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

10:                                               ; preds = %2
  %11 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %12 = call i64 @IS_TYPERANGE_AUTH_PARAM(%struct.iscsi_param* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @KRB5, align 4
  %17 = call i64 @strcmp(i8* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @SPKM1, align 4
  %22 = call i64 @strcmp(i8* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @SPKM2, align 4
  %27 = call i64 @strcmp(i8* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @SRP, align 4
  %32 = call i64 @strcmp(i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @CHAP, align 4
  %37 = call i64 @strcmp(i8* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @NONE, align 4
  %42 = call i64 @strcmp(i8* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %46 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @KRB5, align 4
  %49 = load i32, i32* @SPKM1, align 4
  %50 = load i32, i32* @SPKM2, align 4
  %51 = load i32, i32* @SRP, align 4
  %52 = load i32, i32* @CHAP, align 4
  %53 = load i32, i32* @NONE, align 4
  %54 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  store i32 -1, i32* %3, align 4
  br label %101

55:                                               ; preds = %39, %34, %29, %24, %19, %14
  br label %56

56:                                               ; preds = %55, %10
  %57 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %58 = call i64 @IS_TYPERANGE_DIGEST_PARAM(%struct.iscsi_param* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* @CRC32C, align 4
  %63 = call i64 @strcmp(i8* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* @NONE, align 4
  %68 = call i64 @strcmp(i8* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %72 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CRC32C, align 4
  %75 = load i32, i32* @NONE, align 4
  %76 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74, i32 %75)
  store i32 -1, i32* %3, align 4
  br label %101

77:                                               ; preds = %65, %60
  br label %78

78:                                               ; preds = %77, %56
  %79 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %80 = call i64 @IS_TYPERANGE_SESSIONTYPE(%struct.iscsi_param* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* @DISCOVERY, align 4
  %85 = call i64 @strcmp(i8* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* @NORMAL, align 4
  %90 = call i64 @strcmp(i8* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %94 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @DISCOVERY, align 4
  %97 = load i32, i32* @NORMAL, align 4
  %98 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96, i32 %97)
  store i32 -1, i32* %3, align 4
  br label %101

99:                                               ; preds = %87, %82
  br label %100

100:                                              ; preds = %99, %78
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %92, %70, %44, %9
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @IS_PSTATE_PROPOSER(%struct.iscsi_param*) #1

declare dso_local i64 @IS_TYPERANGE_AUTH_PARAM(%struct.iscsi_param*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, ...) #1

declare dso_local i64 @IS_TYPERANGE_DIGEST_PARAM(%struct.iscsi_param*) #1

declare dso_local i64 @IS_TYPERANGE_SESSIONTYPE(%struct.iscsi_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
