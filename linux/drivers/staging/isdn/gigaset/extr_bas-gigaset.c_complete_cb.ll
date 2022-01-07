; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_complete_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_complete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i64, i32*, %struct.cmdbuf_t*, i32 }
%struct.cmdbuf_t = type { i64, i64, i32*, %struct.cmdbuf_t* }

@DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"write_command: sent %u bytes, %u left\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*)* @complete_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_cb(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca %struct.cmdbuf_t*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %4 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %5 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %4, i32 0, i32 2
  %6 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %5, align 8
  store %struct.cmdbuf_t* %6, %struct.cmdbuf_t** %3, align 8
  %7 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %11 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = sub nsw i64 %13, %9
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 8
  %16 = load i32, i32* @DEBUG_OUTPUT, align 4
  %17 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %18 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %21 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @gig_dbg(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %22)
  %24 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %25 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %24, i32 0, i32 3
  %26 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %25, align 8
  %27 = icmp ne %struct.cmdbuf_t* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %1
  %29 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %30 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %29, i32 0, i32 3
  %31 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %30, align 8
  %32 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %33 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %32, i32 0, i32 2
  store %struct.cmdbuf_t* %31, %struct.cmdbuf_t** %33, align 8
  %34 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %35 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %34, i32 0, i32 2
  %36 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %35, align 8
  %37 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %39 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %38, i32 0, i32 2
  %40 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %39, align 8
  %41 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %44 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %52

45:                                               ; preds = %1
  %46 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %47 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %46, i32 0, i32 2
  store %struct.cmdbuf_t* null, %struct.cmdbuf_t** %47, align 8
  %48 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %49 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %51 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %45, %28
  %53 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %54 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %59 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @tasklet_schedule(i64 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %64 = call i32 @kfree(%struct.cmdbuf_t* %63)
  ret void
}

declare dso_local i32 @gig_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @tasklet_schedule(i64) #1

declare dso_local i32 @kfree(%struct.cmdbuf_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
