; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_st_do_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_st_do_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.request = type { i32 }
%struct.TYPE_8__ = type { i64*, i64 }

@WRITE_6 = common dso_local global i64 0, align 8
@READ_6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_tape*, %struct.request*)* @st_do_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_do_stats(%struct.scsi_tape* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.scsi_tape*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_tape* %0, %struct.scsi_tape** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = call i32 (...) @ktime_get()
  store i32 %6, i32* %5, align 4
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = call %struct.TYPE_8__* @scsi_req(%struct.request* %7)
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @WRITE_6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %91

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ktime_sub(i32 %16, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @ktime_to_ns(i32 %23)
  %25 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 13
  %29 = call i32 @atomic64_add(i64 %24, i32* %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @ktime_to_ns(i32 %30)
  %32 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = call i32 @atomic64_add(i64 %31, i32* %35)
  %37 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 12
  %41 = call i32 @atomic64_inc(i32* %40)
  %42 = load %struct.request*, %struct.request** %4, align 8
  %43 = call %struct.TYPE_8__* @scsi_req(%struct.request* %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %79

47:                                               ; preds = %15
  %48 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %49 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 11
  %52 = call i64 @atomic_read(i32* %51)
  %53 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %54 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %52, %58
  %60 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %61 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 10
  %64 = call i32 @atomic64_add(i64 %59, i32* %63)
  %65 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %66 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %47
  %73 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %74 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 6
  %77 = call i32 @atomic64_inc(i32* %76)
  br label %78

78:                                               ; preds = %72, %47
  br label %90

79:                                               ; preds = %15
  %80 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %81 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 11
  %84 = call i64 @atomic_read(i32* %83)
  %85 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %86 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 10
  %89 = call i32 @atomic64_add(i64 %84, i32* %88)
  br label %90

90:                                               ; preds = %79, %78
  br label %197

91:                                               ; preds = %2
  %92 = load %struct.request*, %struct.request** %4, align 8
  %93 = call %struct.TYPE_8__* @scsi_req(%struct.request* %92)
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @READ_6, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %176

100:                                              ; preds = %91
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %103 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ktime_sub(i32 %101, i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i64 @ktime_to_ns(i32 %108)
  %110 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %111 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 8
  %114 = call i32 @atomic64_add(i64 %109, i32* %113)
  %115 = load i32, i32* %5, align 4
  %116 = call i64 @ktime_to_ns(i32 %115)
  %117 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %118 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = call i32 @atomic64_add(i64 %116, i32* %120)
  %122 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %123 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 7
  %126 = call i32 @atomic64_inc(i32* %125)
  %127 = load %struct.request*, %struct.request** %4, align 8
  %128 = call %struct.TYPE_8__* @scsi_req(%struct.request* %127)
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %164

132:                                              ; preds = %100
  %133 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %134 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 5
  %137 = call i64 @atomic_read(i32* %136)
  %138 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %139 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %138, i32 0, i32 1
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %137, %143
  %145 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %146 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 4
  %149 = call i32 @atomic64_add(i64 %144, i32* %148)
  %150 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %151 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %150, i32 0, i32 1
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %132
  %158 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %159 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %158, i32 0, i32 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 6
  %162 = call i32 @atomic64_inc(i32* %161)
  br label %163

163:                                              ; preds = %157, %132
  br label %175

164:                                              ; preds = %100
  %165 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %166 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %165, i32 0, i32 0
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 5
  %169 = call i64 @atomic_read(i32* %168)
  %170 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %171 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %170, i32 0, i32 0
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 4
  %174 = call i32 @atomic64_add(i64 %169, i32* %173)
  br label %175

175:                                              ; preds = %164, %163
  br label %196

176:                                              ; preds = %91
  %177 = load i32, i32* %5, align 4
  %178 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %179 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %178, i32 0, i32 0
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @ktime_sub(i32 %177, i32 %182)
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %5, align 4
  %185 = call i64 @ktime_to_ns(i32 %184)
  %186 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %187 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %186, i32 0, i32 0
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  %190 = call i32 @atomic64_add(i64 %185, i32* %189)
  %191 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %192 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %191, i32 0, i32 0
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = call i32 @atomic64_inc(i32* %194)
  br label %196

196:                                              ; preds = %176, %175
  br label %197

197:                                              ; preds = %196, %90
  %198 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %199 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %198, i32 0, i32 0
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = call i32 @atomic64_dec(i32* %201)
  ret void
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local %struct.TYPE_8__* @scsi_req(%struct.request*) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @atomic64_add(i64, i32*) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic64_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
