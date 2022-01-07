; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_release_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_release_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_header = type { i32 }
%struct.vchiq_service = type { %struct.vchiq_state* }
%struct.vchiq_state = type { %struct.vchiq_shared_state* }
%struct.vchiq_shared_state = type { i32, i32, i32 }
%struct.vchiq_slot_info = type { i32 }

@VCHIQ_MSGID_CLAIMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchiq_release_message(i32 %0, %struct.vchiq_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vchiq_header*, align 8
  %5 = alloca %struct.vchiq_service*, align 8
  %6 = alloca %struct.vchiq_shared_state*, align 8
  %7 = alloca %struct.vchiq_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vchiq_slot_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.vchiq_header* %1, %struct.vchiq_header** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.vchiq_service* @find_service_by_handle(i32 %11)
  store %struct.vchiq_service* %12, %struct.vchiq_service** %5, align 8
  %13 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %14 = icmp ne %struct.vchiq_service* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %70

16:                                               ; preds = %2
  %17 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %18 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %17, i32 0, i32 0
  %19 = load %struct.vchiq_state*, %struct.vchiq_state** %18, align 8
  store %struct.vchiq_state* %19, %struct.vchiq_state** %7, align 8
  %20 = load %struct.vchiq_state*, %struct.vchiq_state** %7, align 8
  %21 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %20, i32 0, i32 0
  %22 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %21, align 8
  store %struct.vchiq_shared_state* %22, %struct.vchiq_shared_state** %6, align 8
  %23 = load %struct.vchiq_state*, %struct.vchiq_state** %7, align 8
  %24 = load %struct.vchiq_header*, %struct.vchiq_header** %4, align 8
  %25 = bitcast %struct.vchiq_header* %24 to i8*
  %26 = call i32 @SLOT_INDEX_FROM_DATA(%struct.vchiq_state* %23, i8* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %6, align 8
  %29 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %16
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %6, align 8
  %35 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %33, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = load %struct.vchiq_header*, %struct.vchiq_header** %4, align 8
  %40 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @VCHIQ_MSGID_CLAIMED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %struct.vchiq_state*, %struct.vchiq_state** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call %struct.vchiq_slot_info* @SLOT_INFO_FROM_INDEX(%struct.vchiq_state* %47, i32 %48)
  store %struct.vchiq_slot_info* %49, %struct.vchiq_slot_info** %10, align 8
  %50 = load %struct.vchiq_state*, %struct.vchiq_state** %7, align 8
  %51 = load %struct.vchiq_slot_info*, %struct.vchiq_slot_info** %10, align 8
  %52 = load %struct.vchiq_header*, %struct.vchiq_header** %4, align 8
  %53 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %54 = call i32 @release_slot(%struct.vchiq_state* %50, %struct.vchiq_slot_info* %51, %struct.vchiq_header* %52, %struct.vchiq_service* %53)
  br label %55

55:                                               ; preds = %46, %38
  br label %67

56:                                               ; preds = %32, %16
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %6, align 8
  %59 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.vchiq_state*, %struct.vchiq_state** %7, align 8
  %64 = load %struct.vchiq_header*, %struct.vchiq_header** %4, align 8
  %65 = call i32 @release_message_sync(%struct.vchiq_state* %63, %struct.vchiq_header* %64)
  br label %66

66:                                               ; preds = %62, %56
  br label %67

67:                                               ; preds = %66, %55
  %68 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %69 = call i32 @unlock_service(%struct.vchiq_service* %68)
  br label %70

70:                                               ; preds = %67, %15
  ret void
}

declare dso_local %struct.vchiq_service* @find_service_by_handle(i32) #1

declare dso_local i32 @SLOT_INDEX_FROM_DATA(%struct.vchiq_state*, i8*) #1

declare dso_local %struct.vchiq_slot_info* @SLOT_INFO_FROM_INDEX(%struct.vchiq_state*, i32) #1

declare dso_local i32 @release_slot(%struct.vchiq_state*, %struct.vchiq_slot_info*, %struct.vchiq_header*, %struct.vchiq_service*) #1

declare dso_local i32 @release_message_sync(%struct.vchiq_state*, %struct.vchiq_header*) #1

declare dso_local i32 @unlock_service(%struct.vchiq_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
