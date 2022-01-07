; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_dump_shared_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_dump_shared_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_state = type { i32 }
%struct.vchiq_shared_state = type { i32, i32, i32*, i32, i32 }
%struct.vchiq_slot_info = type { i64, i64 }

@vchiq_dump_shared_state.debug_names = internal constant [11 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"<entries>\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SLOT_HANDLER_COUNT\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SLOT_HANDLER_LINE\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"PARSE_LINE\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"PARSE_HEADER\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"PARSE_MSGID\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"AWAIT_COMPLETION_LINE\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"DEQUEUE_MESSAGE_LINE\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"SERVICE_CALLBACK_LINE\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"MSG_QUEUE_FULL_COUNT\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"COMPLETION_QUEUE_FULL_COUNT\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"  %s: slots %d-%d tx_pos=%x recycle=%x\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"    Slots claimed:\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"      %d: %d/%d\00", align 1
@DEBUG_ENTRIES = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [23 x i8] c"    DEBUG: %s = %d(%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.vchiq_state*, %struct.vchiq_shared_state*, i8*)* @vchiq_dump_shared_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vchiq_dump_shared_state(i8* %0, %struct.vchiq_state* %1, %struct.vchiq_shared_state* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vchiq_state*, align 8
  %7 = alloca %struct.vchiq_shared_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [80 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.vchiq_slot_info, align 8
  store i8* %0, i8** %5, align 8
  store %struct.vchiq_state* %1, %struct.vchiq_state** %6, align 8
  store %struct.vchiq_shared_state* %2, %struct.vchiq_shared_state** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %7, align 8
  %16 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %7, align 8
  %19 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %7, align 8
  %22 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %7, align 8
  %25 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %13, i32 80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8* %14, i32 %17, i32 %20, i32 %23, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @vchiq_dump(i8* %28, i8* %29, i32 %31)
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %34 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %33, i32 80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  store i32 %34, i32* %11, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @vchiq_dump(i8* %35, i8* %36, i32 %38)
  %40 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %7, align 8
  %41 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %74, %4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %7, align 8
  %46 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %44, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %43
  %50 = load %struct.vchiq_state*, %struct.vchiq_state** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.vchiq_slot_info* @SLOT_INFO_FROM_INDEX(%struct.vchiq_state* %50, i32 %51)
  %53 = bitcast %struct.vchiq_slot_info* %12 to i8*
  %54 = bitcast %struct.vchiq_slot_info* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  %55 = getelementptr inbounds %struct.vchiq_slot_info, %struct.vchiq_slot_info* %12, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.vchiq_slot_info, %struct.vchiq_slot_info* %12, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %49
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %62 = load i32, i32* %9, align 4
  %63 = getelementptr inbounds %struct.vchiq_slot_info, %struct.vchiq_slot_info* %12, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.vchiq_slot_info, %struct.vchiq_slot_info* %12, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %61, i32 80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %62, i64 %64, i64 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @vchiq_dump(i8* %68, i8* %69, i32 %71)
  br label %73

73:                                               ; preds = %60, %49
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %43

77:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %78

78:                                               ; preds = %113, %77
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %7, align 8
  %81 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @DEBUG_ENTRIES, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %79, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %78
  %88 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [11 x i8*], [11 x i8*]* @vchiq_dump_shared_state.debug_names, i64 0, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %7, align 8
  %94 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %7, align 8
  %101 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %88, i32 80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* %92, i32 %99, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i32 @vchiq_dump(i8* %108, i8* %109, i32 %111)
  br label %113

113:                                              ; preds = %87
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %78

116:                                              ; preds = %78
  ret void
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @vchiq_dump(i8*, i8*, i32) #1

declare dso_local %struct.vchiq_slot_info* @SLOT_INFO_FROM_INDEX(%struct.vchiq_state*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
