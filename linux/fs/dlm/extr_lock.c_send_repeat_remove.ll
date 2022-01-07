; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_send_repeat_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_send_repeat_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i32, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dlm_message = type { i8*, i32 }
%struct.dlm_mhandle = type { i32 }
%struct.dlm_rsb = type { i32 }

@DLM_RESNAME_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"send_repeat_remove dir %d %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"repeat_remove on keep %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"repeat_remove on toss %s\00", align 1
@DLM_MSG_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, i8*, i32)* @send_repeat_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_repeat_remove(%struct.dlm_ls* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dlm_message*, align 8
  %10 = alloca %struct.dlm_mhandle*, align 8
  %11 = alloca %struct.dlm_rsb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* @DLM_RESNAME_MAXLEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = trunc i64 %19 to i32
  %23 = call i32 @memset(i8* %21, i32 0, i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @memcpy(i8* %21, i8* %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @jhash(i8* %21, i32 %27, i32 0)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %31 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %29, %33
  store i32 %34, i32* %13, align 4
  %35 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @dlm_hash2nodeid(%struct.dlm_ls* %35, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i32 (%struct.dlm_ls*, i8*, ...) @log_error(%struct.dlm_ls* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %39, i8* %21)
  %41 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %42 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %50 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dlm_search_rsb_tree(i32* %55, i8* %21, i32 %56, %struct.dlm_rsb** %11)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %3
  %61 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %62 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %70 = call i32 (%struct.dlm_ls*, i8*, ...) @log_error(%struct.dlm_ls* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  store i32 1, i32* %16, align 4
  br label %153

71:                                               ; preds = %3
  %72 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %73 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @dlm_search_rsb_tree(i32* %78, i8* %21, i32 %79, %struct.dlm_rsb** %11)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %71
  %84 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %85 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %84, i32 0, i32 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %93 = call i32 (%struct.dlm_ls*, i8*, ...) @log_error(%struct.dlm_ls* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  store i32 1, i32* %16, align 4
  br label %153

94:                                               ; preds = %71
  %95 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %96 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %95, i32 0, i32 3
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %100 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %102 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @DLM_RESNAME_MAXLEN, align 4
  %105 = call i32 @memcpy(i8* %103, i8* %21, i32 %104)
  %106 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %107 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %106, i32 0, i32 3
  %108 = call i32 @spin_unlock(i32* %107)
  %109 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %110 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %109, i32 0, i32 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = call i32 @spin_unlock(i32* %115)
  %117 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = add i64 16, %119
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @DLM_MSG_REMOVE, align 4
  %124 = call i32 @_create_message(%struct.dlm_ls* %117, i32 %121, i32 %122, i32 %123, %struct.dlm_message** %9, %struct.dlm_mhandle** %10)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %94
  store i32 1, i32* %16, align 4
  br label %153

128:                                              ; preds = %94
  %129 = load %struct.dlm_message*, %struct.dlm_message** %9, align 8
  %130 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @memcpy(i8* %131, i8* %21, i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.dlm_message*, %struct.dlm_message** %9, align 8
  %136 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %10, align 8
  %138 = load %struct.dlm_message*, %struct.dlm_message** %9, align 8
  %139 = call i32 @send_message(%struct.dlm_mhandle* %137, %struct.dlm_message* %138)
  %140 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %141 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %140, i32 0, i32 3
  %142 = call i32 @spin_lock(i32* %141)
  %143 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %144 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %143, i32 0, i32 1
  store i32 0, i32* %144, align 4
  %145 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %146 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* @DLM_RESNAME_MAXLEN, align 4
  %149 = call i32 @memset(i8* %147, i32 0, i32 %148)
  %150 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %151 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %150, i32 0, i32 3
  %152 = call i32 @spin_unlock(i32* %151)
  store i32 0, i32* %16, align 4
  br label %153

153:                                              ; preds = %128, %127, %83, %60
  %154 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %16, align 4
  switch i32 %155, label %157 [
    i32 0, label %156
    i32 1, label %156
  ]

156:                                              ; preds = %153, %153
  ret void

157:                                              ; preds = %153
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @jhash(i8*, i32, i32) #2

declare dso_local i32 @dlm_hash2nodeid(%struct.dlm_ls*, i32) #2

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, ...) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @dlm_search_rsb_tree(i32*, i8*, i32, %struct.dlm_rsb**) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @_create_message(%struct.dlm_ls*, i32, i32, i32, %struct.dlm_message**, %struct.dlm_mhandle**) #2

declare dso_local i32 @send_message(%struct.dlm_mhandle*, %struct.dlm_message*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
