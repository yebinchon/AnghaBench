; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclinkmp.c_alloc_buf_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclinkmp.c_alloc_buf_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__*, i64, %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_8__*, i64, %struct.TYPE_7__**, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@BUFFERLISTSIZE = common dso_local global i64 0, align 8
@SCABUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @alloc_buf_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_buf_list(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 9
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 8
  %9 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %9, i64 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %6, %13
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 7
  store i64 %14, i64* %16, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 8
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %19, i64 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* @BUFFERLISTSIZE, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 8
  %29 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %29, i64 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, %26
  store i64 %34, i64* %32, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BUFFERLISTSIZE, align 8
  %39 = call i32 @memset(i64 %37, i32 0, i64 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_11__*
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 5
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.TYPE_11__*
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = zext i32 %54 to i64
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %58
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %56, align 8
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %121, %1
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %124

66:                                               ; preds = %60
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @SCABUFSIZE, align 4
  %72 = mul i32 %70, %71
  %73 = zext i32 %72 to i64
  %74 = add nsw i64 %69, %73
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 6
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i64 %74, i64* %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 5
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  store i64 %84, i64* %91, align 8
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub i32 %95, 1
  %97 = icmp ult i32 %92, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %66
  %99 = load i32, i32* %3, align 4
  %100 = add i32 %99, 1
  %101 = zext i32 %100 to i64
  %102 = mul i64 %101, 16
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, %102
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %98, %66
  %113 = load i32, i32* @SCABUFSIZE, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 8
  br label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %3, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %60

124:                                              ; preds = %60
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %187, %124
  %126 = load i32, i32* %3, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ult i32 %126, %129
  br i1 %130, label %131, label %190

131:                                              ; preds = %125
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %3, align 4
  %139 = add i32 %137, %138
  %140 = zext i32 %139 to i64
  %141 = mul i64 %140, 16
  %142 = add i64 %134, %141
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = load i32, i32* %3, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  store i64 %142, i64* %149, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = zext i32 %155 to i64
  %157 = mul i64 %156, 16
  %158 = add i64 %152, %157
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = load i32, i32* %3, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  store i64 %158, i64* %165, align 8
  %166 = load i32, i32* %3, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sub i32 %169, 1
  %171 = icmp ult i32 %166, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %131
  %173 = load i32, i32* %3, align 4
  %174 = add i32 %173, 1
  %175 = zext i32 %174 to i64
  %176 = mul i64 %175, 16
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = load i32, i32* %3, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = add i64 %184, %176
  store i64 %185, i64* %183, align 8
  br label %186

186:                                              ; preds = %172, %131
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %3, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %3, align 4
  br label %125

190:                                              ; preds = %125
  ret i32 0
}

declare dso_local i32 @memset(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
