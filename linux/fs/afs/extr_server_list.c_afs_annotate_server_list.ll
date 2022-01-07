; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_server_list.c_afs_annotate_server_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_server_list.c_afs_annotate_server_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server_list = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.afs_server*, %struct.afs_cb_interest* }
%struct.afs_server = type { i32 }
%struct.afs_cb_interest = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_annotate_server_list(%struct.afs_server_list* %0, %struct.afs_server_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_server_list*, align 8
  %5 = alloca %struct.afs_server_list*, align 8
  %6 = alloca %struct.afs_server*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.afs_cb_interest*, align 8
  store %struct.afs_server_list* %0, %struct.afs_server_list** %4, align 8
  store %struct.afs_server_list* %1, %struct.afs_server_list** %5, align 8
  %10 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  %11 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.afs_server_list*, %struct.afs_server_list** %4, align 8
  %14 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %49

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %45, %18
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  %22 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  %27 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.afs_server*, %struct.afs_server** %32, align 8
  %34 = load %struct.afs_server_list*, %struct.afs_server_list** %4, align 8
  %35 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.afs_server*, %struct.afs_server** %40, align 8
  %42 = icmp ne %struct.afs_server* %33, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  br label %49

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %19

48:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %171

49:                                               ; preds = %43, %17
  %50 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  %51 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  %54 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.afs_server*, %struct.afs_server** %57, align 8
  store %struct.afs_server* %58, %struct.afs_server** %6, align 8
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %82, %49
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.afs_server_list*, %struct.afs_server_list** %4, align 8
  %62 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %59
  %66 = load %struct.afs_server_list*, %struct.afs_server_list** %4, align 8
  %67 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.afs_server*, %struct.afs_server** %72, align 8
  %74 = load %struct.afs_server*, %struct.afs_server** %6, align 8
  %75 = icmp eq %struct.afs_server* %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.afs_server_list*, %struct.afs_server_list** %4, align 8
  %80 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %85

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %59

85:                                               ; preds = %76, %59
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %167, %164, %141, %85
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  %89 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.afs_server_list*, %struct.afs_server_list** %4, align 8
  %95 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br label %98

98:                                               ; preds = %92, %86
  %99 = phi i1 [ false, %86 ], [ %97, %92 ]
  br i1 %99, label %100, label %170

100:                                              ; preds = %98
  %101 = load %struct.afs_server_list*, %struct.afs_server_list** %4, align 8
  %102 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load %struct.afs_server*, %struct.afs_server** %107, align 8
  %109 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  %110 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load %struct.afs_server*, %struct.afs_server** %115, align 8
  %117 = icmp eq %struct.afs_server* %108, %116
  br i1 %117, label %118, label %146

118:                                              ; preds = %100
  %119 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  %120 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %125, align 8
  store %struct.afs_cb_interest* %126, %struct.afs_cb_interest** %9, align 8
  %127 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %128 = icmp ne %struct.afs_cb_interest* %127, null
  br i1 %128, label %129, label %141

129:                                              ; preds = %118
  %130 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %131 = load %struct.afs_server_list*, %struct.afs_server_list** %4, align 8
  %132 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %131, i32 0, i32 2
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store %struct.afs_cb_interest* %130, %struct.afs_cb_interest** %137, align 8
  %138 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %139 = getelementptr inbounds %struct.afs_cb_interest, %struct.afs_cb_interest* %138, i32 0, i32 0
  %140 = call i32 @refcount_inc(i32* %139)
  br label %141

141:                                              ; preds = %129, %118
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %86

146:                                              ; preds = %100
  %147 = load %struct.afs_server_list*, %struct.afs_server_list** %4, align 8
  %148 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %147, i32 0, i32 2
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load %struct.afs_server*, %struct.afs_server** %153, align 8
  %155 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  %156 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %155, i32 0, i32 2
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load %struct.afs_server*, %struct.afs_server** %161, align 8
  %163 = icmp ult %struct.afs_server* %154, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %146
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %86

167:                                              ; preds = %146
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %86

170:                                              ; preds = %98
  store i32 1, i32* %3, align 4
  br label %171

171:                                              ; preds = %170, %48
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
