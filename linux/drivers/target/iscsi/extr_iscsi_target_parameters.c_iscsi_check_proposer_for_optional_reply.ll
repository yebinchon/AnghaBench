; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_check_proposer_for_optional_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_check_proposer_for_optional_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_param = type { i32, i32 }

@NO = common dso_local global i32 0, align 4
@YES = common dso_local global i32 0, align 4
@IMMEDIATEDATA = common dso_local global i32 0, align 4
@MAXRECVDATASEGMENTLENGTH = common dso_local global i32 0, align 4
@FIRSTBURSTLENGTH = common dso_local global i32 0, align 4
@MAXCONNECTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_param*, i32)* @iscsi_check_proposer_for_optional_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_check_proposer_for_optional_reply(%struct.iscsi_param* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_param*, align 8
  %4 = alloca i32, align 4
  store %struct.iscsi_param* %0, %struct.iscsi_param** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %6 = call i64 @IS_TYPE_BOOL_AND(%struct.iscsi_param* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NO, align 4
  %13 = call i32 @strcmp(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %17 = call i32 @SET_PSTATE_REPLY_OPTIONAL(%struct.iscsi_param* %16)
  br label %18

18:                                               ; preds = %15, %8
  br label %97

19:                                               ; preds = %2
  %20 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %21 = call i64 @IS_TYPE_BOOL_OR(%struct.iscsi_param* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %19
  %24 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %25 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @YES, align 4
  %28 = call i32 @strcmp(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %32 = call i32 @SET_PSTATE_REPLY_OPTIONAL(%struct.iscsi_param* %31)
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %38 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IMMEDIATEDATA, align 4
  %41 = call i32 @strcmp(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %45 = call i32 @SET_PSTATE_REPLY_OPTIONAL(%struct.iscsi_param* %44)
  br label %46

46:                                               ; preds = %43, %36
  br label %47

47:                                               ; preds = %46, %33
  br label %96

48:                                               ; preds = %19
  %49 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %50 = call i64 @IS_TYPE_NUMBER(%struct.iscsi_param* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %48
  %53 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %54 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MAXRECVDATASEGMENTLENGTH, align 4
  %57 = call i32 @strcmp(i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %61 = call i32 @SET_PSTATE_REPLY_OPTIONAL(%struct.iscsi_param* %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %62
  %66 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %67 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FIRSTBURSTLENGTH, align 4
  %70 = call i32 @strcmp(i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %74 = call i32 @SET_PSTATE_REPLY_OPTIONAL(%struct.iscsi_param* %73)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %77 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MAXCONNECTIONS, align 4
  %80 = call i32 @strcmp(i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %84 = call i32 @SET_PSTATE_REPLY_OPTIONAL(%struct.iscsi_param* %83)
  br label %85

85:                                               ; preds = %82, %75
  br label %86

86:                                               ; preds = %85, %62
  br label %95

87:                                               ; preds = %48
  %88 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %89 = call i64 @IS_PHASE_DECLARATIVE(%struct.iscsi_param* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load %struct.iscsi_param*, %struct.iscsi_param** %3, align 8
  %93 = call i32 @SET_PSTATE_REPLY_OPTIONAL(%struct.iscsi_param* %92)
  br label %94

94:                                               ; preds = %91, %87
  br label %95

95:                                               ; preds = %94, %86
  br label %96

96:                                               ; preds = %95, %47
  br label %97

97:                                               ; preds = %96, %18
  ret void
}

declare dso_local i64 @IS_TYPE_BOOL_AND(%struct.iscsi_param*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @SET_PSTATE_REPLY_OPTIONAL(%struct.iscsi_param*) #1

declare dso_local i64 @IS_TYPE_BOOL_OR(%struct.iscsi_param*) #1

declare dso_local i64 @IS_TYPE_NUMBER(%struct.iscsi_param*) #1

declare dso_local i64 @IS_PHASE_DECLARATIVE(%struct.iscsi_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
