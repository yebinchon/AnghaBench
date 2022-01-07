; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.dlm_message = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dlm_rsb = type { i32, i32, i32, i32 }

@DLM_RESNAME_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"receive_remove from %d bad len %d\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"receive_remove from %d bad nodeid %d\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"receive_remove from %d not found %s\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"receive_remove keep from %d master %d\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"receive_remove from %d master %d first %x %s\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"receive_remove toss from %d master %d\00", align 1
@kill_rsb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"receive_remove from %d rsb ref error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_message*)* @receive_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_remove(%struct.dlm_ls* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_message*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dlm_rsb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %4, align 8
  %15 = load i32, i32* @DLM_RESNAME_MAXLEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %25 = call i32 @receive_extralen(%struct.dlm_message* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @DLM_RESNAME_MAXLEN, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 (%struct.dlm_ls*, i8*, i32, ...) @log_error(%struct.dlm_ls* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  store i32 1, i32* %14, align 4
  br label %213

34:                                               ; preds = %2
  %35 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %36 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %37 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dlm_hash2nodeid(%struct.dlm_ls* %35, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 (...) @dlm_our_nodeid()
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 (%struct.dlm_ls*, i8*, i32, ...) @log_error(%struct.dlm_ls* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  store i32 1, i32* %14, align 4
  br label %213

48:                                               ; preds = %34
  %49 = trunc i64 %17 to i32
  %50 = call i32 @memset(i8* %19, i32 0, i32 %49)
  %51 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %52 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @memcpy(i8* %19, i32 %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @jhash(i8* %19, i32 %56, i32 0)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %60 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = and i32 %58, %62
  store i32 %63, i32* %9, align 4
  %64 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %65 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %73 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @dlm_search_rsb_tree(i32* %78, i8* %19, i32 %79, %struct.dlm_rsb** %7)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %148

83:                                               ; preds = %48
  %84 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %85 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @dlm_search_rsb_tree(i32* %90, i8* %19, i32 %91, %struct.dlm_rsb** %7)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %83
  %96 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 (%struct.dlm_ls*, i8*, i32, ...) @log_error(%struct.dlm_ls* %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %97, i8* %19)
  %99 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %100 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock(i32* %105)
  store i32 1, i32* %14, align 4
  br label %213

107:                                              ; preds = %83
  %108 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %109 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %107
  %114 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %117 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (%struct.dlm_ls*, i8*, i32, ...) @log_error(%struct.dlm_ls* %114, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %115, i32 %118)
  %120 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %121 = call i32 @dlm_print_rsb(%struct.dlm_rsb* %120)
  %122 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %123 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock(i32* %128)
  store i32 1, i32* %14, align 4
  br label %213

130:                                              ; preds = %107
  %131 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %132 = load i32, i32* %13, align 4
  %133 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %134 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %137 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @log_debug(%struct.dlm_ls* %131, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %132, i32 %135, i32 %138, i8* %19)
  %140 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %141 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = call i32 @spin_unlock(i32* %146)
  store i32 1, i32* %14, align 4
  br label %213

148:                                              ; preds = %48
  %149 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %150 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %171

154:                                              ; preds = %148
  %155 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %158 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (%struct.dlm_ls*, i8*, i32, ...) @log_error(%struct.dlm_ls* %155, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %156, i32 %159)
  %161 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %162 = call i32 @dlm_print_rsb(%struct.dlm_rsb* %161)
  %163 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %164 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %163, i32 0, i32 1
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = call i32 @spin_unlock(i32* %169)
  store i32 1, i32* %14, align 4
  br label %213

171:                                              ; preds = %148
  %172 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %173 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %172, i32 0, i32 2
  %174 = load i32, i32* @kill_rsb, align 4
  %175 = call i64 @kref_put(i32* %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %198

177:                                              ; preds = %171
  %178 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %179 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %178, i32 0, i32 1
  %180 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %181 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %180, i32 0, i32 1
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = call i32 @rb_erase(i32* %179, i32* %186)
  %188 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %189 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %188, i32 0, i32 1
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = call i32 @spin_unlock(i32* %194)
  %196 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %197 = call i32 @dlm_free_rsb(%struct.dlm_rsb* %196)
  br label %212

198:                                              ; preds = %171
  %199 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %200 = load i32, i32* %13, align 4
  %201 = call i32 (%struct.dlm_ls*, i8*, i32, ...) @log_error(%struct.dlm_ls* %199, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %200)
  %202 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %203 = call i32 @dlm_print_rsb(%struct.dlm_rsb* %202)
  %204 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %205 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %204, i32 0, i32 1
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = call i32 @spin_unlock(i32* %210)
  br label %212

212:                                              ; preds = %198, %177
  store i32 0, i32* %14, align 4
  br label %213

213:                                              ; preds = %212, %154, %130, %113, %95, %43, %29
  %214 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i32, i32* %14, align 4
  switch i32 %215, label %217 [
    i32 0, label %216
    i32 1, label %216
  ]

216:                                              ; preds = %213, %213
  ret void

217:                                              ; preds = %213
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @receive_extralen(%struct.dlm_message*) #2

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i32, ...) #2

declare dso_local i32 @dlm_hash2nodeid(%struct.dlm_ls*, i32) #2

declare dso_local i32 @dlm_our_nodeid(...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @jhash(i8*, i32, i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @dlm_search_rsb_tree(i32*, i8*, i32, %struct.dlm_rsb**) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @dlm_print_rsb(%struct.dlm_rsb*) #2

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i32, i32, i8*) #2

declare dso_local i64 @kref_put(i32*, i32) #2

declare dso_local i32 @rb_erase(i32*, i32*) #2

declare dso_local i32 @dlm_free_rsb(%struct.dlm_rsb*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
