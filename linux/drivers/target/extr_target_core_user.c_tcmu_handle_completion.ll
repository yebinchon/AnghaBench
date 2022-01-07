; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_handle_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_handle_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, i32, %struct.se_cmd* }
%struct.tcmu_cmd = type { i32, %struct.se_cmd*, i32, i32, %struct.tcmu_dev* }
%struct.tcmu_dev = type { i32 }
%struct.tcmu_cmd_entry = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@TCMU_CMD_BIT_EXPIRED = common dso_local global i32 0, align 4
@TCMU_UFLAG_UNKNOWN_OP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"TCMU: Userspace set UNKNOWN_OP flag on se_cmd %p\0A\00", align 1
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global %struct.se_cmd* null, align 8
@TCMU_UFLAG_READ_LEN = common dso_local global i32 0, align 4
@SCF_TREAT_READ_AS_NORMAL = common dso_local global i32 0, align 4
@SCF_BIDI = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global %struct.se_cmd* null, align 8
@DMA_NONE = common dso_local global %struct.se_cmd* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"TCMU: data direction was %d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"read_len = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcmu_cmd*, %struct.tcmu_cmd_entry*)* @tcmu_handle_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcmu_handle_completion(%struct.tcmu_cmd* %0, %struct.tcmu_cmd_entry* %1) #0 {
  %3 = alloca %struct.tcmu_cmd*, align 8
  %4 = alloca %struct.tcmu_cmd_entry*, align 8
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca %struct.tcmu_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.tcmu_cmd* %0, %struct.tcmu_cmd** %3, align 8
  store %struct.tcmu_cmd_entry* %1, %struct.tcmu_cmd_entry** %4, align 8
  %9 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %9, i32 0, i32 1
  %11 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  store %struct.se_cmd* %11, %struct.se_cmd** %5, align 8
  %12 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %12, i32 0, i32 4
  %14 = load %struct.tcmu_dev*, %struct.tcmu_dev** %13, align 8
  store %struct.tcmu_dev* %14, %struct.tcmu_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @TCMU_CMD_BIT_EXPIRED, align 4
  %16 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %16, i32 0, i32 3
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %22 = call i32 @WARN_ON_ONCE(%struct.se_cmd* %21)
  br label %175

23:                                               ; preds = %2
  %24 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %24, i32 0, i32 2
  %26 = call i32 @list_del_init(i32* %25)
  %27 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %28 = call i32 @tcmu_cmd_reset_dbi_cur(%struct.tcmu_cmd* %27)
  %29 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %4, align 8
  %30 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TCMU_UFLAG_UNKNOWN_OP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %23
  %37 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %38 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %37, i32 0, i32 1
  %39 = load %struct.se_cmd*, %struct.se_cmd** %38, align 8
  %40 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.se_cmd* %39)
  %41 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %42 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %4, align 8
  %43 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  br label %150

45:                                               ; preds = %23
  %46 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  %49 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %50 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %49, i32 0, i32 2
  %51 = load %struct.se_cmd*, %struct.se_cmd** %50, align 8
  %52 = load %struct.se_cmd*, %struct.se_cmd** @DMA_FROM_DEVICE, align 8
  %53 = icmp eq %struct.se_cmd* %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %45
  %55 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %4, align 8
  %56 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @TCMU_UFLAG_READ_LEN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %54
  %63 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %4, align 8
  %64 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  store i32 1, i32* %7, align 4
  %69 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %4, align 8
  %70 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %4, align 8
  %77 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %75, %68
  br label %81

81:                                               ; preds = %80, %62, %54, %45
  %82 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %4, align 8
  %83 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %81
  %89 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %90 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %4, align 8
  %91 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @transport_copy_sense_to_cmd(%struct.se_cmd* %89, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %88
  br label %150

98:                                               ; preds = %88
  %99 = load i32, i32* @SCF_TREAT_READ_AS_NORMAL, align 4
  %100 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %101 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %81
  %106 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %107 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SCF_BIDI, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %114 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @gather_data_area(%struct.tcmu_dev* %113, %struct.tcmu_cmd* %114, i32 1, i64 %115)
  br label %149

117:                                              ; preds = %105
  %118 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %119 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %118, i32 0, i32 2
  %120 = load %struct.se_cmd*, %struct.se_cmd** %119, align 8
  %121 = load %struct.se_cmd*, %struct.se_cmd** @DMA_FROM_DEVICE, align 8
  %122 = icmp eq %struct.se_cmd* %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %125 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call i32 @gather_data_area(%struct.tcmu_dev* %124, %struct.tcmu_cmd* %125, i32 0, i64 %126)
  br label %148

128:                                              ; preds = %117
  %129 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %130 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %129, i32 0, i32 2
  %131 = load %struct.se_cmd*, %struct.se_cmd** %130, align 8
  %132 = load %struct.se_cmd*, %struct.se_cmd** @DMA_TO_DEVICE, align 8
  %133 = icmp eq %struct.se_cmd* %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %147

135:                                              ; preds = %128
  %136 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %137 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %136, i32 0, i32 2
  %138 = load %struct.se_cmd*, %struct.se_cmd** %137, align 8
  %139 = load %struct.se_cmd*, %struct.se_cmd** @DMA_NONE, align 8
  %140 = icmp ne %struct.se_cmd* %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %143 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %142, i32 0, i32 2
  %144 = load %struct.se_cmd*, %struct.se_cmd** %143, align 8
  %145 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.se_cmd* %144)
  br label %146

146:                                              ; preds = %141, %135
  br label %147

147:                                              ; preds = %146, %134
  br label %148

148:                                              ; preds = %147, %123
  br label %149

149:                                              ; preds = %148, %112
  br label %150

150:                                              ; preds = %149, %97, %36
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %150
  %154 = load i64, i64* %8, align 8
  %155 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %154)
  %156 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %157 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %156, i32 0, i32 1
  %158 = load %struct.se_cmd*, %struct.se_cmd** %157, align 8
  %159 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %4, align 8
  %160 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i64, i64* %8, align 8
  %164 = call i32 @target_complete_cmd_with_length(%struct.se_cmd* %158, i32 %162, i64 %163)
  br label %174

165:                                              ; preds = %150
  %166 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %167 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %166, i32 0, i32 1
  %168 = load %struct.se_cmd*, %struct.se_cmd** %167, align 8
  %169 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %4, align 8
  %170 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @target_complete_cmd(%struct.se_cmd* %168, i32 %172)
  br label %174

174:                                              ; preds = %165, %153
  br label %175

175:                                              ; preds = %174, %20
  %176 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %177 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %176, i32 0, i32 1
  store %struct.se_cmd* null, %struct.se_cmd** %177, align 8
  %178 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %179 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %180 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @tcmu_cmd_free_data(%struct.tcmu_cmd* %178, i32 %181)
  %183 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %184 = call i32 @tcmu_free_cmd(%struct.tcmu_cmd* %183)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(%struct.se_cmd*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @tcmu_cmd_reset_dbi_cur(%struct.tcmu_cmd*) #1

declare dso_local i32 @pr_warn(i8*, %struct.se_cmd*) #1

declare dso_local i32 @transport_copy_sense_to_cmd(%struct.se_cmd*, i32) #1

declare dso_local i32 @gather_data_area(%struct.tcmu_dev*, %struct.tcmu_cmd*, i32, i64) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @target_complete_cmd_with_length(%struct.se_cmd*, i32, i64) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

declare dso_local i32 @tcmu_cmd_free_data(%struct.tcmu_cmd*, i32) #1

declare dso_local i32 @tcmu_free_cmd(%struct.tcmu_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
