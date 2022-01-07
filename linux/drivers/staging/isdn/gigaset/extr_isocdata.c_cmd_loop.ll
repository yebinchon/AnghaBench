; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_cmd_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_cmd_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf_t = type { %struct.cardstate* }
%struct.cardstate = type { i32, i8*, i32 }

@MAX_RESP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"response too large (%d)\0A\00", align 1
@DEBUG_TRANSCMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"received response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.inbuf_t*)* @cmd_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_loop(i8* %0, i32 %1, %struct.inbuf_t* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inbuf_t*, align 8
  %7 = alloca %struct.cardstate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.inbuf_t* %2, %struct.inbuf_t** %6, align 8
  %10 = load %struct.inbuf_t*, %struct.inbuf_t** %6, align 8
  %11 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %10, i32 0, i32 0
  %12 = load %struct.cardstate*, %struct.cardstate** %11, align 8
  store %struct.cardstate* %12, %struct.cardstate** %7, align 8
  %13 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %14 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %86, %3
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %5, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %87

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %9, align 1
  %24 = load i8, i8* %9, align 1
  %25 = zext i8 %24 to i32
  switch i32 %25, label %71 [
    i32 10, label %26
    i32 13, label %43
  ]

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %31 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 13
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %39 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %41, align 1
  br label %86

42:                                               ; preds = %29, %26
  br label %43

43:                                               ; preds = %20, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @MAX_RESP_SIZE, align 4
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %49 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @dev_warn(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @MAX_RESP_SIZE, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %47, %43
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %57 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @DEBUG_TRANSCMD, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %61 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @gigaset_dbg_buffer(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %59, i8* %62)
  %64 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %65 = call i32 @gigaset_handle_modem_response(%struct.cardstate* %64)
  store i32 0, i32* %8, align 4
  %66 = load i8, i8* %9, align 1
  %67 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %68 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 %66, i8* %70, align 1
  br label %86

71:                                               ; preds = %20
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @MAX_RESP_SIZE, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i8, i8* %9, align 1
  %77 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %78 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 %76, i8* %82, align 1
  br label %83

83:                                               ; preds = %75, %71
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %83, %54, %37
  br label %16

87:                                               ; preds = %16
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %90 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @gigaset_dbg_buffer(i32, i8*, i32, i8*) #1

declare dso_local i32 @gigaset_handle_modem_response(%struct.cardstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
