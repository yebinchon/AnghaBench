; ModuleID = '/home/carl/AnghaBench/linux/drivers/zorro/extr_gen-devlist.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/zorro/extr_gen-devlist.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"devlist.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot create output file!\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@MAX_NAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Line %d: Product name too long\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\09PRODUCT(%s,%s,\22\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\22)\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"ENDMANUF()\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Line %d: manufacturer name too long\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"MANUF(%s,\22\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Line %d: Syntax error in mode %d: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"ENDMANUF()\0A\0A#undef MANUF\0A#undef PRODUCT\0A#undef ENDMANUF\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [8 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = call i32* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %10, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %189

17:                                               ; preds = %0
  br label %18

18:                                               ; preds = %183, %40, %17
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %20 = load i32, i32* @stdin, align 4
  %21 = call i64 @fgets(i8* %19, i32 1023, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %184

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %27 = call i8* @strchr(i8* %26, i8 signext 10)
  store i8* %27, i8** %3, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  store i8 0, i8* %30, align 1
  br label %31

31:                                               ; preds = %29, %23
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %33 = load i8, i8* %32, align 16
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %37 = load i8, i8* %36, align 16
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 35
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %31
  br label %18

41:                                               ; preds = %35
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %43 = load i8, i8* %42, align 16
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 9
  br i1 %45, label %46, label %123

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  switch i32 %47, label %121 [
    i32 1, label %48
  ]

48:                                               ; preds = %46
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %50 = call i32 @strlen(i8* %49)
  %51 = icmp sgt i32 %50, 5
  br i1 %51, label %52, label %119

52:                                               ; preds = %48
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 5
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %57, label %119

57:                                               ; preds = %52
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %59 = getelementptr inbounds i8, i8* %58, i64 5
  store i8* %59, i8** %3, align 8
  br label %60

60:                                               ; preds = %65, %57
  %61 = load i8*, i8** %3, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 32
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %3, align 8
  store i8 0, i8* %66, align 1
  br label %60

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = add nsw i32 %69, %71
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* @MAX_NAME_SIZE, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %68
  %77 = load i8*, i8** %3, align 8
  %78 = call i8* @strchr(i8* %77, i8 signext 91)
  store i8* %78, i8** %4, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load i8*, i8** %4, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = icmp ugt i8* %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 -1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 32
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 -1
  store i8 0, i8* %93, align 1
  br label %94

94:                                               ; preds = %91, %85, %81, %76
  %95 = load i32, i32* %9, align 4
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = add nsw i32 %95, %97
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* @MAX_NAME_SIZE, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load i32, i32* @stderr, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  store i32 1, i32* %1, align 4
  br label %189

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %68
  %108 = load i32*, i32** %10, align 8
  %109 = ptrtoint i32* %108 to i32
  %110 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %110, i8* %112)
  %114 = load i32*, i32** %10, align 8
  %115 = load i8*, i8** %3, align 8
  %116 = call i32 @pq(i32* %114, i8* %115)
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %117)
  br label %120

119:                                              ; preds = %52, %48
  br label %176

120:                                              ; preds = %107
  br label %122

121:                                              ; preds = %46
  br label %176

122:                                              ; preds = %120
  br label %183

123:                                              ; preds = %41
  %124 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %125 = call i32 @strlen(i8* %124)
  %126 = icmp sgt i32 %125, 4
  br i1 %126, label %127, label %175

127:                                              ; preds = %123
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 4
  %129 = load i8, i8* %128, align 4
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 32
  br i1 %131, label %132, label %175

132:                                              ; preds = %127
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %134 = getelementptr inbounds i8, i8* %133, i64 4
  store i8* %134, i8** %3, align 8
  br label %135

135:                                              ; preds = %140, %132
  %136 = load i8*, i8** %3, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 32
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i8*, i8** %3, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %3, align 8
  store i8 0, i8* %141, align 1
  br label %135

143:                                              ; preds = %135
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32*, i32** %10, align 8
  %148 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  %152 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %153 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %154 = call i32 @strcpy(i8* %152, i8* %153)
  %155 = load i8*, i8** %3, align 8
  %156 = call i32 @strlen(i8* %155)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 24
  %159 = load i32, i32* @MAX_NAME_SIZE, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %149
  %162 = load i32, i32* @stderr, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %162, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %163)
  store i32 1, i32* %1, align 4
  br label %189

165:                                              ; preds = %149
  %166 = load i32*, i32** %10, align 8
  %167 = ptrtoint i32* %166 to i32
  %168 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %169 = call i32 (i32, i8*, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %168)
  %170 = load i32*, i32** %10, align 8
  %171 = load i8*, i8** %3, align 8
  %172 = call i32 @pq(i32* %170, i8* %171)
  %173 = load i32*, i32** %10, align 8
  %174 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %173)
  store i32 1, i32* %7, align 4
  br label %182

175:                                              ; preds = %127, %123
  br label %176

176:                                              ; preds = %175, %121, %119
  %177 = load i32, i32* @stderr, align 4
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %7, align 4
  %180 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %181 = call i32 (i32, i8*, ...) @fprintf(i32 %177, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %178, i32 %179, i8* %180)
  store i32 1, i32* %1, align 4
  br label %189

182:                                              ; preds = %165
  br label %183

183:                                              ; preds = %182, %122
  br label %18

184:                                              ; preds = %18
  %185 = load i32*, i32** %10, align 8
  %186 = call i32 @fputs(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32* %185)
  %187 = load i32*, i32** %10, align 8
  %188 = call i32 @fclose(i32* %187)
  store i32 0, i32* %1, align 4
  br label %189

189:                                              ; preds = %184, %176, %161, %102, %14
  %190 = load i32, i32* %1, align 4
  ret i32 %190
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pq(i32*, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
