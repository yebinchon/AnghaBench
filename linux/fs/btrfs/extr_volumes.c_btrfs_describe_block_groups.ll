; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_volumes.c_btrfs_describe_block_groups.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_volumes.c_btrfs_describe_block_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@BTRFS_BLOCK_GROUP_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s|\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@BTRFS_BLOCK_GROUP_SYSTEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@BTRFS_BLOCK_GROUP_METADATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@BTRFS_AVAIL_ALLOC_BIT_SINGLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@BTRFS_NR_RAID_TYPES = common dso_local global i32 0, align 4
@btrfs_raid_array = common dso_local global %struct.TYPE_2__* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"0x%llx|\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_describe_block_groups(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %240

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* @BTRFS_BLOCK_GROUP_DATA, align 4
  %24 = sext i32 %23 to i64
  %25 = and i64 %22, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %21
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @snprintf(i8* %28, i64 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 ptrtoint ([5 x i8]* @.str.2 to i64))
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %11, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %27
  br label %240

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %11, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* %11, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %9, align 8
  %48 = load i32, i32* @BTRFS_BLOCK_GROUP_DATA, align 4
  %49 = xor i32 %48, -1
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %10, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %39, %21
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* @BTRFS_BLOCK_GROUP_SYSTEM, align 4
  %58 = sext i32 %57 to i64
  %59 = and i64 %56, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %55
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @snprintf(i8* %62, i64 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 ptrtoint ([7 x i8]* @.str.3 to i64))
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %11, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %61
  br label %240

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %11, align 8
  %77 = sub nsw i64 %76, %75
  store i64 %77, i64* %11, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i8*, i8** %9, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %9, align 8
  %82 = load i32, i32* @BTRFS_BLOCK_GROUP_SYSTEM, align 4
  %83 = xor i32 %82, -1
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %10, align 8
  %86 = and i64 %85, %84
  store i64 %86, i64* %10, align 8
  br label %87

87:                                               ; preds = %73, %55
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %10, align 8
  %91 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  %92 = sext i32 %91 to i64
  %93 = and i64 %90, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %89
  %96 = load i8*, i8** %9, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @snprintf(i8* %96, i64 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 ptrtoint ([9 x i8]* @.str.4 to i64))
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %11, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %101, %95
  br label %240

107:                                              ; preds = %101
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %11, align 8
  %111 = sub nsw i64 %110, %109
  store i64 %111, i64* %11, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i8*, i8** %9, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %9, align 8
  %116 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  %117 = xor i32 %116, -1
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %10, align 8
  %120 = and i64 %119, %118
  store i64 %120, i64* %10, align 8
  br label %121

121:                                              ; preds = %107, %89
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %10, align 8
  %125 = load i32, i32* @BTRFS_AVAIL_ALLOC_BIT_SINGLE, align 4
  %126 = sext i32 %125 to i64
  %127 = and i64 %124, %126
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %155

129:                                              ; preds = %123
  %130 = load i8*, i8** %9, align 8
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @snprintf(i8* %130, i64 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 ptrtoint ([7 x i8]* @.str.5 to i64))
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %11, align 8
  %139 = icmp sge i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %135, %129
  br label %240

141:                                              ; preds = %135
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %11, align 8
  %145 = sub nsw i64 %144, %143
  store i64 %145, i64* %11, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i8*, i8** %9, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %9, align 8
  %150 = load i32, i32* @BTRFS_AVAIL_ALLOC_BIT_SINGLE, align 4
  %151 = xor i32 %150, -1
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* %10, align 8
  %154 = and i64 %153, %152
  store i64 %154, i64* %10, align 8
  br label %155

155:                                              ; preds = %141, %123
  br label %156

156:                                              ; preds = %155
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %213, %156
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @BTRFS_NR_RAID_TYPES, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %216

161:                                              ; preds = %157
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %10, align 8
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** @btrfs_raid_array, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = and i64 %163, %170
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %211

173:                                              ; preds = %162
  %174 = load i8*, i8** %9, align 8
  %175 = load i64, i64* %11, align 8
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** @btrfs_raid_array, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = ptrtoint i8* %181 to i64
  %183 = call i32 @snprintf(i8* %174, i64 %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %173
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %11, align 8
  %190 = icmp sge i64 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %186, %173
  br label %240

192:                                              ; preds = %186
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = load i64, i64* %11, align 8
  %196 = sub nsw i64 %195, %194
  store i64 %196, i64* %11, align 8
  %197 = load i32, i32* %8, align 4
  %198 = load i8*, i8** %9, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %9, align 8
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** @btrfs_raid_array, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = xor i32 %206, -1
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* %10, align 8
  %210 = and i64 %209, %208
  store i64 %210, i64* %10, align 8
  br label %211

211:                                              ; preds = %192, %162
  br label %212

212:                                              ; preds = %211
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %157

216:                                              ; preds = %157
  %217 = load i64, i64* %10, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %216
  %220 = load i8*, i8** %9, align 8
  %221 = load i64, i64* %11, align 8
  %222 = load i64, i64* %10, align 8
  %223 = call i32 @snprintf(i8* %220, i64 %221, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 %222)
  store i32 %223, i32* %8, align 4
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = load i64, i64* %11, align 8
  %227 = sub nsw i64 %226, %225
  store i64 %227, i64* %11, align 8
  br label %228

228:                                              ; preds = %219, %216
  %229 = load i64, i64* %11, align 8
  %230 = load i64, i64* %6, align 8
  %231 = icmp slt i64 %229, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %228
  %233 = load i8*, i8** %5, align 8
  %234 = load i64, i64* %6, align 8
  %235 = load i64, i64* %11, align 8
  %236 = sub nsw i64 %234, %235
  %237 = sub nsw i64 %236, 1
  %238 = getelementptr inbounds i8, i8* %233, i64 %237
  store i8 0, i8* %238, align 1
  br label %239

239:                                              ; preds = %232, %228
  br label %240

240:                                              ; preds = %17, %239, %191, %140, %106, %72, %38
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
