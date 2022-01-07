; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_boot.c_EvalSysrTokData.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_boot.c_EvalSysrTokData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8, i8, i32 }

@LOG_POF_RECORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SysReady Token data length %d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"SysReady Token Data to short\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"SysReady Token Data invalid CRC\00", align 1
@SYSR_TOK_END = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"token 0x%x invalid length %d\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"unknown token 0x%02x length %d\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"no end token found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EvalSysrTokData(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @LOG_POF_RECORD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (%struct.TYPE_4__*, i8*, ...) @hysdn_addlog(%struct.TYPE_4__* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = call i32 (%struct.TYPE_4__*, i8*, ...) @hysdn_addlog(%struct.TYPE_4__* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %191

26:                                               ; preds = %20
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %8, align 8
  store i8 0, i8* %9, align 1
  br label %28

28:                                               ; preds = %65, %26
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = getelementptr inbounds i8, i8* %33, i64 -2
  %35 = icmp ult i8* %29, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %28
  %37 = load i8, i8* %9, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load i8, i8* %9, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 1
  %45 = trunc i32 %44 to i8
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %46, 1
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %47, %50
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %9, align 1
  br label %64

53:                                               ; preds = %36
  %54 = load i8, i8* %9, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 1
  %57 = trunc i32 %56 to i8
  %58 = zext i8 %57 to i32
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %58, %61
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %9, align 1
  br label %64

64:                                               ; preds = %53, %41
  br label %65

65:                                               ; preds = %64
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %8, align 8
  br label %28

68:                                               ; preds = %28
  %69 = load i8, i8* %9, align 1
  %70 = zext i8 %69 to i32
  %71 = xor i32 %70, -1
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %9, align 1
  %73 = load i8, i8* %9, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = getelementptr inbounds i8, i8* %78, i64 -1
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %74, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = call i32 (%struct.TYPE_4__*, i8*, ...) @hysdn_addlog(%struct.TYPE_4__* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %191

86:                                               ; preds = %68
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %172, %86
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %188

92:                                               ; preds = %89
  %93 = load i8*, i8** %6, align 8
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8, i8* @SYSR_TOK_END, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i32 0, i32* %4, align 4
  br label %191

100:                                              ; preds = %92
  %101 = load i32, i32* %7, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = add nsw i32 %105, 2
  %107 = icmp slt i32 %101, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %100
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = call i32 (%struct.TYPE_4__*, i8*, ...) @hysdn_addlog(%struct.TYPE_4__* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %116)
  store i32 1, i32* %4, align 4
  br label %191

118:                                              ; preds = %100
  %119 = load i8*, i8** %6, align 8
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  switch i32 %121, label %162 [
    i32 130, label %122
    i32 129, label %135
    i32 128, label %148
  ]

122:                                              ; preds = %118
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  store i32 1, i32* %4, align 4
  br label %191

129:                                              ; preds = %122
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  %132 = load i8, i8* %131, align 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i8 %132, i8* %134, align 4
  br label %172

135:                                              ; preds = %118
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp ne i32 %139, 1
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 1, i32* %4, align 4
  br label %191

142:                                              ; preds = %135
  %143 = load i8*, i8** %6, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 2
  %145 = load i8, i8* %144, align 1
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  store i8 %145, i8* %147, align 1
  br label %172

148:                                              ; preds = %118
  %149 = load i8*, i8** %6, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp ne i32 %152, 6
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i32 1, i32* %4, align 4
  br label %191

155:                                              ; preds = %148
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i8*, i8** %6, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 2
  %161 = call i32 @memcpy(i32 %158, i8* %160, i32 6)
  br label %172

162:                                              ; preds = %118
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %164 = load i8*, i8** %6, align 8
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = load i8*, i8** %6, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = call i32 (%struct.TYPE_4__*, i8*, ...) @hysdn_addlog(%struct.TYPE_4__* %163, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %166, i32 %170)
  br label %172

172:                                              ; preds = %162, %155, %142, %129
  %173 = load i8*, i8** %6, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = add nsw i32 %176, 2
  %178 = load i32, i32* %7, align 4
  %179 = sub nsw i32 %178, %177
  store i32 %179, i32* %7, align 4
  %180 = load i8*, i8** %6, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = add nsw i32 %183, 2
  %185 = load i8*, i8** %6, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  store i8* %187, i8** %6, align 8
  br label %89

188:                                              ; preds = %89
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %190 = call i32 (%struct.TYPE_4__*, i8*, ...) @hysdn_addlog(%struct.TYPE_4__* %189, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %191

191:                                              ; preds = %188, %154, %141, %128, %108, %99, %83, %23
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local i32 @hysdn_addlog(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
