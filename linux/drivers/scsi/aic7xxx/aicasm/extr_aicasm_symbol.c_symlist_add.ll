; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/aicasm/extr_aicasm_symbol.c_symlist_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/aicasm/extr_aicasm_symbol.c_symlist_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }

@.str = private unnamed_addr constant [42 x i8] c"symlist_add: Unable to malloc symbol_node\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@SYMLIST_SORT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"symlist_add: Invalid symbol type for sorting\00", align 1
@links = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @symlist_add(i32* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i64 @malloc(i32 8)
  %12 = inttoptr i64 %11 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %7, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %14 = icmp eq %struct.TYPE_17__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EX_SOFTWARE, align 4
  %17 = call i32 @stop(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SYMLIST_SORT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %189

25:                                               ; preds = %18
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  switch i64 %29, label %33 [
    i64 130, label %30
    i64 129, label %30
    i64 128, label %30
    i64 132, label %31
    i64 131, label %31
    i64 134, label %31
    i64 133, label %31
  ]

30:                                               ; preds = %25, %25, %25
  br label %36

31:                                               ; preds = %25, %25, %25, %25
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %9, align 4
  br label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EX_SOFTWARE, align 4
  %35 = call i32 @stop(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %31, %30
  %37 = load i32*, i32** %4, align 8
  %38 = call %struct.TYPE_17__* @SLIST_FIRST(i32* %37)
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %8, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %40 = icmp eq %struct.TYPE_17__* %39, null
  br i1 %40, label %107, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %86

44:                                               ; preds = %41
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %49, %54
  br i1 %55, label %107, label %56

56:                                               ; preds = %44
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %61, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %56
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %76, %84
  br i1 %85, label %107, label %86

86:                                               ; preds = %68, %56, %41
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %112, label %89

89:                                               ; preds = %86
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %97, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %89, %68, %44, %36
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = load i32, i32* @links, align 4
  %111 = call i32 @SLIST_INSERT_HEAD(i32* %108, %struct.TYPE_17__* %109, i32 %110)
  br label %194

112:                                              ; preds = %89, %86
  br label %113

113:                                              ; preds = %112, %184
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %115 = load i32, i32* @links, align 4
  %116 = call %struct.TYPE_17__* @SLIST_NEXT(%struct.TYPE_17__* %114, i32 %115)
  %117 = icmp eq %struct.TYPE_17__* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %121 = load i32, i32* @links, align 4
  %122 = call i32 @SLIST_INSERT_AFTER(%struct.TYPE_17__* %119, %struct.TYPE_17__* %120, i32 %121)
  br label %188

123:                                              ; preds = %113
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %125 = load i32, i32* @links, align 4
  %126 = call %struct.TYPE_17__* @SLIST_NEXT(%struct.TYPE_17__* %124, i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  store %struct.TYPE_16__* %128, %struct.TYPE_16__** %10, align 8
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %161

131:                                              ; preds = %123
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp sgt i64 %134, %137
  br i1 %138, label %178, label %139

139:                                              ; preds = %131
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %142, %145
  br i1 %146, label %147, label %161

147:                                              ; preds = %139
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp sgt i64 %153, %159
  br i1 %160, label %178, label %161

161:                                              ; preds = %147, %139, %123
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %183, label %164

164:                                              ; preds = %161
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %170, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %164, %147, %131
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %181 = load i32, i32* @links, align 4
  %182 = call i32 @SLIST_INSERT_AFTER(%struct.TYPE_17__* %179, %struct.TYPE_17__* %180, i32 %181)
  br label %188

183:                                              ; preds = %164, %161
  br label %184

184:                                              ; preds = %183
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %186 = load i32, i32* @links, align 4
  %187 = call %struct.TYPE_17__* @SLIST_NEXT(%struct.TYPE_17__* %185, i32 %186)
  store %struct.TYPE_17__* %187, %struct.TYPE_17__** %8, align 8
  br label %113

188:                                              ; preds = %178, %118
  br label %194

189:                                              ; preds = %18
  %190 = load i32*, i32** %4, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %192 = load i32, i32* @links, align 4
  %193 = call i32 @SLIST_INSERT_HEAD(i32* %190, %struct.TYPE_17__* %191, i32 %192)
  br label %194

194:                                              ; preds = %107, %189, %188
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @stop(i8*, i32) #1

declare dso_local %struct.TYPE_17__* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_17__* @SLIST_NEXT(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @SLIST_INSERT_AFTER(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
