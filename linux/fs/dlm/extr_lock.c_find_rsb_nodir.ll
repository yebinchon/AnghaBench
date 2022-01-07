; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_find_rsb_nodir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_find_rsb_nodir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dlm_rsb = type { i32, i32, i64, i64, i32, i32, i32 }

@R_RECEIVE_RECOVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"find_rsb toss from_nodeid %d master %d dir %d\00", align 1
@ENOTBLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"find_rsb toss our %d master %d dir %d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, i8*, i32, i64, i64, i32, i32, i32, %struct.dlm_rsb**)* @find_rsb_nodir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_rsb_nodir(%struct.dlm_ls* %0, i8* %1, i32 %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7, %struct.dlm_rsb** %8) #0 {
  %10 = alloca %struct.dlm_ls*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dlm_rsb**, align 8
  %19 = alloca %struct.dlm_rsb*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.dlm_rsb** %8, %struct.dlm_rsb*** %18, align 8
  store %struct.dlm_rsb* null, %struct.dlm_rsb** %19, align 8
  %23 = call i32 (...) @dlm_our_nodeid()
  store i32 %23, i32* %20, align 4
  %24 = load i32, i32* %17, align 4
  %25 = load i32, i32* @R_RECEIVE_RECOVER, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %21, align 4
  br label %27

27:                                               ; preds = %149, %9
  %28 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %29 = call i32 @pre_rsb_struct(%struct.dlm_ls* %28)
  store i32 %29, i32* %22, align 4
  %30 = load i32, i32* %22, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %203

33:                                               ; preds = %27
  %34 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %35 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %42 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @dlm_search_rsb_tree(i32* %46, i8* %47, i32 %48, %struct.dlm_rsb** %19)
  store i32 %49, i32* %22, align 4
  %50 = load i32, i32* %22, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  br label %57

53:                                               ; preds = %33
  %54 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %55 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %54, i32 0, i32 5
  %56 = call i32 @kref_get(i32* %55)
  br label %195

57:                                               ; preds = %52
  %58 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %59 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @dlm_search_rsb_tree(i32* %63, i8* %64, i32 %65, %struct.dlm_rsb** %19)
  store i32 %66, i32* %22, align 4
  %67 = load i32, i32* %22, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %140

70:                                               ; preds = %57
  %71 = load i32, i32* %21, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %94, label %73

73:                                               ; preds = %70
  %74 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %75 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %20, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %86 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @log_error(%struct.dlm_ls* %83, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %87, i32 %88)
  %90 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %91 = call i32 @dlm_print_rsb(%struct.dlm_rsb* %90)
  %92 = load i32, i32* @ENOTBLK, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %22, align 4
  br label %195

94:                                               ; preds = %79, %73, %70
  %95 = load i32, i32* %21, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %122, label %97

97:                                               ; preds = %94
  %98 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %99 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %20, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %97
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %20, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %103
  %108 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %109 = load i32, i32* %20, align 4
  %110 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %111 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @log_error(%struct.dlm_ls* %108, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %112, i32 %113)
  %115 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %116 = call i32 @dlm_print_rsb(%struct.dlm_rsb* %115)
  %117 = load i32, i32* %20, align 4
  %118 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %119 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %121 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %120, i32 0, i32 1
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %107, %103, %97, %94
  %123 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %124 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %123, i32 0, i32 6
  %125 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %126 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = call i32 @rb_erase(i32* %124, i32* %130)
  %132 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %133 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %134 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i64, i64* %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = call i32 @rsb_insert(%struct.dlm_rsb* %132, i32* %138)
  store i32 %139, i32* %22, align 4
  br label %195

140:                                              ; preds = %69
  %141 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @get_rsb_struct(%struct.dlm_ls* %141, i8* %142, i32 %143, %struct.dlm_rsb** %19)
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %22, align 4
  %146 = load i32, i32* @EAGAIN, align 4
  %147 = sub nsw i32 0, %146
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %140
  %150 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %151 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i64, i64* %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = call i32 @spin_unlock(i32* %155)
  br label %27

157:                                              ; preds = %140
  %158 = load i32, i32* %22, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %195

161:                                              ; preds = %157
  %162 = load i64, i64* %13, align 8
  %163 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %164 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  %165 = load i64, i64* %14, align 8
  %166 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %167 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %166, i32 0, i32 3
  store i64 %165, i64* %167, align 8
  %168 = load i32, i32* %15, align 4
  %169 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %170 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %15, align 4
  %172 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %173 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %20, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %161
  br label %180

178:                                              ; preds = %161
  %179 = load i32, i32* %15, align 4
  br label %180

180:                                              ; preds = %178, %177
  %181 = phi i32 [ 0, %177 ], [ %179, %178 ]
  %182 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %183 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %185 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %184, i32 0, i32 5
  %186 = call i32 @kref_init(i32* %185)
  %187 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %188 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %189 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %188, i32 0, i32 0
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = load i64, i64* %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 1
  %194 = call i32 @rsb_insert(%struct.dlm_rsb* %187, i32* %193)
  store i32 %194, i32* %22, align 4
  br label %195

195:                                              ; preds = %180, %160, %122, %82, %53
  %196 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %197 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %196, i32 0, i32 0
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = load i64, i64* %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = call i32 @spin_unlock(i32* %201)
  br label %203

203:                                              ; preds = %195, %32
  %204 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %205 = load %struct.dlm_rsb**, %struct.dlm_rsb*** %18, align 8
  store %struct.dlm_rsb* %204, %struct.dlm_rsb** %205, align 8
  %206 = load i32, i32* %22, align 4
  ret i32 %206
}

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @pre_rsb_struct(%struct.dlm_ls*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_search_rsb_tree(i32*, i8*, i32, %struct.dlm_rsb**) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i32, i32, i32) #1

declare dso_local i32 @dlm_print_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @rsb_insert(%struct.dlm_rsb*, i32*) #1

declare dso_local i32 @get_rsb_struct(%struct.dlm_ls*, i8*, i32, %struct.dlm_rsb**) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
