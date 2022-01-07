; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_gigaset_m10x_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_gigaset_m10x_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf_t = type { i64, i64, i32, %struct.cardstate* }
%struct.cardstate = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DEBUG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"buffer state: %u -> %u\00", align 1
@RBUFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"processing %u bytes\00", align 1
@MS_LOCKED = common dso_local global i64 0, align 8
@INS_command = common dso_local global i32 0, align 4
@L2_HDLC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"head set to %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_m10x_input(%struct.inbuf_t* %0) #0 {
  %2 = alloca %struct.inbuf_t*, align 8
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.inbuf_t* %0, %struct.inbuf_t** %2, align 8
  %6 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %7 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %6, i32 0, i32 3
  %8 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  store %struct.cardstate* %8, %struct.cardstate** %3, align 8
  %9 = load i32, i32* @DEBUG_INTR, align 4
  %10 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %11 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %15 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16)
  br label %18

18:                                               ; preds = %107, %1
  %19 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %20 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %23 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %114

26:                                               ; preds = %18
  %27 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %28 = call i32 @handle_dle(%struct.inbuf_t* %27)
  %29 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %30 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %33 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @RBUFSIZE, align 4
  %38 = zext i32 %37 to i64
  br label %43

39:                                               ; preds = %26
  %40 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %41 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i64 [ %38, %36 ], [ %42, %39 ]
  %45 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %46 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @DEBUG_INTR, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %54 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MS_LOCKED, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %43
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %61 = call i32 @lock_loop(i32 %59, %struct.inbuf_t* %60)
  store i32 %61, i32* %5, align 4
  br label %91

62:                                               ; preds = %43
  %63 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %64 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @INS_command, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %72 = call i32 @cmd_loop(i32 %70, %struct.inbuf_t* %71)
  store i32 %72, i32* %5, align 4
  br label %90

73:                                               ; preds = %62
  %74 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %75 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @L2_HDLC, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %84 = call i32 @hdlc_loop(i32 %82, %struct.inbuf_t* %83)
  store i32 %84, i32* %5, align 4
  br label %89

85:                                               ; preds = %73
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %88 = call i32 @iraw_loop(i32 %86, %struct.inbuf_t* %87)
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %81
  br label %90

90:                                               ; preds = %89, %69
  br label %91

91:                                               ; preds = %90, %58
  %92 = load i32, i32* %5, align 4
  %93 = zext i32 %92 to i64
  %94 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %95 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %99 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @RBUFSIZE, align 4
  %102 = zext i32 %101 to i64
  %103 = icmp sge i64 %100, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %91
  %105 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %106 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %91
  %108 = load i32, i32* @DEBUG_INTR, align 4
  %109 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %110 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %18

114:                                              ; preds = %18
  ret void
}

declare dso_local i32 @gig_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @handle_dle(%struct.inbuf_t*) #1

declare dso_local i32 @lock_loop(i32, %struct.inbuf_t*) #1

declare dso_local i32 @cmd_loop(i32, %struct.inbuf_t*) #1

declare dso_local i32 @hdlc_loop(i32, %struct.inbuf_t*) #1

declare dso_local i32 @iraw_loop(i32, %struct.inbuf_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
