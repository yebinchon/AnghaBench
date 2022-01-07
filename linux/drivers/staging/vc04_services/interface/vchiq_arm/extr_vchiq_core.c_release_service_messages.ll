; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_release_service_messages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_release_service_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_service = type { i64, i64, %struct.vchiq_state* }
%struct.vchiq_state = type { i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.vchiq_header = type { i32, i32 }
%struct.vchiq_slot_info = type { i64, i64 }

@VCHIQ_SLOT_SIZE = common dso_local global i32 0, align 4
@VCHIQ_SLOT_MASK = common dso_local global i32 0, align 4
@VCHIQ_MSGID_CLAIMED = common dso_local global i32 0, align 4
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"  fsi - hdr %pK\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"fsi - pos %x: header %pK, msgid %x, header->msgid %x, header->size %x\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid slot position\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vchiq_service*)* @release_service_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_service_messages(%struct.vchiq_service* %0) #0 {
  %2 = alloca %struct.vchiq_service*, align 8
  %3 = alloca %struct.vchiq_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vchiq_header*, align 8
  %7 = alloca %struct.vchiq_slot_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vchiq_header*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vchiq_service* %0, %struct.vchiq_service** %2, align 8
  %14 = load %struct.vchiq_service*, %struct.vchiq_service** %2, align 8
  %15 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %14, i32 0, i32 2
  %16 = load %struct.vchiq_state*, %struct.vchiq_state** %15, align 8
  store %struct.vchiq_state* %16, %struct.vchiq_state** %3, align 8
  %17 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %18 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load %struct.vchiq_service*, %struct.vchiq_service** %2, align 8
  %23 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %1
  %27 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %28 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %29 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @SLOT_DATA_FROM_INDEX(%struct.vchiq_state* %27, i32 %32)
  %34 = inttoptr i64 %33 to %struct.vchiq_header*
  store %struct.vchiq_header* %34, %struct.vchiq_header** %6, align 8
  %35 = load %struct.vchiq_header*, %struct.vchiq_header** %6, align 8
  %36 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @VCHIQ_MSG_DSTPORT(i32 %37)
  %39 = load %struct.vchiq_service*, %struct.vchiq_service** %2, align 8
  %40 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %26
  %44 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %45 = load %struct.vchiq_header*, %struct.vchiq_header** %6, align 8
  %46 = call i32 @release_message_sync(%struct.vchiq_state* %44, %struct.vchiq_header* %45)
  br label %47

47:                                               ; preds = %43, %26
  br label %153

48:                                               ; preds = %1
  %49 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %50 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %150, %48
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %153

58:                                               ; preds = %54
  %59 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call %struct.vchiq_slot_info* @SLOT_INFO_FROM_INDEX(%struct.vchiq_state* %59, i32 %60)
  store %struct.vchiq_slot_info* %61, %struct.vchiq_slot_info** %7, align 8
  %62 = load %struct.vchiq_slot_info*, %struct.vchiq_slot_info** %7, align 8
  %63 = getelementptr inbounds %struct.vchiq_slot_info, %struct.vchiq_slot_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.vchiq_slot_info*, %struct.vchiq_slot_info** %7, align 8
  %66 = getelementptr inbounds %struct.vchiq_slot_info, %struct.vchiq_slot_info* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %149

69:                                               ; preds = %58
  %70 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @SLOT_DATA_FROM_INDEX(%struct.vchiq_state* %70, i32 %71)
  %73 = inttoptr i64 %72 to i8*
  store i8* %73, i8** %8, align 8
  %74 = load i32, i32* @VCHIQ_SLOT_SIZE, align 4
  store i32 %74, i32* %10, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %77 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp eq i8* %75, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %69
  %81 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %82 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @VCHIQ_SLOT_MASK, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %80, %69
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %147, %86
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %148

91:                                               ; preds = %87
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = bitcast i8* %95 to %struct.vchiq_header*
  store %struct.vchiq_header* %96, %struct.vchiq_header** %11, align 8
  %97 = load %struct.vchiq_header*, %struct.vchiq_header** %11, align 8
  %98 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i64 @VCHIQ_MSG_DSTPORT(i32 %100)
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = load %struct.vchiq_service*, %struct.vchiq_service** %2, align 8
  %106 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %91
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @VCHIQ_MSGID_CLAIMED, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load i32, i32* @vchiq_core_log_level, align 4
  %116 = load %struct.vchiq_header*, %struct.vchiq_header** %11, align 8
  %117 = call i32 @vchiq_log_info(i32 %115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.vchiq_header* %116)
  %118 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %119 = load %struct.vchiq_slot_info*, %struct.vchiq_slot_info** %7, align 8
  %120 = load %struct.vchiq_header*, %struct.vchiq_header** %11, align 8
  %121 = call i32 @release_slot(%struct.vchiq_state* %118, %struct.vchiq_slot_info* %119, %struct.vchiq_header* %120, i32* null)
  br label %122

122:                                              ; preds = %114, %109, %91
  %123 = load %struct.vchiq_header*, %struct.vchiq_header** %11, align 8
  %124 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @calc_stride(i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = zext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @VCHIQ_SLOT_SIZE, align 4
  %133 = icmp ugt i32 %131, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %122
  %135 = load i32, i32* @vchiq_core_log_level, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.vchiq_header*, %struct.vchiq_header** %11, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.vchiq_header*, %struct.vchiq_header** %11, align 8
  %140 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.vchiq_header*, %struct.vchiq_header** %11, align 8
  %143 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @vchiq_log_error(i32 %135, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %136, %struct.vchiq_header* %137, i32 %138, i32 %141, i32 %144)
  %146 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %147

147:                                              ; preds = %134, %122
  br label %87

148:                                              ; preds = %87
  br label %149

149:                                              ; preds = %148, %58
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %54

153:                                              ; preds = %47, %54
  ret void
}

declare dso_local i64 @SLOT_DATA_FROM_INDEX(%struct.vchiq_state*, i32) #1

declare dso_local i64 @VCHIQ_MSG_DSTPORT(i32) #1

declare dso_local i32 @release_message_sync(%struct.vchiq_state*, %struct.vchiq_header*) #1

declare dso_local %struct.vchiq_slot_info* @SLOT_INFO_FROM_INDEX(%struct.vchiq_state*, i32) #1

declare dso_local i32 @vchiq_log_info(i32, i8*, %struct.vchiq_header*) #1

declare dso_local i32 @release_slot(%struct.vchiq_state*, %struct.vchiq_slot_info*, %struct.vchiq_header*, i32*) #1

declare dso_local i64 @calc_stride(i32) #1

declare dso_local i32 @vchiq_log_error(i32, i8*, i32, %struct.vchiq_header*, i32, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
