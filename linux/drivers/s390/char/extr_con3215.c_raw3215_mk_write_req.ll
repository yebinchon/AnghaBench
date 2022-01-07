; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_mk_write_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_mk_write_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i32, i32, i32, i32*, %struct.raw3215_req* }
%struct.raw3215_req = type { i32, i32, i32, %struct.ccw1*, %struct.raw3215_info*, i32 }
%struct.ccw1 = type { i32, i32, i32, i64 }

@RAW3215_WRITE = common dso_local global i32 0, align 4
@RAW3215_BUFFER_SIZE = common dso_local global i32 0, align 4
@RAW3215_MAX_NEWLINE = common dso_local global i32 0, align 4
@RAW3215_MAX_BYTES = common dso_local global i32 0, align 4
@RAW3215_MIN_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3215_info*)* @raw3215_mk_write_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_mk_write_req(%struct.raw3215_info* %0) #0 {
  %2 = alloca %struct.raw3215_info*, align 8
  %3 = alloca %struct.raw3215_req*, align 8
  %4 = alloca %struct.ccw1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.raw3215_info* %0, %struct.raw3215_info** %2, align 8
  %9 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %10 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %13 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %212

17:                                               ; preds = %1
  %18 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %19 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %18, i32 0, i32 4
  %20 = load %struct.raw3215_req*, %struct.raw3215_req** %19, align 8
  store %struct.raw3215_req* %20, %struct.raw3215_req** %3, align 8
  %21 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %22 = icmp eq %struct.raw3215_req* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = call %struct.raw3215_req* (...) @raw3215_alloc_req()
  store %struct.raw3215_req* %24, %struct.raw3215_req** %3, align 8
  %25 = load i32, i32* @RAW3215_WRITE, align 4
  %26 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %27 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %29 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %30 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %29, i32 0, i32 4
  store %struct.raw3215_info* %28, %struct.raw3215_info** %30, align 8
  %31 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %32 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %33 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %32, i32 0, i32 4
  store %struct.raw3215_req* %31, %struct.raw3215_req** %33, align 8
  br label %42

34:                                               ; preds = %17
  %35 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %36 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %39 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %34, %23
  %43 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %44 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %43, i32 0, i32 3
  %45 = load %struct.ccw1*, %struct.ccw1** %44, align 8
  store %struct.ccw1* %45, %struct.ccw1** %4, align 8
  %46 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %47 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %50 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %48, %51
  %53 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %54 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = load i32, i32* @RAW3215_BUFFER_SIZE, align 4
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %56, %58
  %60 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %61 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %8, align 4
  %62 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %63 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %89, %42
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @RAW3215_MAX_NEWLINE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %72 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %70, %73
  br label %75

75:                                               ; preds = %69, %65
  %76 = phi i1 [ false, %65 ], [ %74, %69 ]
  br i1 %76, label %77, label %95

77:                                               ; preds = %75
  %78 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %79 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 21
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %86, %77
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* @RAW3215_BUFFER_SIZE, align 4
  %93 = sub nsw i32 %92, 1
  %94 = and i32 %91, %93
  store i32 %94, i32* %7, align 4
  br label %65

95:                                               ; preds = %75
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %96, 1
  %98 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %99 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %97, %100
  %102 = load i32, i32* @RAW3215_BUFFER_SIZE, align 4
  %103 = sub nsw i32 %102, 1
  %104 = and i32 %101, %103
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @RAW3215_MAX_BYTES, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %95
  %110 = load i32, i32* @RAW3215_MAX_BYTES, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %95
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %114 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %117 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %122 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %111
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @RAW3215_MIN_WRITE, align 4
  %128 = icmp slt i32 %126, %127
  br label %129

129:                                              ; preds = %125, %111
  %130 = phi i1 [ false, %111 ], [ %128, %125 ]
  %131 = zext i1 %130 to i32
  %132 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %133 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %135 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %176, %129
  %138 = load i32, i32* %5, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %191

140:                                              ; preds = %137
  %141 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %142 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %143 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %142, i32 0, i32 3
  %144 = load %struct.ccw1*, %struct.ccw1** %143, align 8
  %145 = icmp ugt %struct.ccw1* %141, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %148 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %147, i64 -1
  %149 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, 64
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %146, %140
  %153 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %154 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %153, i32 0, i32 1
  store i32 1, i32* %154, align 4
  %155 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %156 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %155, i32 0, i32 0
  store i32 32, i32* %156, align 8
  %157 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %158 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = call i64 @__pa(i32* %162)
  %164 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %165 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %164, i32 0, i32 3
  store i64 %163, i64* %165, align 8
  %166 = load i32, i32* %5, align 4
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32, i32* @RAW3215_BUFFER_SIZE, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %152
  %173 = load i32, i32* @RAW3215_BUFFER_SIZE, align 4
  %174 = load i32, i32* %7, align 4
  %175 = sub nsw i32 %173, %174
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %172, %152
  %177 = load i32, i32* %6, align 4
  %178 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %179 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %5, align 4
  %182 = sub nsw i32 %181, %180
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %183, %184
  %186 = load i32, i32* @RAW3215_BUFFER_SIZE, align 4
  %187 = sub nsw i32 %186, 1
  %188 = and i32 %185, %187
  store i32 %188, i32* %7, align 4
  %189 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %190 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %189, i32 1
  store %struct.ccw1* %190, %struct.ccw1** %4, align 8
  br label %137

191:                                              ; preds = %137
  %192 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %193 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %194 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %193, i32 0, i32 3
  %195 = load %struct.ccw1*, %struct.ccw1** %194, align 8
  %196 = icmp ugt %struct.ccw1* %192, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %191
  %198 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %199 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %198, i64 -1
  %200 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, 64
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %197, %191
  %204 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %205 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %204, i32 0, i32 1
  store i32 3, i32* %205, align 4
  %206 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %207 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %206, i32 0, i32 0
  store i32 0, i32* %207, align 8
  %208 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %209 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %208, i32 0, i32 3
  store i64 0, i64* %209, align 8
  %210 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %211 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %210, i32 0, i32 2
  store i32 1, i32* %211, align 8
  br label %212

212:                                              ; preds = %203, %16
  ret void
}

declare dso_local %struct.raw3215_req* @raw3215_alloc_req(...) #1

declare dso_local i64 @__pa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
