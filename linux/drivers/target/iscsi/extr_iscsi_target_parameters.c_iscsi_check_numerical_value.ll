; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_check_numerical_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_check_numerical_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_param = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Illegal value for \22%s\22, must be between 0 and 2.\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Illegal value for \22%s\22, must be between 0 and 3600.\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Illegal value for \22%s\22, must be between 0 and 32767.\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Illegal value for \22%s\22, must be between 0 and 65535.\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Illegal value for \22%s\22, must be between 1 and 65535.\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Illegal value for \22%s\22, must be between 2 and 3600.\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Illegal value for \22%s\22, must be between 512 and 16777215.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_param*, i8*)* @iscsi_check_numerical_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_check_numerical_value(%struct.iscsi_param* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_param*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_param* %0, %struct.iscsi_param** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @simple_strtoul(i8* %8, i8** %6, i32 0)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %11 = call i64 @IS_TYPERANGE_0_TO_2(%struct.iscsi_param* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %16, %13
  %20 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %21 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %3, align 4
  br label %122

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %122

25:                                               ; preds = %2
  %26 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %27 = call i64 @IS_TYPERANGE_0_TO_3600(%struct.iscsi_param* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 3600
  br i1 %34, label %35, label %40

35:                                               ; preds = %32, %29
  %36 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %37 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %3, align 4
  br label %122

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %122

41:                                               ; preds = %25
  %42 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %43 = call i64 @IS_TYPERANGE_0_TO_32767(%struct.iscsi_param* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %49, 32767
  br i1 %50, label %51, label %56

51:                                               ; preds = %48, %45
  %52 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  store i32 -1, i32* %3, align 4
  br label %122

56:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %122

57:                                               ; preds = %41
  %58 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %59 = call i64 @IS_TYPERANGE_0_TO_65535(%struct.iscsi_param* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 65535
  br i1 %66, label %67, label %72

67:                                               ; preds = %64, %61
  %68 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %69 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  store i32 -1, i32* %3, align 4
  br label %122

72:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %122

73:                                               ; preds = %57
  %74 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %75 = call i64 @IS_TYPERANGE_1_TO_65535(%struct.iscsi_param* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %81, 65535
  br i1 %82, label %83, label %88

83:                                               ; preds = %80, %77
  %84 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %85 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  store i32 -1, i32* %3, align 4
  br label %122

88:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %122

89:                                               ; preds = %73
  %90 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %91 = call i64 @IS_TYPERANGE_2_TO_3600(%struct.iscsi_param* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 2
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = icmp sgt i32 %97, 3600
  br i1 %98, label %99, label %104

99:                                               ; preds = %96, %93
  %100 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %101 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  store i32 -1, i32* %3, align 4
  br label %122

104:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %122

105:                                              ; preds = %89
  %106 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %107 = call i64 @IS_TYPERANGE_512_TO_16777215(%struct.iscsi_param* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 512
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = icmp sgt i32 %113, 16777215
  br i1 %114, label %115, label %120

115:                                              ; preds = %112, %109
  %116 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %117 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  store i32 -1, i32* %3, align 4
  br label %122

120:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %122

121:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %120, %115, %104, %99, %88, %83, %72, %67, %56, %51, %40, %35, %24, %19
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @IS_TYPERANGE_0_TO_2(%struct.iscsi_param*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @IS_TYPERANGE_0_TO_3600(%struct.iscsi_param*) #1

declare dso_local i64 @IS_TYPERANGE_0_TO_32767(%struct.iscsi_param*) #1

declare dso_local i64 @IS_TYPERANGE_0_TO_65535(%struct.iscsi_param*) #1

declare dso_local i64 @IS_TYPERANGE_1_TO_65535(%struct.iscsi_param*) #1

declare dso_local i64 @IS_TYPERANGE_2_TO_3600(%struct.iscsi_param*) #1

declare dso_local i64 @IS_TYPERANGE_512_TO_16777215(%struct.iscsi_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
