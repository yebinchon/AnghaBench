; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_process_softint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_process_softint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anybuss_client* }
%struct.anybuss_client = type { i32 (%struct.anybuss_client*)*, i32 (%struct.anybuss_client*, i32)* }
%struct.ab_task = type { i32 (%struct.anybuss_host*)* }

@process_softint.zero = internal constant i32 0, align 4
@REG_IND_AP = common dso_local global i32 0, align 4
@IND_AX_EVNT = common dso_local global i32 0, align 4
@REG_EVENT_CAUSE = common dso_local global i32 0, align 4
@EVENT_CAUSE_FBON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Fieldbus ON\00", align 1
@EVENT_CAUSE_FBOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Fieldbus OFF\00", align 1
@EVENT_CAUSE_DC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Fieldbus data changed\00", align 1
@IND_AX_FBCTRL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.anybuss_host*)* @process_softint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_softint(%struct.anybuss_host* %0) #0 {
  %2 = alloca %struct.anybuss_host*, align 8
  %3 = alloca %struct.anybuss_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ab_task*, align 8
  store %struct.anybuss_host* %0, %struct.anybuss_host** %2, align 8
  %8 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %9 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %8, i32 0, i32 9
  %10 = load %struct.anybuss_client*, %struct.anybuss_client** %9, align 8
  store %struct.anybuss_client* %10, %struct.anybuss_client** %3, align 8
  %11 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %12 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %141

16:                                               ; preds = %1
  %17 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %18 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %141

22:                                               ; preds = %16
  %23 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %24 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @REG_IND_AP, align 4
  %27 = call i32 @regmap_read(i32 %25, i32 %26, i32* %5)
  %28 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %29 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %28, i32 0, i32 7
  %30 = call i32 @atomic_read(i32* %29)
  %31 = load i32, i32* %5, align 4
  %32 = xor i32 %30, %31
  %33 = load i32, i32* @IND_AX_EVNT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %22
  br label %141

37:                                               ; preds = %22
  %38 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %39 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @REG_EVENT_CAUSE, align 4
  %42 = call i32 @regmap_read(i32 %40, i32 %41, i32* %6)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @EVENT_CAUSE_FBON, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %37
  %48 = load %struct.anybuss_client*, %struct.anybuss_client** %3, align 8
  %49 = getelementptr inbounds %struct.anybuss_client, %struct.anybuss_client* %48, i32 0, i32 1
  %50 = load i32 (%struct.anybuss_client*, i32)*, i32 (%struct.anybuss_client*, i32)** %49, align 8
  %51 = icmp ne i32 (%struct.anybuss_client*, i32)* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.anybuss_client*, %struct.anybuss_client** %3, align 8
  %54 = getelementptr inbounds %struct.anybuss_client, %struct.anybuss_client* %53, i32 0, i32 1
  %55 = load i32 (%struct.anybuss_client*, i32)*, i32 (%struct.anybuss_client*, i32)** %54, align 8
  %56 = load %struct.anybuss_client*, %struct.anybuss_client** %3, align 8
  %57 = call i32 %55(%struct.anybuss_client* %56, i32 1)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %60 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %37
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @EVENT_CAUSE_FBOF, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = load %struct.anybuss_client*, %struct.anybuss_client** %3, align 8
  %70 = getelementptr inbounds %struct.anybuss_client, %struct.anybuss_client* %69, i32 0, i32 1
  %71 = load i32 (%struct.anybuss_client*, i32)*, i32 (%struct.anybuss_client*, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.anybuss_client*, i32)* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.anybuss_client*, %struct.anybuss_client** %3, align 8
  %75 = getelementptr inbounds %struct.anybuss_client, %struct.anybuss_client* %74, i32 0, i32 1
  %76 = load i32 (%struct.anybuss_client*, i32)*, i32 (%struct.anybuss_client*, i32)** %75, align 8
  %77 = load %struct.anybuss_client*, %struct.anybuss_client** %3, align 8
  %78 = call i32 %76(%struct.anybuss_client* %77, i32 0)
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %81 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_dbg(i32 %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %63
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @EVENT_CAUSE_DC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = load %struct.anybuss_client*, %struct.anybuss_client** %3, align 8
  %91 = getelementptr inbounds %struct.anybuss_client, %struct.anybuss_client* %90, i32 0, i32 0
  %92 = load i32 (%struct.anybuss_client*)*, i32 (%struct.anybuss_client*)** %91, align 8
  %93 = icmp ne i32 (%struct.anybuss_client*)* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.anybuss_client*, %struct.anybuss_client** %3, align 8
  %96 = getelementptr inbounds %struct.anybuss_client, %struct.anybuss_client* %95, i32 0, i32 0
  %97 = load i32 (%struct.anybuss_client*)*, i32 (%struct.anybuss_client*)** %96, align 8
  %98 = load %struct.anybuss_client*, %struct.anybuss_client** %3, align 8
  %99 = call i32 %97(%struct.anybuss_client* %98)
  br label %100

100:                                              ; preds = %94, %89
  %101 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %102 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_dbg(i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %100, %84
  %106 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %107 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @IND_AX_FBCTRL, align 4
  %110 = load i32, i32* @REG_EVENT_CAUSE, align 4
  %111 = call %struct.ab_task* @create_area_writer(i32 %108, i32 %109, i32 %110, i32* @process_softint.zero, i32 4)
  store %struct.ab_task* %111, %struct.ab_task** %7, align 8
  %112 = load %struct.ab_task*, %struct.ab_task** %7, align 8
  %113 = icmp ne %struct.ab_task* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %105
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %133

117:                                              ; preds = %105
  %118 = load %struct.ab_task*, %struct.ab_task** %7, align 8
  %119 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %118, i32 0, i32 0
  store i32 (%struct.anybuss_host*)* @softint_ack, i32 (%struct.anybuss_host*)** %119, align 8
  %120 = load %struct.ab_task*, %struct.ab_task** %7, align 8
  %121 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %122 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %125 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %124, i32 0, i32 2
  %126 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %127 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %126, i32 0, i32 1
  %128 = call i32 @ab_task_enqueue(%struct.ab_task* %120, i32 %123, i32* %125, i32* %127)
  store i32 %128, i32* %4, align 4
  %129 = load %struct.ab_task*, %struct.ab_task** %7, align 8
  %130 = call i32 @ab_task_put(%struct.ab_task* %129)
  %131 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %132 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  br label %133

133:                                              ; preds = %117, %114
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @WARN_ON(i32 %134)
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %140 = call i32 @softint_ack(%struct.anybuss_host* %139)
  br label %141

141:                                              ; preds = %15, %21, %36, %138, %133
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local %struct.ab_task* @create_area_writer(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @softint_ack(%struct.anybuss_host*) #1

declare dso_local i32 @ab_task_enqueue(%struct.ab_task*, i32, i32*, i32*) #1

declare dso_local i32 @ab_task_put(%struct.ab_task*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
