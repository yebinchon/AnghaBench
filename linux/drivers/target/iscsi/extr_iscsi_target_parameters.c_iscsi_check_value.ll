; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_check_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_check_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_param = type { i8*, i8* }

@REJECT = common dso_local global i32 0, align 4
@IFMARKINT = common dso_local global i32 0, align 4
@OFMARKINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Received %s=%s\0A\00", align 1
@IRRELEVANT = common dso_local global i32 0, align 4
@NOTUNDERSTOOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Received illegal offer %s=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"Standard iSCSI key \22%s\22 cannot be answered with \22%s\22, protocol error.\0A\00", align 1
@.str.3 = private unnamed_addr constant [89 x i8] c"Detected value separator \22,\22, but key \22%s\22 does not allow a value list, protocol error.\0A\00", align 1
@VALUE_MAXLEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Value for key \22%s\22 exceeds %d, protocol error.\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Huh? 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_param*, i8*)* @iscsi_check_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_check_value(%struct.iscsi_param* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_param*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.iscsi_param* %0, %struct.iscsi_param** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @REJECT, align 4
  %9 = call i32 @strcmp(i8* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %2
  %12 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @IFMARKINT, align 4
  %16 = call i32 @strcmp(i8* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* @OFMARKINT, align 4
  %23 = call i32 @strcmp(i8* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18, %11
  %26 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %27 = call i32 @SET_PSTATE_REJECT(%struct.iscsi_param* %26)
  store i32 0, i32* %3, align 4
  br label %159

28:                                               ; preds = %18
  %29 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %30 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32)
  store i32 -1, i32* %3, align 4
  br label %159

34:                                               ; preds = %2
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @IRRELEVANT, align 4
  %37 = call i32 @strcmp(i8* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %41 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %43)
  %45 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %46 = call i32 @SET_PSTATE_IRRELEVANT(%struct.iscsi_param* %45)
  store i32 0, i32* %3, align 4
  br label %159

47:                                               ; preds = %34
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* @NOTUNDERSTOOD, align 4
  %50 = call i32 @strcmp(i8* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %47
  %53 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %54 = call i32 @IS_PSTATE_PROPOSER(%struct.iscsi_param* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %58 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %59, i8* %60)
  store i32 -1, i32* %3, align 4
  br label %159

62:                                               ; preds = %52
  %63 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %64 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* %65, i8* %66)
  store i32 -1, i32* %3, align 4
  br label %159

68:                                               ; preds = %47
  br label %69

69:                                               ; preds = %155, %68
  store i8* null, i8** %6, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 44)
  store i8* %71, i8** %6, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %76 = call i64 @IS_TYPE_VALUE_LIST(%struct.iscsi_param* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %80 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  store i32 -1, i32* %3, align 4
  br label %159

83:                                               ; preds = %74, %69
  %84 = load i8*, i8** %6, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i8*, i8** %6, align 8
  store i8 0, i8* %87, align 1
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = load i32, i32* @VALUE_MAXLEN, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %95 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* @VALUE_MAXLEN, align 4
  %98 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %96, i32 %97)
  store i32 -1, i32* %3, align 4
  br label %159

99:                                               ; preds = %88
  %100 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %101 = call i64 @IS_TYPE_BOOL_AND(%struct.iscsi_param* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %105 = call i64 @IS_TYPE_BOOL_OR(%struct.iscsi_param* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %103, %99
  %108 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = call i64 @iscsi_check_boolean_value(%struct.iscsi_param* %108, i8* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 -1, i32* %3, align 4
  br label %159

113:                                              ; preds = %107
  br label %147

114:                                              ; preds = %103
  %115 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %116 = call i64 @IS_TYPE_NUMBER(%struct.iscsi_param* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = call i64 @iscsi_check_numerical_value(%struct.iscsi_param* %119, i8* %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 -1, i32* %3, align 4
  br label %159

124:                                              ; preds = %118
  br label %146

125:                                              ; preds = %114
  %126 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %127 = call i64 @IS_TYPE_STRING(%struct.iscsi_param* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %131 = call i64 @IS_TYPE_VALUE_LIST(%struct.iscsi_param* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %129, %125
  %134 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %135 = load i8*, i8** %5, align 8
  %136 = call i64 @iscsi_check_string_or_list_value(%struct.iscsi_param* %134, i8* %135)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i32 -1, i32* %3, align 4
  br label %159

139:                                              ; preds = %133
  br label %145

140:                                              ; preds = %129
  %141 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %142 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %143)
  store i32 -1, i32* %3, align 4
  br label %159

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %124
  br label %147

147:                                              ; preds = %146, %113
  %148 = load i8*, i8** %6, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %6, align 8
  store i8 44, i8* %151, align 1
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i8*, i8** %6, align 8
  store i8* %154, i8** %5, align 8
  br label %155

155:                                              ; preds = %153
  %156 = load i8*, i8** %5, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %69, label %158

158:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %140, %138, %123, %112, %93, %78, %62, %56, %39, %28, %25
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @SET_PSTATE_REJECT(%struct.iscsi_param*) #1

declare dso_local i32 @pr_err(i8*, i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*) #1

declare dso_local i32 @SET_PSTATE_IRRELEVANT(%struct.iscsi_param*) #1

declare dso_local i32 @IS_PSTATE_PROPOSER(%struct.iscsi_param*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @IS_TYPE_VALUE_LIST(%struct.iscsi_param*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_TYPE_BOOL_AND(%struct.iscsi_param*) #1

declare dso_local i64 @IS_TYPE_BOOL_OR(%struct.iscsi_param*) #1

declare dso_local i64 @iscsi_check_boolean_value(%struct.iscsi_param*, i8*) #1

declare dso_local i64 @IS_TYPE_NUMBER(%struct.iscsi_param*) #1

declare dso_local i64 @iscsi_check_numerical_value(%struct.iscsi_param*, i8*) #1

declare dso_local i64 @IS_TYPE_STRING(%struct.iscsi_param*) #1

declare dso_local i64 @iscsi_check_string_or_list_value(%struct.iscsi_param*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
