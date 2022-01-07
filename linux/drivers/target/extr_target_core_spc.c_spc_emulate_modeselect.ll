; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_modeselect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_modeselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8, i32 (%struct.se_cmd*, i32, i8*)* }
%struct.se_cmd = type { i8*, i32 }

@MODE_SELECT_10 = common dso_local global i8 0, align 1
@SE_MODE_PAGE_BUF = common dso_local global i32 0, align 4
@GOOD = common dso_local global i32 0, align 4
@TCM_PARAMETER_LIST_LENGTH_ERROR = common dso_local global i64 0, align 8
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i64 0, align 8
@TCM_INVALID_CDB_FIELD = common dso_local global i64 0, align 8
@modesense_handlers = common dso_local global %struct.TYPE_3__* null, align 8
@TCM_UNKNOWN_MODE_PAGE = common dso_local global i64 0, align 8
@TCM_INVALID_PARAMETER_LIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.se_cmd*)* @spc_emulate_modeselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spc_emulate_modeselect(%struct.se_cmd* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %17 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* @MODE_SELECT_10, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 8, i32 4
  store i32 %31, i32* %6, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 %35, 16
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @SE_MODE_PAGE_BUF, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %11, align 8
  %44 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %12, align 8
  store i64 0, i64* %14, align 8
  %45 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %46 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %1
  %50 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %51 = load i32, i32* @GOOD, align 4
  %52 = call i32 @target_complete_cmd(%struct.se_cmd* %50, i32 %51)
  store i64 0, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %179

53:                                               ; preds = %1
  %54 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %55 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 2
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i64, i64* @TCM_PARAMETER_LIST_LENGTH_ERROR, align 8
  store i64 %61, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %179

62:                                               ; preds = %53
  %63 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %64 = call i8* @transport_kmap_data_sg(%struct.se_cmd* %63)
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 8
  store i64 %68, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %179

69:                                               ; preds = %62
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* @TCM_INVALID_CDB_FIELD, align 8
  store i64 %73, i64* %14, align 8
  br label %168

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 63
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %8, align 1
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 64
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %74
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  br label %100

99:                                               ; preds = %74
  br label %100

100:                                              ; preds = %99, %91
  %101 = phi i32 [ %98, %91 ], [ 0, %99 ]
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %9, align 1
  store i32 0, i32* %15, align 4
  br label %103

103:                                              ; preds = %142, %100
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modesense_handlers, align 8
  %106 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %105)
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %145

108:                                              ; preds = %103
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modesense_handlers, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i8, i8* %113, align 8
  %115 = zext i8 %114 to i32
  %116 = load i8, i8* %8, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %141

119:                                              ; preds = %108
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modesense_handlers, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = load i8, i8* %9, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %119
  %131 = load i32, i32* @SE_MODE_PAGE_BUF, align 4
  %132 = call i32 @memset(i8* %44, i32 0, i32 %131)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modesense_handlers, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i32 (%struct.se_cmd*, i32, i8*)*, i32 (%struct.se_cmd*, i32, i8*)** %137, align 8
  %139 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %140 = call i32 %138(%struct.se_cmd* %139, i32 0, i8* %44)
  store i32 %140, i32* %13, align 4
  br label %147

141:                                              ; preds = %119, %108
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  br label %103

145:                                              ; preds = %103
  %146 = load i64, i64* @TCM_UNKNOWN_MODE_PAGE, align 8
  store i64 %146, i64* %14, align 8
  br label %168

147:                                              ; preds = %130
  %148 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %149 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %151, %152
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i64, i64* @TCM_PARAMETER_LIST_LENGTH_ERROR, align 8
  store i64 %156, i64* %14, align 8
  br label %168

157:                                              ; preds = %147
  %158 = load i8*, i8** %10, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i32, i32* %13, align 4
  %163 = call i64 @memcmp(i8* %161, i8* %44, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %157
  %166 = load i64, i64* @TCM_INVALID_PARAMETER_LIST, align 8
  store i64 %166, i64* %14, align 8
  br label %167

167:                                              ; preds = %165, %157
  br label %168

168:                                              ; preds = %167, %155, %145, %72
  %169 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %170 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %169)
  %171 = load i64, i64* %14, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %168
  %174 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %175 = load i32, i32* @GOOD, align 4
  %176 = call i32 @target_complete_cmd(%struct.se_cmd* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %168
  %178 = load i64, i64* %14, align 8
  store i64 %178, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %179

179:                                              ; preds = %177, %67, %60, %49
  %180 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %180)
  %181 = load i64, i64* %2, align 8
  ret i64 %181
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #2

declare dso_local i8* @transport_kmap_data_sg(%struct.se_cmd*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @transport_kunmap_data_sg(%struct.se_cmd*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
