; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_decode_text_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_decode_text_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_param_list* }
%struct.iscsi_param_list = type { i32 }
%struct.iscsi_param = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unable to allocate %u + 1 bytes for tmpbuf.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Got key: %s=%s\0A\00", align 1
@PHASE_SECURITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_decode_text_input(i32 %0, i32 %1, i8* %2, i32 %3, %struct.iscsi_conn* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iscsi_conn*, align 8
  %12 = alloca %struct.iscsi_param_list*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.iscsi_param*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.iscsi_conn* %4, %struct.iscsi_conn** %11, align 8
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %20, align 8
  store %struct.iscsi_param_list* %21, %struct.iscsi_param_list** %12, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i32 %23, i32 %24)
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %140

33:                                               ; preds = %5
  %34 = load i8*, i8** %13, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @memcpy(i8* %34, i8* %35, i32 %36)
  %38 = load i8*, i8** %13, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %13, align 8
  store i8* %42, i8** %14, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %15, align 8
  br label %47

47:                                               ; preds = %133, %87, %33
  %48 = load i8*, i8** %14, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = icmp ult i8* %48, %49
  br i1 %50, label %51, label %134

51:                                               ; preds = %47
  %52 = load i8*, i8** %14, align 8
  %53 = call i64 @iscsi_extract_key_value(i8* %52, i8** %16, i8** %17)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %137

56:                                               ; preds = %51
  %57 = load i8*, i8** %16, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %58)
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @PHASE_SECURITY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load i8*, i8** %16, align 8
  %66 = call i64 @iscsi_check_for_auth_key(i8* %65)
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 @kfree(i8* %69)
  store i32 1, i32* %6, align 4
  br label %140

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %56
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %12, align 8
  %77 = call %struct.iscsi_param* @iscsi_check_key(i8* %73, i32 %74, i32 %75, %struct.iscsi_param_list* %76)
  store %struct.iscsi_param* %77, %struct.iscsi_param** %18, align 8
  %78 = load %struct.iscsi_param*, %struct.iscsi_param** %18, align 8
  %79 = icmp ne %struct.iscsi_param* %78, null
  br i1 %79, label %96, label %80

80:                                               ; preds = %72
  %81 = load i8*, i8** %16, align 8
  %82 = load i8*, i8** %17, align 8
  %83 = load %struct.iscsi_param_list*, %struct.iscsi_param_list** %12, align 8
  %84 = call i64 @iscsi_add_notunderstood_response(i8* %81, i8* %82, %struct.iscsi_param_list* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %137

87:                                               ; preds = %80
  %88 = load i8*, i8** %16, align 8
  %89 = call i64 @strlen(i8* %88)
  %90 = load i8*, i8** %17, align 8
  %91 = call i64 @strlen(i8* %90)
  %92 = add nsw i64 %89, %91
  %93 = add nsw i64 %92, 2
  %94 = load i8*, i8** %14, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 %93
  store i8* %95, i8** %14, align 8
  br label %47

96:                                               ; preds = %72
  %97 = load %struct.iscsi_param*, %struct.iscsi_param** %18, align 8
  %98 = load i8*, i8** %17, align 8
  %99 = call i64 @iscsi_check_value(%struct.iscsi_param* %97, i8* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %137

102:                                              ; preds = %96
  %103 = load i8*, i8** %16, align 8
  %104 = call i64 @strlen(i8* %103)
  %105 = load i8*, i8** %17, align 8
  %106 = call i64 @strlen(i8* %105)
  %107 = add nsw i64 %104, %106
  %108 = add nsw i64 %107, 2
  %109 = load i8*, i8** %14, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 %108
  store i8* %110, i8** %14, align 8
  %111 = load %struct.iscsi_param*, %struct.iscsi_param** %18, align 8
  %112 = call i64 @IS_PSTATE_PROPOSER(%struct.iscsi_param* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %102
  %115 = load %struct.iscsi_param*, %struct.iscsi_param** %18, align 8
  %116 = load i8*, i8** %17, align 8
  %117 = call i64 @iscsi_check_proposer_state(%struct.iscsi_param* %115, i8* %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %137

120:                                              ; preds = %114
  %121 = load %struct.iscsi_param*, %struct.iscsi_param** %18, align 8
  %122 = call i32 @SET_PSTATE_RESPONSE_GOT(%struct.iscsi_param* %121)
  br label %133

123:                                              ; preds = %102
  %124 = load %struct.iscsi_param*, %struct.iscsi_param** %18, align 8
  %125 = load i8*, i8** %17, align 8
  %126 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %127 = call i64 @iscsi_check_acceptor_state(%struct.iscsi_param* %124, i8* %125, %struct.iscsi_conn* %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %137

130:                                              ; preds = %123
  %131 = load %struct.iscsi_param*, %struct.iscsi_param** %18, align 8
  %132 = call i32 @SET_PSTATE_ACCEPTOR(%struct.iscsi_param* %131)
  br label %133

133:                                              ; preds = %130, %120
  br label %47

134:                                              ; preds = %47
  %135 = load i8*, i8** %13, align 8
  %136 = call i32 @kfree(i8* %135)
  store i32 0, i32* %6, align 4
  br label %140

137:                                              ; preds = %129, %119, %101, %86, %55
  %138 = load i8*, i8** %13, align 8
  %139 = call i32 @kfree(i8* %138)
  store i32 -1, i32* %6, align 4
  br label %140

140:                                              ; preds = %137, %134, %68, %28
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @iscsi_extract_key_value(i8*, i8**, i8**) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*) #1

declare dso_local i64 @iscsi_check_for_auth_key(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.iscsi_param* @iscsi_check_key(i8*, i32, i32, %struct.iscsi_param_list*) #1

declare dso_local i64 @iscsi_add_notunderstood_response(i8*, i8*, %struct.iscsi_param_list*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @iscsi_check_value(%struct.iscsi_param*, i8*) #1

declare dso_local i64 @IS_PSTATE_PROPOSER(%struct.iscsi_param*) #1

declare dso_local i64 @iscsi_check_proposer_state(%struct.iscsi_param*, i8*) #1

declare dso_local i32 @SET_PSTATE_RESPONSE_GOT(%struct.iscsi_param*) #1

declare dso_local i64 @iscsi_check_acceptor_state(%struct.iscsi_param*, i8*, %struct.iscsi_conn*) #1

declare dso_local i32 @SET_PSTATE_ACCEPTOR(%struct.iscsi_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
