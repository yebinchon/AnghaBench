; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_log_set_indices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_log_set_indices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arena_info = type { i64, i32* }
%struct.log_group = type { i32* }

@__const.log_set_indices.log_index = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Found an unknown padding scheme\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"log_index_0 = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"log_index_1 = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arena_info*)* @log_set_indices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_set_indices(%struct.arena_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arena_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.log_group, align 8
  %12 = alloca i64, align 8
  store %struct.arena_info* %0, %struct.arena_info** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %13 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([2 x i32]* @__const.log_set_indices.log_index to i8*), i64 8, i1 false)
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %120, %1
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %17 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %123

20:                                               ; preds = %14
  %21 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @btt_log_group_read(%struct.arena_info* %21, i64 %22, %struct.log_group* %11)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %179

28:                                               ; preds = %20
  store i64 0, i64* %9, align 8
  br label %29

29:                                               ; preds = %112, %28
  %30 = load i64, i64* %9, align 8
  %31 = icmp slt i64 %30, 4
  br i1 %31, label %32, label %115

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %74, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.log_group, %struct.log_group* %11, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i64 @ent_is_padding(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i64, i64* %12, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %12, align 8
  br label %112

45:                                               ; preds = %35
  %46 = load i64, i64* %10, align 8
  %47 = icmp eq i64 %46, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %112

55:                                               ; preds = %48, %45
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %58
  store i32 %57, i32* %59, align 4
  %60 = load i64, i64* %10, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %55
  %63 = load i64, i64* %10, align 8
  %64 = icmp eq i64 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* %4, align 4
  br label %73

66:                                               ; preds = %62
  %67 = load i64, i64* %10, align 8
  %68 = icmp sgt i64 %67, 2
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @ENXIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %179

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %65
  br label %111

74:                                               ; preds = %32
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.log_group, %struct.log_group* %11, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = call i64 @ent_is_padding(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @ENXIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %179

90:                                               ; preds = %80
  br label %110

91:                                               ; preds = %74
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %109

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.log_group, %struct.log_group* %11, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = call i64 @ent_is_padding(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* @ENXIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %179

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %97
  br label %110

110:                                              ; preds = %109, %90
  br label %111

111:                                              ; preds = %110, %73
  br label %112

112:                                              ; preds = %111, %54, %42
  %113 = load i64, i64* %9, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %9, align 8
  br label %29

115:                                              ; preds = %29
  %116 = load i64, i64* %12, align 8
  %117 = icmp slt i64 %116, 3
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %115
  store i64 0, i64* %12, align 8
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %8, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %8, align 8
  br label %14

123:                                              ; preds = %14
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* @ENXIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %179

132:                                              ; preds = %126, %123
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 1, i32* %136, align 4
  br label %137

137:                                              ; preds = %135, %132
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %150

149:                                              ; preds = %145, %141
  br label %156

150:                                              ; preds = %145, %137
  %151 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %152 = call i32 @to_dev(%struct.arena_info* %151)
  %153 = call i32 @dev_err(i32 %152, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %154 = load i32, i32* @ENXIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %179

156:                                              ; preds = %149
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %160 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  store i32 %158, i32* %162, align 4
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %166 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 %164, i32* %168, align 4
  %169 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %170 = call i32 @to_dev(%struct.arena_info* %169)
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @dev_dbg(i32 %170, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %172)
  %174 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %175 = call i32 @to_dev(%struct.arena_info* %174)
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @dev_dbg(i32 %175, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %177)
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %156, %150, %129, %105, %87, %69, %26
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @btt_log_group_read(%struct.arena_info*, i64, %struct.log_group*) #2

declare dso_local i64 @ent_is_padding(i32*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @to_dev(%struct.arena_info*) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
