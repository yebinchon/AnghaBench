; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8, i32 (%struct.se_cmd*, i8*)* }
%struct.se_cmd = type { i8*, i32, %struct.TYPE_6__*, %struct.se_device* }
%struct.TYPE_6__ = type { %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.se_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8 (%struct.se_device*)* }

@SE_INQUIRY_BUF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unable to allocate response buffer for INQUIRY\0A\00", align 1
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"INQUIRY with EVPD==0 but PAGE CODE=%02x\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@evpd_handlers = common dso_local global %struct.TYPE_9__* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown VPD Code: 0x%02x\0A\00", align 1
@u32 = common dso_local global i32 0, align 4
@GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @spc_emulate_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spc_emulate_inquiry(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.se_portal_group*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %12 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 3
  %14 = load %struct.se_device*, %struct.se_device** %13, align 8
  store %struct.se_device* %14, %struct.se_device** %4, align 8
  %15 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.se_portal_group*, %struct.se_portal_group** %18, align 8
  store %struct.se_portal_group* %19, %struct.se_portal_group** %5, align 8
  %20 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %23 = load i32, i32* @SE_INQUIRY_BUF, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i32 %23, i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %30, i32* %2, align 4
  br label %159

31:                                               ; preds = %1
  %32 = load %struct.se_device*, %struct.se_device** %4, align 8
  %33 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %34 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.se_device* @rcu_access_pointer(i32 %37)
  %39 = icmp eq %struct.se_device* %32, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 63, i8* %42, align 1
  br label %53

43:                                               ; preds = %31
  %44 = load %struct.se_device*, %struct.se_device** %4, align 8
  %45 = getelementptr inbounds %struct.se_device, %struct.se_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i8 (%struct.se_device*)*, i8 (%struct.se_device*)** %47, align 8
  %49 = load %struct.se_device*, %struct.se_device** %4, align 8
  %50 = call zeroext i8 %48(%struct.se_device* %49)
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 %50, i8* %52, align 1
  br label %53

53:                                               ; preds = %43, %40
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %53
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %71, i32* %9, align 4
  br label %130

72:                                               ; preds = %60
  %73 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @spc_emulate_inquiry_std(%struct.se_cmd* %73, i8* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = add nsw i32 %79, 5
  store i32 %80, i32* %11, align 4
  br label %130

81:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %120, %81
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** @evpd_handlers, align 8
  %85 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %84)
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %82
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @evpd_handlers, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i8, i8* %96, align 8
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %91, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %87
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  store i8 %103, i8* %105, align 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** @evpd_handlers, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32 (%struct.se_cmd*, i8*)*, i32 (%struct.se_cmd*, i8*)** %110, align 8
  %112 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 %111(%struct.se_cmd* %112, i8* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  %117 = call i32 @get_unaligned_be16(i8* %116)
  %118 = add nsw i32 %117, 4
  store i32 %118, i32* %11, align 4
  br label %130

119:                                              ; preds = %87
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %82

123:                                              ; preds = %82
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %123, %100, %72, %65
  %131 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %132 = call i8* @transport_kmap_data_sg(%struct.se_cmd* %131)
  store i8* %132, i8** %6, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %147

135:                                              ; preds = %130
  %136 = load i8*, i8** %6, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = load i32, i32* @u32, align 4
  %139 = load i32, i32* @SE_INQUIRY_BUF, align 4
  %140 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %141 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @min_t(i32 %138, i32 %139, i32 %142)
  %144 = call i32 @memcpy(i8* %136, i8* %137, i32 %143)
  %145 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %146 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %145)
  br label %147

147:                                              ; preds = %135, %130
  %148 = load i8*, i8** %8, align 8
  %149 = call i32 @kfree(i8* %148)
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %154 = load i32, i32* @GOOD, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @target_complete_cmd_with_length(%struct.se_cmd* %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %147
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %157, %28
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.se_device* @rcu_access_pointer(i32) #1

declare dso_local i32 @spc_emulate_inquiry_std(%struct.se_cmd*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @get_unaligned_be16(i8*) #1

declare dso_local i8* @transport_kmap_data_sg(%struct.se_cmd*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @transport_kunmap_data_sg(%struct.se_cmd*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @target_complete_cmd_with_length(%struct.se_cmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
