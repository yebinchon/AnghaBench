; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_options_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_options_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.st_modedef = type { i64, i64, i64, i64, i64, %struct.scsi_tape* }
%struct.scsi_tape = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@MT_ST_BUFFER_WRITES = common dso_local global i32 0, align 4
@MT_ST_ASYNC_WRITES = common dso_local global i32 0, align 4
@MT_ST_READ_AHEAD = common dso_local global i32 0, align 4
@debugging = common dso_local global i64 0, align 8
@MT_ST_DEBUGGING = common dso_local global i32 0, align 4
@MT_ST_TWO_FM = common dso_local global i32 0, align 4
@MT_ST_FAST_MTEOM = common dso_local global i32 0, align 4
@MT_ST_DEF_WRITES = common dso_local global i32 0, align 4
@MT_ST_CAN_BSR = common dso_local global i32 0, align 4
@MT_ST_NO_BLKLIMS = common dso_local global i32 0, align 4
@MT_ST_CAN_PARTITIONS = common dso_local global i32 0, align 4
@MT_ST_SCSI2LOGICAL = common dso_local global i32 0, align 4
@MT_ST_SYSV = common dso_local global i32 0, align 4
@MT_ST_NOWAIT = common dso_local global i32 0, align 4
@MT_ST_NOWAIT_EOF = common dso_local global i32 0, align 4
@MT_ST_SILI = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @options_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @options_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.st_modedef*, align 8
  %8 = alloca %struct.scsi_tape*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.st_modedef* @dev_get_drvdata(%struct.device* %11)
  store %struct.st_modedef* %12, %struct.st_modedef** %7, align 8
  %13 = load %struct.st_modedef*, %struct.st_modedef** %7, align 8
  %14 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %13, i32 0, i32 5
  %15 = load %struct.scsi_tape*, %struct.scsi_tape** %14, align 8
  store %struct.scsi_tape* %15, %struct.scsi_tape** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.st_modedef*, %struct.st_modedef** %7, align 8
  %17 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @MT_ST_BUFFER_WRITES, align 4
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %9, align 4
  %25 = load %struct.st_modedef*, %struct.st_modedef** %7, align 8
  %26 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @MT_ST_ASYNC_WRITES, align 4
  br label %32

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load %struct.st_modedef*, %struct.st_modedef** %7, align 8
  %37 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @MT_ST_READ_AHEAD, align 4
  br label %43

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i64, i64* @debugging, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @MT_ST_DEBUGGING, align 4
  br label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = call i32 @DEB(i32 %55)
  %57 = load %struct.scsi_tape*, %struct.scsi_tape** %8, align 8
  %58 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @MT_ST_TWO_FM, align 4
  br label %64

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load %struct.scsi_tape*, %struct.scsi_tape** %8, align 8
  %69 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @MT_ST_FAST_MTEOM, align 4
  br label %75

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load %struct.st_modedef*, %struct.st_modedef** %7, align 8
  %80 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @MT_ST_DEF_WRITES, align 4
  br label %86

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i32 [ %84, %83 ], [ 0, %85 ]
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load %struct.scsi_tape*, %struct.scsi_tape** %8, align 8
  %91 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @MT_ST_CAN_BSR, align 4
  br label %97

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ]
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load %struct.scsi_tape*, %struct.scsi_tape** %8, align 8
  %102 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* @MT_ST_NO_BLKLIMS, align 4
  br label %108

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ]
  %110 = load i32, i32* %9, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %9, align 4
  %112 = load %struct.scsi_tape*, %struct.scsi_tape** %8, align 8
  %113 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* @MT_ST_CAN_PARTITIONS, align 4
  br label %119

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %118 ]
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  %123 = load %struct.scsi_tape*, %struct.scsi_tape** %8, align 8
  %124 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* @MT_ST_SCSI2LOGICAL, align 4
  br label %130

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi i32 [ %128, %127 ], [ 0, %129 ]
  %132 = load i32, i32* %9, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %9, align 4
  %134 = load %struct.st_modedef*, %struct.st_modedef** %7, align 8
  %135 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load i32, i32* @MT_ST_SYSV, align 4
  br label %141

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i32 [ %139, %138 ], [ 0, %140 ]
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  %145 = load %struct.scsi_tape*, %struct.scsi_tape** %8, align 8
  %146 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* @MT_ST_NOWAIT, align 4
  br label %152

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151, %149
  %153 = phi i32 [ %150, %149 ], [ 0, %151 ]
  %154 = load i32, i32* %9, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %9, align 4
  %156 = load %struct.scsi_tape*, %struct.scsi_tape** %8, align 8
  %157 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load i32, i32* @MT_ST_NOWAIT_EOF, align 4
  br label %163

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %162, %160
  %164 = phi i32 [ %161, %160 ], [ 0, %162 ]
  %165 = load i32, i32* %9, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %9, align 4
  %167 = load %struct.scsi_tape*, %struct.scsi_tape** %8, align 8
  %168 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %163
  %172 = load i32, i32* @MT_ST_SILI, align 4
  br label %174

173:                                              ; preds = %163
  br label %174

174:                                              ; preds = %173, %171
  %175 = phi i32 [ %172, %171 ], [ 0, %173 ]
  %176 = load i32, i32* %9, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %9, align 4
  %178 = load i8*, i8** %6, align 8
  %179 = load i32, i32* @PAGE_SIZE, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @snprintf(i8* %178, i32 %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %180)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  ret i32 %182
}

declare dso_local %struct.st_modedef* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
